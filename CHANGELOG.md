# Changelog — Nexus Crucible (Minecraft 1.12.2 Expert Modpack)

All notable changes to this project will be documented in this file.

## [1.0.0-rc1] - 2026-11-10

### Added
- **Core Progression Architecture:**
  - 11 strict progression stages (`s00_primitive` through `s10_convergence`).
  - 11 registered custom gate items via ContentTweaker 2.
  - Integration with GameStages and ItemStages.
- **Recipe Ecosystem:**
  - Complete modular ZenScript scripts in `instance/scripts/` (00 to 90).
  - Centralized ore dictionary materials unification in `10_materials/unification.zs`.
  - Removal of vanilla wooden/stone/iron tool bypasses in `20_removals/bypass_removals.zs`.
  - 9×9 Extreme Crafting specifications for `Nexus Singularity` and `Convergence Core`.
- **World Generation & Configurations:**
  - Centralized Ore Generation via CoFH World (`instance/config/cofh/world/01_nexus_ores.json`).
  - Disabled duplicate ore gen in Tinkers' Construct (`instance/config/tconstruct.cfg`).
  - Engine & RAM optimizations (`instance/config/vintagefix.cfg`, `instance/config/clumps.cfg`).
- **Quest System:**
  - Fully translated Russian quest line with 11 quests in `instance/config/betterquesting/DefaultQuests.json`.
- **Quality Assurance & Verification Tools:**
  - `tools/validate_progression.py`: checks graph acyclicity and 9×9 geometry.
  - `tools/validate_scripts.py`: checks syntax, bracket parity and recipe names.
  - `tools/audit_balance.py`: verifies 420h playtime target and complexity monotonicity.
  - `tools/package_release.py`: packages release archives.
- **Launcher Integration:**
  - Standalone profile for Prism Launcher (`~/.local/share/PrismLauncher/instances/Nexus-Crucible/`).
  - Automated JVM flags (G1GC) and Java 8 isolation.
