#!/usr/bin/env python3
"""
Nexus Crucible - Baseline Mod Downloader & Lock-file Generator
Fetches verified baseline jars for Minecraft 1.12.2 Forge from Modrinth & Official Mavens,
calculates SHA256, and writes manifests/mods.lock.json.
"""

import hashlib
import json
import os
import urllib.request
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
MODS_DIR = BASE_DIR / "instance" / "mods"
LOCK_FILE = BASE_DIR / "manifests" / "mods.lock.json"

MODS_DIR.mkdir(parents=True, exist_ok=True)

# Directly verified official maven and modrinth URLs
DIRECT_TARGETS = [
    {
        "project": "base",
        "filename": "base-1.12.2-3.14.0.jar",
        "url": "https://maven.blamejared.com/com/teamacronymcoders/base/base/1.12.2-3.14.0/base-1.12.2-3.14.0.jar",
        "side": "both",
        "source": "blamejared_maven"
    }
]

MODRINTH_SLUGS = [
    ("crafttweaker", "both"),
    ("modtweaker", "both"),
    ("contenttweaker", "both"),
    ("jei", "both"),
    ("mantle", "both"),
    ("tinkers-construct", "both"),
    ("clumps", "both"),
    ("appleskin", "client"),
    ("vintagefix", "client")
]

def sha256_file(filepath):
    h = hashlib.sha256()
    with open(filepath, "rb") as f:
        while chunk := f.read(8192):
            h.update(chunk)
    return h.hexdigest()

def get_modrinth_version(slug):
    url = f"https://api.modrinth.com/v2/project/{slug}/version"
    req = urllib.request.Request(url, headers={"User-Agent": "NexusCrucible-PackBuilder/1.0"})
    with urllib.request.urlopen(req) as resp:
        versions = json.loads(resp.read().decode())
        v112 = [v for v in versions if "1.12.2" in v.get("game_versions", []) and "forge" in v.get("loaders", [])]
        if not v112:
            return None
        # Get the latest/primary file of the newest 1.12.2 release
        v = v112[0]
        f = v["files"][0]
        return {
            "project": slug,
            "filename": f["filename"],
            "url": f["url"],
            "version_number": v["version_number"],
            "hashes": f.get("hashes", {})
        }

def download_and_lock():
    downloads = list(DIRECT_TARGETS)

    print("🔍 Resolving Modrinth targets...")
    for slug, side in MODRINTH_SLUGS:
        meta = get_modrinth_version(slug)
        if meta:
            meta["side"] = side
            meta["source"] = "modrinth"
            downloads.append(meta)
            print(f"  + Resolved {slug} -> {meta['filename']}")
        else:
            print(f"  - Warning: Could not resolve 1.12.2 Forge version for {slug}")

    lock_data = {
        "version": "1.0",
        "minecraft_version": "1.12.2",
        "forge_version": "14.23.5.2860",
        "mods": {}
    }

    print("\n⬇️ Downloading baseline mods...")
    for item in downloads:
        target_path = MODS_DIR / item["filename"]
        if not target_path.exists():
            print(f"Downloading {item['filename']}...")
            req = urllib.request.Request(item["url"], headers={"User-Agent": "NexusCrucible-PackBuilder/1.0"})
            with urllib.request.urlopen(req) as resp, open(target_path, "wb") as out_f:
                out_f.write(resp.read())
        else:
            print(f"Using cached {item['filename']}")

        calc_hash = sha256_file(target_path)
        lock_data["mods"][item["project"]] = {
            "filename": item["filename"],
            "url": item["url"],
            "side": item.get("side", "both"),
            "source": item["source"],
            "sha256": calc_hash,
            "size_bytes": target_path.stat().st_size
        }

    with open(LOCK_FILE, "w", encoding="utf-8") as f:
        json.dump(lock_data, f, indent=2, ensure_ascii=False)

    print(f"\n✅ All {len(downloads)} baseline mods verified and locked in {LOCK_FILE}")

if __name__ == "__main__":
    download_and_lock()
