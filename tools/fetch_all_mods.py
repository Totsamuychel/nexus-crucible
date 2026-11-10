#!/usr/bin/env python3
"""
Nexus Crucible - Complete Modpack Downloader & Dependency Resolver
Fetches all mods specified in nexus-crucible-plan.md from CurseForge and Modrinth,
resolves required dependencies, validates JARs, and updates manifests/mods.lock.json.
"""

import hashlib
import json
import os
import re
import sys
import time
import urllib.request
import urllib.parse
import zipfile
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
MODS_DIR = BASE_DIR / "instance" / "mods"
LOCK_FILE = BASE_DIR / "manifests" / "mods.lock.json"
PLAN_FILE = Path("/home/Danya/Downloads/nexus-crucible-plan.md")

CF_KEY = "$2a$10$wuAJuNZuted3NORVmpgUC.m8sI.pv1tOPKZyBgLFGjxFp/br0lZCC"
HEADERS = {
    "x-api-key": CF_KEY,
    "User-Agent": "PrismLauncher/11.0.3"
}

MODS_DIR.mkdir(parents=True, exist_ok=True)

def cf_api(endpoint):
    url = f"https://api.curseforge.com/v1{endpoint}"
    req = urllib.request.Request(url, headers=HEADERS)
    for attempt in range(3):
        try:
            with urllib.request.urlopen(req, timeout=15) as resp:
                return json.loads(resp.read().decode())
        except urllib.error.HTTPError as e:
            if e.code == 404:
                return None
            time.sleep(1)
        except Exception:
            time.sleep(1)
    return None

def sha256_file(filepath):
    h = hashlib.sha256()
    with open(filepath, "rb") as f:
        while chunk := f.read(65536):
            h.update(chunk)
    return h.hexdigest()

def is_valid_jar(filepath):
    try:
        with zipfile.ZipFile(filepath, "r") as zf:
            # Check if it has META-INF or class files or mcmod.info
            namelist = zf.namelist()
            return any("META-INF" in n or "mcmod.info" in n or n.endswith(".class") for n in namelist)
    except Exception:
        return False

def get_cf_file_url(file_obj):
    url = file_obj.get("downloadUrl")
    if url:
        return url
    file_id = file_obj["id"]
    file_name = urllib.parse.quote(file_obj["fileName"])
    part1 = str(file_id)[:4]
    part2 = str(file_id)[4:]
    return f"https://edge.forgecdn.net/files/{part1}/{part2}/{file_name}"

def download_file(url, target_path):
    req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"})
    for attempt in range(3):
        try:
            with urllib.request.urlopen(req, timeout=30) as resp, open(target_path, "wb") as out:
                while chunk := resp.read(65536):
                    out.write(chunk)
            if is_valid_jar(target_path):
                return True
            else:
                print(f"    [WARN] Invalid JAR downloaded from {url}, deleting...")
                target_path.unlink(missing_ok=True)
        except Exception as e:
            print(f"    [ERR] Download attempt {attempt+1} failed for {url}: {e}")
            target_path.unlink(missing_ok=True)
            time.sleep(1.5)
    return False

def select_best_1122_file(files):
    # filter for 1.12.2
    candidates = []
    for f in files:
        gv = f.get("gameVersions", [])
        if "1.12.2" in gv:
            candidates.append(f)
    if not candidates:
        return None
    # Sort by releaseType (1=Release, 2=Beta, 3=Alpha) then fileId descending
    candidates.sort(key=lambda x: (x.get("releaseType", 3), -x.get("id", 0)))
    return candidates[0]

def extract_slugs_from_plan():
    if not PLAN_FILE.exists():
        print(f"Plan file not found: {PLAN_FILE}")
        return []
    with open(PLAN_FILE, "r", encoding="utf-8") as f:
        text = f.read()
    # Extract links like https://www.curseforge.com/minecraft/mc-mods/<slug>
    slugs = list(dict.fromkeys(re.findall(r"https://www\.curseforge\.com/minecraft/mc-mods/([a-zA-Z0-9_\-]+)", text)))
    return slugs

