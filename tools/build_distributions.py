#!/usr/bin/env python3
"""
Nexus Crucible - Release Distribution Builder
Builds ready-to-upload distribution packages:
1. CurseForge format (manifest.json, modlist.html, overrides/)
2. Full Client format for Ru-Minecraft & Direct Download (mods/, config/, scripts/, etc.)
3. Prism Launcher / MultiMC 1-click import zip
"""

import os
import json
import zipfile
import shutil
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
INSTANCE_DIR = BASE_DIR / "instance"
RELEASE_DIR = BASE_DIR / "release"
MANIFESTS_DIR = BASE_DIR / "manifests"

VERSION = "1.2.0"
MC_VERSION = "1.12.2"
FORGE_VERSION = "14.23.5.2860"
PACK_NAME = "Nexus Crucible"
AUTHOR = "Totsamuychel"

EXCLUDE_PATTERNS = {
    ".git", "__pycache__", ".DS_Store", "Thumbs.db",
    "crafttweaker.log", "BotaniaVars.dat", ".ReAuth.cfg",
    "usercache.json", "usernamecache.json", "vintagefix",
    "logs", "crash-reports", "dumps", "backups", "saves", "screenshots"
}

def should_skip(name: str) -> bool:
    return name in EXCLUDE_PATTERNS or name.endswith(".log")

def get_lockfile_mods():
    lock_file = MANIFESTS_DIR / "mods.lock.json"
    if not lock_file.exists():
        return {}
    with open(lock_file, "r", encoding="utf-8") as f:
        return json.load(f).get("mods", {})

def build_curseforge_manifest(mods_data):
    files = []
    seen = set()
    for mod_key, mod_info in mods_data.items():
        pid = mod_info.get("mod_id")
        fid = mod_info.get("file_id")
        if pid and fid:
            pair = (int(pid), int(fid))
            if pair not in seen:
                seen.add(pair)
                files.append({
                    "projectID": pair[0],
                    "fileID": pair[1],
                    "required": True
                })

    # Sort files by projectID for deterministic output
    files.sort(key=lambda x: x["projectID"])

    manifest = {
        "minecraft": {
            "version": MC_VERSION,
            "modLoaders": [
                {
                    "id": f"forge-{FORGE_VERSION}",
                    "primary": True
                }
            ]
        },
        "manifestType": "minecraftModpack",
        "manifestVersion": 1,
        "name": PACK_NAME,
        "version": VERSION,
        "author": AUTHOR,
        "files": files,
        "overrides": "overrides"
    }
    return manifest

def build_modlist_html(mods_data):
    items = []
    for mod_key, info in sorted(mods_data.items(), key=lambda x: x[1].get("name", x[0])):
        name = info.get("name", mod_key)
        pid = info.get("mod_id")
        if pid:
            url = f"https://www.curseforge.com/projects/{pid}"
            items.append(f'<li><a href="{url}">{name}</a></li>')
        else:
            items.append(f'<li>{name}</li>')

    return f"""<!DOCTYPE html>
<html>
<head><meta charset="utf-8"><title>{PACK_NAME} Modlist</title></head>
<body>
<h1>{PACK_NAME} v{VERSION} Modlist</h1>
<p>Total Mods: {len(items)}</p>
<ul>
{"\n".join(items)}
</ul>
</body>
</html>
"""

def add_folder_to_zip(zf: zipfile.ZipFile, folder_path: Path, prefix: str):
    if not folder_path.exists():
        return
    for root, dirs, files in os.walk(folder_path):
        dirs[:] = [d for d in dirs if not should_skip(d)]
        for file in files:
            if should_skip(file):
                continue
            full_path = Path(root) / file
            rel_path = full_path.relative_to(folder_path)
            arcname = f"{prefix}/{rel_path}" if prefix else str(rel_path)
            zf.write(full_path, arcname=arcname)

