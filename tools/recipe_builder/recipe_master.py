#!/usr/bin/env python3
"""
Nexus Crucible - Master Recipe Overhaul Generator
Generates ~2,500+ cross-mod expert recipes across all major tech and magic systems:
  1. Metal & Material Unification (rec_components)
  2. Tools & Armor Systematic Overhaul (rec_equipment)
  3. Thermal Series & Redstone Arsenal (rec_thermal)
  4. Immersive Engineering & Petroleum (rec_immersive)
  5. Ender IO & Endergy (rec_enderio)
  6. Industrial Foregoing (rec_foregoing)
  7. Mekanism & Generators (rec_mekanism)
  8. NuclearCraft Fission & Fusion (rec_nuclearcraft)
  9. Applied Energistics 2, AE2 Stuff & PackagedAuto (rec_ae2)
  10. Botania & Astral Sorcery (rec_botania_astral)
  11. Blood Magic, Thaumcraft & Kami (rec_blood_thaum)
  12. Forestry, Gendustry & Mystical Agriculture (rec_forestry_mystical)
  13. Environmental Tech & Draconic Evolution (rec_endgame_tech)
  14. Storage, Iron Chests, Compact Machines & XNet (rec_storage_utils)
  15. Pam's HarvestCraft & Culinary Arts (rec_pams)
  16. Tinkers' Construct & Construct's Armory (rec_tconstruct)
  17. Extended Crafting & Avaritia (rec_extended_avaritia)
"""

from typing import List, Dict
from .common_recipe import Recipe

from .rec_components import get_component_recipes
from .rec_equipment import get_equipment_recipes
from .rec_thermal import get_thermal_recipes
from .rec_immersive import get_immersive_recipes
from .rec_enderio import get_enderio_recipes
from .rec_foregoing import get_foregoing_recipes
from .rec_mekanism import get_mekanism_recipes
from .rec_nuclearcraft import get_nuclearcraft_recipes
from .rec_ae2 import get_ae2_recipes
from .rec_botania_astral import get_botania_astral_recipes
from .rec_blood_thaum import get_blood_thaum_recipes
from .rec_forestry_mystical import get_forestry_mystical_recipes
from .rec_endgame_tech import get_endgame_tech_recipes
from .rec_storage_utils import get_storage_recipes
from .rec_pams import get_pams_recipes
from .rec_tconstruct import get_tconstruct_recipes
from .rec_extended_avaritia import get_extended_avaritia_recipes

def generate_all_expert_recipes() -> Dict[str, List[Recipe]]:
    files_map: Dict[str, List[Recipe]] = {
        "60_metals_unification": get_component_recipes(),
        "61_tools_armor_overhaul": get_equipment_recipes(),
        "62_thermal_redstone": get_thermal_recipes(),
        "63_immersive_petroleum": get_immersive_recipes(),
        "64_enderio_endergy": get_enderio_recipes(),
        "65_industrial_foregoing": get_foregoing_recipes(),
        "66_mekanism_generators": get_mekanism_recipes(),
        "67_nuclearcraft_fission": get_nuclearcraft_recipes(),
        "68_applied_energistics": get_ae2_recipes(),
        "69_botania_astral_magic": get_botania_astral_recipes(),
        "70_blood_thaum_arcane": get_blood_thaum_recipes(),
        "71_forestry_mystical_agri": get_forestry_mystical_recipes(),
        "72_environmental_draconic": get_endgame_tech_recipes(),
        "73_storage_dimensions_xnet": get_storage_recipes(),
        "74_culinary_pams_feast": get_pams_recipes(),
        "75_tinkers_construct_armory": get_tconstruct_recipes(),
        "76_extended_crafting_avaritia": get_extended_avaritia_recipes()
    }
    return files_map
