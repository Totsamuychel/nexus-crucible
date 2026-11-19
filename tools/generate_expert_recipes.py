#!/usr/bin/env python3
"""
Generate Expert Recipe Overhaul ZenScript files for Nexus Crucible.
Translates all modular Python recipe definitions into ZenScript files
in instance/scripts/60_expert_overhaul/
"""

import sys
from pathlib import Path

# Add project root to path
PROJECT_ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(PROJECT_ROOT))

from tools.recipe_builder.recipe_master import generate_all_expert_recipes
from tools.recipe_builder.common_recipe import generate_zs_file

OUTPUT_DIR = PROJECT_ROOT / "instance" / "scripts" / "60_expert_overhaul"

MODULE_METADATA = {
    "60_metals_unification": "Unified Metallurgy & Standardized Machine Components",
    "61_tools_armor_overhaul": "Extended Equipment, Mining Tools & Protective Armor",
    "62_thermal_redstone": "Thermal Expansion, Dynamics & Flux Logistics",
    "63_immersive_petroleum": "Immersive Engineering & Heavy Industrial Infrastructure",
    "64_enderio_endergy": "Ender IO, Endergy & Enhanced Conduits",
    "65_industrial_foregoing": "Industrial Foregoing Rubber & Polymer Automation",
    "66_mekanism_generators": "Mekanism High-Tech Circuits, Gas & Generators",
    "67_nuclearcraft_fission": "NuclearCraft Complex Fission, Coolers & Isotopes",
    "68_applied_energistics": "Applied Energistics 2 Digital Storage & Processing",
    "69_botania_astral_magic": "Botania Floral Alchemy & Astral Sorcery Starlight",
    "70_blood_thaum_arcane": "Blood Magic Sacrificial Altars & Thaumcraft Arcana",
    "71_forestry_mystical_agri": "Forestry Apiculture & Mystical Agriculture Seeds",
    "72_environmental_draconic": "Environmental Tech Tiered Arrays & Draconic Evolution",
    "73_storage_dimensions_xnet": "Storage Drawers, Iron Chests & Compact Dimensions",
    "74_culinary_pams_feast": "Pam's HarvestCraft Gourmet Culinary Arts",
    "75_tinkers_construct_armory": "Tinkers' Construct Foundry, Casts & Smeltery",
    "76_extended_crafting_avaritia": "Extended Crafting, Compression & Avaritia Singularities",
}

def main():
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    all_modules = generate_all_expert_recipes()

    total_recipes = 0
    print(f"🚀 Writing expert recipe files to {OUTPUT_DIR}...")

    for key, recipes in all_modules.items():
        filename = f"{key}.zs"
        title = MODULE_METADATA.get(key, key)
        file_path = OUTPUT_DIR / filename
        content = generate_zs_file(title, recipes)
        file_path.write_text(content, encoding="utf-8")
        total_recipes += len(recipes)
        print(f"  [+] {filename}: {len(recipes)} recipes")

    print(f"\n✨ Successfully generated {total_recipes} custom expert recipes across {len(all_modules)} ZenScript files!")

if __name__ == "__main__":
    main()
