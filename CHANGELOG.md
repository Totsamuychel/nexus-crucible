# Changelog — Nexus Crucible (Minecraft 1.12.2 Expert Modpack)

All notable changes to this project will be documented in this file.

## [1.1.0-divine] - 2026-11-19

### Added
- **Massive Quest System (Divine Journey Style):**
  - Expanded total quests from 43 to **1,514 quests** across **34 thematic chapters**.
  - Comprehensive coverage of every major mod in the pack: Tinkers' Construct, Pam's Harvestcraft, Immersive Engineering & Petroleum, Botania, Astral Sorcery, Thermal Series, Redstone Arsenal, Actually Additions, Blood Magic & Animus, Thaumcraft 6 & Thaumic Tinkerer, Psi, Ender IO & Endergy, Industrial Foregoing, Mekanism (2x-5x), NuclearCraft, Applied Energistics 2, AE2 Stuff, XNet, Integrated Dynamics, Twilight Forest, Ice and Fire Dragons, Forestry, Mystical Agriculture, Industrial Upgrade, Environmental Tech, Draconic Evolution, Extended Crafting (3x3-9x9), Storage Drawers, Compact Machines, and Avaritia.
  - Complete Russian localization with immersive lore and technical automation guidance.
- **Tiered Loot Box System (BetterQuesting Standard Expansion):**
  - Configured `DefaultLoot.json` with 4 balanced loot tiers (Common Survival, Uncommon Tech/Magic, Rare High-Tech/Mystic, Epic Endgame).
  - Rewards ease tedious resource grinds without breaking progression.
  - Generous high-tier endgame rewards (awakened cores, neutronium, singularities, infinity catalysts).
- **Automation & Tooling:**
  - Modular quest generator engine in `tools/quest_builder/` and `tools/generate_divine_quests.py`.

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