def build_curseforge_package(mods_data):
    zip_path = RELEASE_DIR / f"Nexus-Crucible-{VERSION}-CurseForge.zip"
    print(f"\n📦 Building CurseForge package: {zip_path.name}...")

    manifest = build_curseforge_manifest(mods_data)
    modlist_html = build_modlist_html(mods_data)

    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED, compresslevel=6) as zf:
        # 1. Root files
        zf.writestr("manifest.json", json.dumps(manifest, indent=2))
        zf.writestr("modlist.html", modlist_html)

        # 2. Overrides
        overrides = [
            ("config", INSTANCE_DIR / "config"),
            ("scripts", INSTANCE_DIR / "scripts"),
            ("resources", INSTANCE_DIR / "resources"),
            ("patchouli_books", INSTANCE_DIR / "patchouli_books"),
            ("structures", INSTANCE_DIR / "structures"),
        ]
        for name, folder in overrides:
            if folder.exists():
                add_folder_to_zip(zf, folder, f"overrides/{name}")

        # Individual files in overrides
        for single_file in ["patchouli_data.json", "icon.png"]:
            p = INSTANCE_DIR / single_file
            if p.exists():
                zf.write(p, arcname=f"overrides/{single_file}")

    print(f"  ✅ Created {zip_path.name} ({zip_path.stat().st_size / (1024*1024):.2f} MB, {len(manifest['files'])} registered mods)")
    return zip_path

def build_full_client_package():
    zip_path = RELEASE_DIR / f"Nexus-Crucible-{VERSION}-Full-Client-RuMinecraft.zip"
    print(f"\n📦 Building Full Client package (for Ru-Minecraft / Direct): {zip_path.name}...")

    install_instructions = f"""======================================================================
  Nexus Crucible v{VERSION} — Экспертная сборка Minecraft 1.12.2
======================================================================

ТРЕБОВАНИЯ:
- Minecraft 1.12.2 с установленным Forge 14.23.5.2860
- Java 8 (x64)
- Выделенная оперативная память: минимум 6 ГБ, рекомендуется 8 ГБ.

БЫСТРАЯ УСТАНОВКА ДЛЯ TLAUNCHER / LEGACY LAUNCHER / ОФИЦИАЛЬНОГО ЛАУНЧЕРА:
1. Откройте папку вашей игры .minecraft:
   - В Windows: нажмите Win + R, введите %appdata%\\.minecraft и нажмите Enter.
   - В TLauncher: нажмите на значок «папки» в правом нижнем углу.
2. Сделайте резервную копию вашей старой папки mods и config (если были другие сборки).
3. Скопируйте папки mods, config, scripts, resources, structures, patchouli_books
   из этой папки прямо в вашу папку .minecraft с заменой файлов.
4. В лаунчере выберите версию «Forge 1.12.2» (или «Forge 14.23.5.2860»).
5. В настройках лаунчера выделите от 6144 МБ (6 ГБ) до 8192 МБ (8 ГБ) оперативной памяти.
6. Запустите игру и наслаждайтесь приключением!

ОСОБЕННОСТИ СБОРКИ:
- 1,514 авторских квестов на русском языке в 34 главах (Divine Journey 2 стиль).
- 2,513+ взаимосвязанных экспертных крафтов через CraftTweaker 2.
- 11 ступеней прогрессии от примитивного камня до ядра конвергенции.
- 4 уровня сбалансированных лутбоксов (BetterQuesting Standard Expansion).
======================================================================
"""

    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED, compresslevel=4) as zf:
        zf.writestr("ИНСТРУКЦИЯ_ПО_УСТАНОВКЕ.txt", install_instructions)
        zf.writestr("README_RU.txt", install_instructions)

        folders = [
            ("mods", INSTANCE_DIR / "mods"),
            ("config", INSTANCE_DIR / "config"),
            ("scripts", INSTANCE_DIR / "scripts"),
            ("resources", INSTANCE_DIR / "resources"),
            ("patchouli_books", INSTANCE_DIR / "patchouli_books"),
            ("structures", INSTANCE_DIR / "structures"),
        ]
        for name, folder in folders:
            if folder.exists():
                print(f"  -> Archiving {name}/...")
                add_folder_to_zip(zf, folder, f".minecraft/{name}")

        for single_file in ["patchouli_data.json", "icon.png", "options.txt"]:
            p = INSTANCE_DIR / single_file
            if p.exists():
                zf.write(p, arcname=f".minecraft/{single_file}")

    print(f"  ✅ Created {zip_path.name} ({zip_path.stat().st_size / (1024*1024):.2f} MB)")
    return zip_path