def main():
    slugs = extract_slugs_from_plan()
    print(f"Total mod candidates extracted from plan: {len(slugs)}")

    # Known aliases or replacements if any slug differs
    aliases = {
        "thaumcraft": "thaumcraft",
        "tinkers-construct": "tinkers-construct",
        "industrial-craft": "industrial-craft",
        "draconic-evolution": "draconic-evolution",
        "avaritia-1-10": "avaritia-1-10",
        "avaritia": "avaritia-1-10",
        "applied-energistics-2": "applied-energistics-2",
        "environmental-tech": "environmental-tech",
        "valkyrielib": "valkyrielib",
        "codechicken-lib-1-8": "codechicken-lib-1-8",
        "brandonscore": "brandonscore",
        "redstone-flux": "redstone-flux",
        "cofh-core": "cofh-core",
        "thermal-foundation": "thermal-foundation",
        "thermal-expansion": "thermal-expansion",
        "thermal-dynamics": "thermal-dynamics",
    }

    # Track installed files
    installed_files = {f.name: f for f in MODS_DIR.glob("*.jar")}
    print(f"Currently in instance/mods: {len(installed_files)} JAR files")

    # Queue of mods to resolve: (mod_id_or_slug, is_slug)
    queue = [(s, True) for s in slugs]
    visited_mods = set()
    required_dep_mod_ids = set()

    # Data for mods.lock.json
    lock_data = {
        "version": "1.0",
        "minecraft_version": "1.12.2",
        "forge_version": "14.23.5.2860",
        "mods": {}
    }

    resolved_count = 0
    downloaded_count = 0
    skipped_count = 0
    failed_slugs = []

    print("\nStarting batch resolution and download...\n")

    while queue:
        item, is_slug = queue.pop(0)

        mod_info = None
        if is_slug:
            slug = aliases.get(item, item)
            if slug in visited_mods:
                continue
            visited_mods.add(slug)

            # Search by slug
            res = cf_api(f"/mods/search?gameId=432&slug={slug}")
            if res and res.get("data"):
                mod_info = res["data"][0]
            else:
                # Try searchFilter
                res = cf_api(f"/mods/search?gameId=432&searchFilter={slug}&pageSize=5")
                if res and res.get("data"):
                    # Find exact slug match
                    for m in res["data"]:
                        if m.get("slug") == slug:
                            mod_info = m
                            break
                    if not mod_info:
                        mod_info = res["data"][0]
        else:
            mod_id = item
            if mod_id in visited_mods:
                continue
            visited_mods.add(mod_id)
            res = cf_api(f"/mods/{mod_id}")
            if res and res.get("data"):
                mod_info = res["data"]

        if not mod_info:
            print(f"[FAIL] Could not find mod on CurseForge: {item}")
            failed_slugs.append(item)
            continue

        mod_id = mod_info["id"]
        mod_name = mod_info.get("name", str(mod_id))
        mod_slug = mod_info.get("slug", str(mod_id))

        # Get 1.12.2 files
        fres = cf_api(f"/mods/{mod_id}/files?gameVersion=1.12.2")
        files = fres.get("data", []) if fres else []
        best_file = select_best_1122_file(files)

        if not best_file:
            # Check without gameVersion parameter in case 1.12.2 tags differ
            fres_all = cf_api(f"/mods/{mod_id}/files?pageSize=50")
            all_files = fres_all.get("data", []) if fres_all else []
            best_file = select_best_1122_file(all_files)

        if not best_file:
            print(f"[-] No 1.12.2 release for {mod_name} ({mod_slug})")
            continue

        filename = best_file["fileName"]
        file_id = best_file["id"]
        download_url = get_cf_file_url(best_file)

        # Check required dependencies
        deps = best_file.get("dependencies", [])
        for d in deps:
            if d.get("relationType") == 3: # RequiredDependency
                dep_id = d.get("modId")
                if dep_id and dep_id not in visited_mods and dep_id not in required_dep_mod_ids:
                    required_dep_mod_ids.add(dep_id)
                    queue.append((dep_id, False))

        target_file = MODS_DIR / filename
        target_exists = target_file.exists() and is_valid_jar(target_file)

        # Also check if another version is already present
        # e.g. TConstruct-1.12.2-2.13.0.183.jar vs TConstruct-1.12.2-2.13.0.184.jar
        already_has = False
        if not target_exists:
            for ex_name, ex_path in list(installed_files.items()):
                # fuzzy match prefix (e.g. "TConstruct-" or "jei_")
                prefix = filename.split("-")[0].lower()
                if ex_name.lower().startswith(prefix) and is_valid_jar(ex_path):
                    already_has = True
                    target_file = ex_path
                    filename = ex_name
                    break

        if target_exists or already_has:
            skipped_count += 1
            print(f"[EXISTS] {mod_name}: {filename}")
        else:
            print(f"[DOWNLOAD] {mod_name} -> {filename} ...")
            success = download_file(download_url, target_file)
            if success:
                downloaded_count += 1
                installed_files[filename] = target_file
            else:
                print(f"[ERROR] Failed to download {filename}")
                continue

        resolved_count += 1
        lock_data["mods"][mod_slug] = {
            "name": mod_name,
            "mod_id": mod_id,
            "file_id": file_id,
            "filename": filename,
            "sha256": sha256_file(target_file),
            "size": target_file.stat().st_size
        }

        # Be polite to the API
        time.sleep(0.05)

    print("\n" + "="*50)
    print(f"Summary:")
    print(f"Total resolved mods: {resolved_count}")
    print(f"Newly downloaded:    {downloaded_count}")
    print(f"Already present:     {skipped_count}")
    print(f"Total in instance/mods: {len(list(MODS_DIR.glob('*.jar')))}")
    print(f"Failed to find:      {len(failed_slugs)}")
    if failed_slugs:
        print(f"Failed list: {failed_slugs[:15]}")
    print("="*50)

    # Save lock file
    with open(LOCK_FILE, "w", encoding="utf-8") as f:
        json.dump(lock_data, f, indent=2)
    print(f"Updated {LOCK_FILE}")

if __name__ == "__main__":
    main()
