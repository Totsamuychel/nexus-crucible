# Changelog — Nexus Crucible (Minecraft 1.12.2 Expert Modpack)

All notable changes to this project will be documented in this file.

## [1.2.0-expert-recipes] - 2026-11-19

### Added
- **Massive Expert Recipe Overhaul (Divine Journey 2 Scale):**
  - Expanded custom ZenScript recipe modifications from ~200 to **2,513 unique custom expert recipes** (total unique recipe additions across pack: 2,597).
  - Divided into 17 high-cohesion ZenScript modules in `instance/scripts/60_expert_overhaul/`:
    - `60_metals_unification.zs` (781 recipes): Plates, gears, rods, dense plates, wires, nuggets, ingots, blocks, dusts, insulated wires, rotors, rings, bars, chains, foils, small gears, double ingots, crushed ores, bolts, screws, heavy ingots, reinforced plates across 27 metals + 15 machine casings.
    - `61_tools_armor_overhaul.zs` (299 recipes): Helmets, chestplates, leggings, boots, swords, pickaxes, axes, shovels, hoes, shields, sickles, 3x3 hammers, and 3x3 excavators across 23 metal & alloy tiers.
    - `62_thermal_redstone.zs` (163 recipes): Dynamos, machine frames, 4 tier upgrades (Hardened to Resonant), 14 augments, itemducts, fluiducts, fluxducts, servos, filters, retrievers, flux capacitors, reservoirs, satchels, energy cells, fluid tanks, and Redstone Arsenal equipment.
    - `63_immersive_petroleum.zs` (83 recipes): Scaffolding, structural posts, lanterns, connectors, relays, transformers, capacitors, conveyor belts, pipes, multiblock projectors, mining drills, revolvers, 10 ammo types, and treated wood furniture.
    - `64_enderio_endergy.zs` (63 recipes): Capacitors T1–T7, item/fluid/energy/redstone conduits, machine chassis, Dark Steel & Stellar gear, 13 dark steel upgrades, and solar panels.
    - `65_industrial_foregoing.zs` (66 recipes): Dry rubber, plastic sheets, 16 laser drill lenses, 12 range addons, speed/energy addons, 13 machines, 16 conveyor colors, and Black Hole units/tanks.
    - `66_mekanism_generators.zs` (65 recipes): Enriched alloys, control circuits (Basic to Ultimate), tier installers, 10 processing machines, energy cubes, gas tanks, transmitters, upgrades, induction matrix cells/providers, generators, atomic disassembler, and digital miner.
    - `67_nuclearcraft_fission.zs` (53 recipes): Reactor casings, controllers, cells, 15 active/passive coolers, 11 radiation processors, 14 isotope fuels (TBU, LEU, HEU, LEP, HEP, MOX, Americium, Curium, Californium), HAZMAT suits, and RTGs.
    - `68_applied_energistics.zs` (111 recipes): ME controller, drives, chests, crafting terminals, 1k–64k item & fluid storage cells, spatial cells, 16 colored glass/covered/smart/dense cables, acceleration/crafting cards, import/export buses, PackagedAuto, and AE2 Stuff.
    - `69_botania_astral_magic.zs` (94 recipes): 16 elemental and sin runes, mana pools, runic altars, sparks, Terrasteel gear, 16 floating flowers, Astral Sorcery marble architectural blocks, crafting altars, optics, stellar papers, and baubles.
    - `70_blood_thaum_arcane.zs` (50 recipes): Blood Altar tiers, sacrificial daggers, 9 blood runes, 10 sigils, tartaric gems, sentient swords, Thaumcraft arcane workbenches, crucibles, goggles of revealing, infusion matrix, arcane pedestals, caster gauntlets, essentia smelteries/jars, and fortress armor.
    - `71_forestry_mystical_agri.zs` (170 recipes): Infusion crystals, Tier 1–5 crafting seeds, 51 full essence conversion recipes (3x3), 51 small essence conversion recipes (2x2), 51 crop seed recipes, Forestry sturdy/impregnated casings, and Gendustry mutators.
    - `72_environmental_draconic.zs` (55 recipes): Environmental Tech Void Ore & Resource Miners (T1–T6), Solar arrays (T1–T6), modifier blocks, Draconic Evolution cores (Basic to Chaotic), fusion injectors, Wyvern & Draconic toolsets, and DE reactor components.
    - `73_storage_dimensions_xnet.zs` (85 recipes): Storage Drawers (1x1, 1x2, 2x2, half variants) for 6 wood types, drawer trims, compacting drawers, drawer controllers, upgrade templates, Iron Chests (8 types + 9 upgrade tiers), Compact Machines (T1–T6), PSD, and XNet routing.
    - `74_culinary_pams_feast.zs` (102 recipes): Cookware tools (pot, skillet, saucepan, bakeware, cutting board, mixing bowl, juicer, grinder) and 94 multi-step gourmet dishes, hearty feasts, beverages, and desserts.
    - `75_tinkers_construct_armory.zs` (64 recipes): Grout, seared bricks, smeltery controller, seared tanks, drains, faucets, casting tables, basins, tool station, stencil table, part builder, 16 gold casts, 16 clay casts, and 16 sharpening kits.
    - `76_extended_crafting_avaritia.zs` (209 recipes): 11 materials × 8 tiers of compressed blocks (176 compression & decompression recipes), Black Iron, Luminessence, 5 tiers of crafting tables, 24 singularities, Crystal Matrix ingots, and Neutronium.
- **Recipe Generation Tooling:**
  - Automated python recipe builder suite in `tools/recipe_builder/` and generator `tools/generate_expert_recipes.py`.
  - Full syntax verification in `tools/validate_scripts.py` confirming 0 bracket errors and 0 duplicate recipe IDs.

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