def build_prism_launcher_package():
    zip_path = RELEASE_DIR / f"Nexus-Crucible-{VERSION}-PrismLauncher.zip"
    print(f"\n📦 Building Prism Launcher / MultiMC 1-click import package: {zip_path.name}...")

    mmc_pack = {
        "components": [
            {
                "cachedName": "Minecraft",
                "important": True,
                "uid": "net.minecraft",
                "version": MC_VERSION
            },
            {
                "cachedName": "Forge",
                "important": True,
                "uid": "net.minecraftforge",
                "version": FORGE_VERSION
            }
        ],
        "formatVersion": 1
    }

    instance_cfg = f"""InstanceType=OneSix
LogPrePostOutput=true
OverrideCommands=false
OverrideConsole=false
OverrideGameTime=false
OverrideGMCmdArgs=false
OverrideJavaArgs=true
OverrideJavaLocation=false
OverrideMemory=true
OverrideNativeWorkarounds=false
OverridePerformance=false
OverrideWindow=false
AutoCloseConsole=true
AutoOpenConsole=false
CloseConsoleOnExit=false
CustomCommands=false
CustomNamedIcons=false
CustomResolution=false
CustomSkin=false
EnableConsole=true
EnableFeralGamemode=false
EnableGMCmdArgs=false
EnableMangoHud=false
GMCmdArgs=
IgnoreJavaCompatibility=false
JvmArgs=-XX:+UseG1GC -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M
MaxMemAlloc=8192
MinMemAlloc=6144
PostExitCommand=
PreLaunchCommand=
QuitAfterLaunch=false
ShowConsoleOnError=true
ShowGameTime=true
SystemIcon=default
UseNativeGLFW=false
UseNativeOpenAL=false
WrapperCommand=
iconKey=crucible
name={PACK_NAME} v{VERSION}
notes=Expert Modpack with 1514 Quests and 2500+ Cross-mod Recipes.
"""

    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED, compresslevel=4) as zf:
        zf.writestr("mmc-pack.json", json.dumps(mmc_pack, indent=2))
        zf.writestr("instance.cfg", instance_cfg)

        folders = [
            ("mods", INSTANCE_DIR / "mods"),
            ("config", INSTANCE_DIR / "config"),
            ("scripts", INSTANCE_DIR / "scripts"),
            ("resources", INSTANCE_DIR / "resources"),
            ("patchouli_books", INSTANCE_DIR / "patchouli_books"),
            ("structures", INSTANCE_DIR / "structures"),
        ]
        for name, folder in folders:
            if folder.exists():
                print(f"  -> Archiving .minecraft/{name}/...")
                add_folder_to_zip(zf, folder, f".minecraft/{name}")

        for single_file in ["patchouli_data.json", "icon.png", "options.txt"]:
            p = INSTANCE_DIR / single_file
            if p.exists():
                zf.write(p, arcname=f".minecraft/{single_file}")

    print(f"  ✅ Created {zip_path.name} ({zip_path.stat().st_size / (1024*1024):.2f} MB)")
    return zip_path

def main():
    RELEASE_DIR.mkdir(parents=True, exist_ok=True)
    mods_data = get_lockfile_mods()

    print(f"🚀 Building Nexus Crucible v{VERSION} Distribution Packages...")
    print(f"   Loaded {len(mods_data)} mods from lockfile.")

    cf_zip = build_curseforge_package(mods_data)
    full_zip = build_full_client_package()
    prism_zip = build_prism_launcher_package()

    print("\n" + "="*60)
    print("🎉 ALL PACKAGES CREATED SUCCESSFULLY!")
    print(f"1. CurseForge Release:      {cf_zip} ({cf_zip.stat().st_size / (1024*1024):.2f} MB)")
    print(f"2. Ru-Minecraft Full Client: {full_zip} ({full_zip.stat().st_size / (1024*1024):.2f} MB)")
    print(f"3. Prism Launcher 1-Click:  {prism_zip} ({prism_zip.stat().st_size / (1024*1024):.2f} MB)")
    print("="*60)

if __name__ == "__main__":
    main()
