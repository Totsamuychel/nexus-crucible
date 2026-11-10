#!/usr/bin/env python3
"""
Nexus Crucible - Release Packager
Packages the instance configs, scripts, resources, and manifest into a release zip.
"""

import os
import zipfile
from pathlib import Path

def package_release():
    base_dir = Path(__file__).resolve().parent.parent
    release_dir = base_dir / "release"
    release_dir.mkdir(exist_ok=True)

    zip_path = release_dir / "Nexus-Crucible-1.12.2-v1.0.0-rc1.zip"

    include_dirs = [
        ("instance/config", "config"),
        ("instance/scripts", "scripts"),
        ("instance/resources", "resources"),
        ("recipe-specs", "recipe-specs"),
        ("manifests", "manifests")
    ]

    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zf:
        # Add root info files
        for f in ["README.md", "CHANGELOG.md"]:
            p = base_dir / f
            if p.exists():
                zf.write(p, arcname=f)

        # Add directories
        for rel_src, rel_dst in include_dirs:
            src_path = base_dir / rel_src
            if src_path.exists():
                for root, _, files in os.walk(src_path):
                    for file in files:
                        full_path = Path(root) / file
                        arcname = str(Path(rel_dst) / full_path.relative_to(src_path))
                        zf.write(full_path, arcname=arcname)

    print(f"✅ Packaged release successfully: {zip_path} ({zip_path.stat().st_size} bytes)")

if __name__ == "__main__":
    package_release()
