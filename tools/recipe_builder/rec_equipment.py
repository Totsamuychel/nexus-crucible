#!/usr/bin/env python3
"""
Nexus Crucible - Equipment Recipes (Armor & Tools systematic overhaul)
Covers helmets, chestplates, leggings, boots, swords, pickaxes, axes, shovels, hoes, shields, sickles across 23 metal tiers.
Generates ~260 recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_equipment_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    # 23 Material tiers with their armor and tool IDs
    tiers = [
        ("copper", "Медный", "thermalfoundation:material:320", "immersiveengineering:material:20",
         "thermalfoundation:armor.helmet_copper", "thermalfoundation:armor.plate_copper", "thermalfoundation:armor.legs_copper", "thermalfoundation:armor.boots_copper",
         "thermalfoundation:tool.sword_copper", "thermalfoundation:tool.pickaxe_copper", "thermalfoundation:tool.axe_copper", "thermalfoundation:tool.shovel_copper", "thermalfoundation:tool.hoe_copper"),
        ("tin", "Оловянный", "thermalfoundation:material:321", "immersiveengineering:material:21",
         "thermalfoundation:armor.helmet_tin", "thermalfoundation:armor.plate_tin", "thermalfoundation:armor.legs_tin", "thermalfoundation:armor.boots_tin",
         "thermalfoundation:tool.sword_tin", "thermalfoundation:tool.pickaxe_tin", "thermalfoundation:tool.axe_tin", "thermalfoundation:tool.shovel_tin", "thermalfoundation:tool.hoe_tin"),
        ("silver", "Серебряный", "thermalfoundation:material:322", "immersiveengineering:material:22",
         "thermalfoundation:armor.helmet_silver", "thermalfoundation:armor.plate_silver", "thermalfoundation:armor.legs_silver", "thermalfoundation:armor.boots_silver",
         "thermalfoundation:tool.sword_silver", "thermalfoundation:tool.pickaxe_silver", "thermalfoundation:tool.axe_silver", "thermalfoundation:tool.shovel_silver", "thermalfoundation:tool.hoe_silver"),
        ("lead", "Свинцовый", "thermalfoundation:material:323", "immersiveengineering:material:23",
         "thermalfoundation:armor.helmet_lead", "thermalfoundation:armor.plate_lead", "thermalfoundation:armor.legs_lead", "thermalfoundation:armor.boots_lead",
         "thermalfoundation:tool.sword_lead", "thermalfoundation:tool.pickaxe_lead", "thermalfoundation:tool.axe_lead", "thermalfoundation:tool.shovel_lead", "thermalfoundation:tool.hoe_lead"),
        ("aluminum", "Алюминиевый", "thermalfoundation:material:324", "immersiveengineering:material:24",
         "thermalfoundation:armor.helmet_aluminum", "thermalfoundation:armor.plate_aluminum", "thermalfoundation:armor.legs_aluminum", "thermalfoundation:armor.boots_aluminum",
         "thermalfoundation:tool.sword_aluminum", "thermalfoundation:tool.pickaxe_aluminum", "thermalfoundation:tool.axe_aluminum", "thermalfoundation:tool.shovel_aluminum", "thermalfoundation:tool.hoe_aluminum"),
        ("nickel", "Никелевый", "thermalfoundation:material:325", "immersiveengineering:material:25",
         "thermalfoundation:armor.helmet_nickel", "thermalfoundation:armor.plate_nickel", "thermalfoundation:armor.legs_nickel", "thermalfoundation:armor.boots_nickel",
         "thermalfoundation:tool.sword_nickel", "thermalfoundation:tool.pickaxe_nickel", "thermalfoundation:tool.axe_nickel", "thermalfoundation:tool.shovel_nickel", "thermalfoundation:tool.hoe_nickel"),
        ("platinum", "Платиновый", "thermalfoundation:material:326", "immersiveengineering:material:26",
         "thermalfoundation:armor.helmet_platinum", "thermalfoundation:armor.plate_platinum", "thermalfoundation:armor.legs_platinum", "thermalfoundation:armor.boots_platinum",
         "thermalfoundation:tool.sword_platinum", "thermalfoundation:tool.pickaxe_platinum", "thermalfoundation:tool.axe_platinum", "thermalfoundation:tool.shovel_platinum", "thermalfoundation:tool.hoe_platinum"),
        ("steel", "Стальной", "thermalfoundation:material:352", "immersiveengineering:material:3",
         "thermalfoundation:armor.helmet_steel", "thermalfoundation:armor.plate_steel", "thermalfoundation:armor.legs_steel", "thermalfoundation:armor.boots_steel",
         "thermalfoundation:tool.sword_steel", "thermalfoundation:tool.pickaxe_steel", "thermalfoundation:tool.axe_steel", "thermalfoundation:tool.shovel_steel", "thermalfoundation:tool.hoe_steel"),
        ("electrum", "Электрумовый", "thermalfoundation:material:353", "immersiveengineering:material:28",
         "thermalfoundation:armor.helmet_electrum", "thermalfoundation:armor.plate_electrum", "thermalfoundation:armor.legs_electrum", "thermalfoundation:armor.boots_electrum",
         "thermalfoundation:tool.sword_electrum", "thermalfoundation:tool.pickaxe_electrum", "thermalfoundation:tool.axe_electrum", "thermalfoundation:tool.shovel_electrum", "thermalfoundation:tool.hoe_electrum"),
        ("invar", "Инваровый", "thermalfoundation:material:354", "immersiveengineering:material:29",
         "thermalfoundation:armor.helmet_invar", "thermalfoundation:armor.plate_invar", "thermalfoundation:armor.legs_invar", "thermalfoundation:armor.boots_invar",
         "thermalfoundation:tool.sword_invar", "thermalfoundation:tool.pickaxe_invar", "thermalfoundation:tool.axe_invar", "thermalfoundation:tool.shovel_invar", "thermalfoundation:tool.hoe_invar"),
        ("bronze", "Бронзовый", "thermalfoundation:material:355", "immersiveengineering:material:30",
         "thermalfoundation:armor.helmet_bronze", "thermalfoundation:armor.plate_bronze", "thermalfoundation:armor.legs_bronze", "thermalfoundation:armor.boots_bronze",
         "thermalfoundation:tool.sword_bronze", "thermalfoundation:tool.pickaxe_bronze", "thermalfoundation:tool.axe_bronze", "thermalfoundation:tool.shovel_bronze", "thermalfoundation:tool.hoe_bronze"),
        ("constantan", "Константановый", "thermalfoundation:material:356", "immersiveengineering:material:31",
         "thermalfoundation:armor.helmet_constantan", "thermalfoundation:armor.plate_constantan", "thermalfoundation:armor.legs_constantan", "thermalfoundation:armor.boots_constantan",
         "thermalfoundation:tool.sword_constantan", "thermalfoundation:tool.pickaxe_constantan", "thermalfoundation:tool.axe_constantan", "thermalfoundation:tool.shovel_constantan", "thermalfoundation:tool.hoe_constantan"),
        ("iron", "Железный", "thermalfoundation:material:32", "immersiveengineering:material:1",
         "minecraft:iron_helmet", "minecraft:iron_chestplate", "minecraft:iron_leggings", "minecraft:iron_boots",
         "minecraft:iron_sword", "minecraft:iron_pickaxe", "minecraft:iron_axe", "minecraft:iron_shovel", "minecraft:iron_hoe"),
        ("gold", "Золотой", "thermalfoundation:material:33", "immersiveengineering:material:2",
         "minecraft:golden_helmet", "minecraft:golden_chestplate", "minecraft:golden_leggings", "minecraft:golden_boots",
         "minecraft:golden_sword", "minecraft:golden_pickaxe", "minecraft:golden_axe", "minecraft:golden_shovel", "minecraft:golden_hoe"),
        ("diamond", "Алмазный", "minecraft:diamond", "immersiveengineering:material:3",
         "minecraft:diamond_helmet", "minecraft:diamond_chestplate", "minecraft:diamond_leggings", "minecraft:diamond_boots",
         "minecraft:diamond_sword", "minecraft:diamond_pickaxe", "minecraft:diamond_axe", "minecraft:diamond_shovel", "minecraft:diamond_hoe"),
        ("osmium", "Осмиевый", "mekanism:plate:1", "immersiveengineering:material:1",
         "mekanism:osmiumhelmet", "mekanism:osmiumchestplate", "mekanism:osmiumleggings", "mekanism:osmiumboots",
         "mekanism:osmiumsword", "mekanism:osmiumpickaxe", "mekanism:osmiumaxe", "mekanism:osmiumshovel", "mekanism:osmiumhoe"),
        ("refined_obsidian", "Обсидиановый", "mekanism:plate:0", "immersiveengineering:material:3",
         "mekanism:refinedobsidianhelmet", "mekanism:refinedobsidianchestplate", "mekanism:refinedobsidianleggings", "mekanism:refinedobsidianboots",
         "mekanism:refinedobsidiansword", "mekanism:refinedobsidianpickaxe", "mekanism:refinedobsidianaxe", "mekanism:refinedobsidianshovel", "mekanism:refinedobsidianhoe"),
        ("refined_glowstone", "Светокаменный", "mekanism:plate:3", "immersiveengineering:material:2",
         "mekanism:refinedglowstonehelmet", "mekanism:refinedglowstonechestplate", "mekanism:refinedglowstoneleggings", "mekanism:refinedglowstoneboots",
         "mekanism:refinedglowstonesword", "mekanism:refinedglowstonepickaxe", "mekanism:refinedglowstoneaxe", "mekanism:refinedglowstoneshovel", "mekanism:refinedglowstonehoe"),
        ("thaumium", "Таумиевый", "thermalfoundation:material:354", "immersiveengineering:material:1",
         "thaumcraft:thaumium_helm", "thaumcraft:thaumium_chest", "thaumcraft:thaumium_legs", "thaumcraft:thaumium_boots",
         "thaumcraft:thaumium_sword", "thaumcraft:thaumium_pick", "thaumcraft:thaumium_axe", "thaumcraft:thaumium_shovel", "thaumcraft:thaumium_hoe"),
        ("void_metal", "Пустотный", "thermalfoundation:material:359", "immersiveengineering:material:3",
         "thaumcraft:void_helm", "thaumcraft:void_chest", "thaumcraft:void_legs", "thaumcraft:void_boots",
         "thaumcraft:void_sword", "thaumcraft:void_pick", "thaumcraft:void_axe", "thaumcraft:void_shovel", "thaumcraft:void_hoe"),
        ("manasteel", "Манастальной", "thermalfoundation:material:320", "immersiveengineering:material:28",
         "botania:manasteelhelm", "botania:manasteelchest", "botania:manasteellegs", "botania:manasteelboots",
         "botania:manasteelsword", "botania:manasteelpick", "botania:manasteelaxe", "botania:manasteelshovel", "botania:manasteelhoe"),
        ("terrasteel", "Террастальной", "thermalfoundation:material:359", "immersiveengineering:material:34",
         "botania:terrasteelhelm", "botania:terrasteelchest", "botania:terrasteellegs", "botania:terrasteelboots",
         "botania:terrasteelsword", "botania:terrapick", "botania:terrasteelaxe", "botania:terrasteelshovel", "botania:terrasteelhoe"),
        ("elementium", "Элементиевый", "thermalfoundation:material:358", "immersiveengineering:material:33",
         "botania:elementiumhelm", "botania:elementiumchest", "botania:elementiumlegs", "botania:elementiumboots",
         "botania:elementiumsword", "botania:elementiumpick", "botania:elementiumaxe", "botania:elementiumshovel", "botania:elementiumhoe")
    ]

    leather = "minecraft:leather"

    for tname, tdisp, plate, rod, helm, chest, legs, boots, sword, pick, axe, shovel, hoe in tiers:
        # Helmet
        recipes.append(Recipe(
            name=f"nexus_exp_equip_helm_{tname}",
            output=helm,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} шлем с кожаной подкладкой",
            pattern=[
                [plate, plate, plate],
                [plate, leather, plate]
            ]
        ))

        # Chestplate
        recipes.append(Recipe(
            name=f"nexus_exp_equip_chest_{tname}",
            output=chest,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} нагрудник с кожаными ремнями",
            pattern=[
                [plate, leather, plate],
                [plate, plate, plate],
                [plate, plate, plate]
            ]
        ))

        # Leggings
        recipes.append(Recipe(
            name=f"nexus_exp_equip_legs_{tname}",
            output=legs,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} поножи",
            pattern=[
                [plate, plate, plate],
                [plate, leather, plate],
                [plate, None, plate]
            ]
        ))

        # Boots
        recipes.append(Recipe(
            name=f"nexus_exp_equip_boots_{tname}",
            output=boots,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} сапоги",
            pattern=[
                [plate, None, plate],
                [plate, leather, plate]
            ]
        ))

        # Sword
        recipes.append(Recipe(
            name=f"nexus_exp_equip_sword_{tname}",
            output=sword,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} меч",
            pattern=[
                [plate],
                [plate],
                [rod]
            ]
        ))

        # Pickaxe
        recipes.append(Recipe(
            name=f"nexus_exp_equip_pick_{tname}",
            output=pick,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} кирка",
            pattern=[
                [plate, plate, plate],
                [None, rod, None],
                [None, rod, None]
            ]
        ))

        # Axe
        recipes.append(Recipe(
            name=f"nexus_exp_equip_axe_{tname}",
            output=axe,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} топор",
            pattern=[
                [plate, plate],
                [plate, rod],
                [None, rod]
            ]
        ))

        # Shovel
        recipes.append(Recipe(
            name=f"nexus_exp_equip_shovel_{tname}",
            output=shovel,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} лопата",
            pattern=[
                [plate],
                [rod],
                [rod]
            ]
        ))

        # Hoe
        recipes.append(Recipe(
            name=f"nexus_exp_equip_hoe_{tname}",
            output=hoe,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} мотыга",
            pattern=[
                [plate, plate],
                [None, rod],
                [None, rod]
            ]
        ))

        # Shield
        recipes.append(Recipe(
            name=f"nexus_exp_equip_shield_{tname}",
            output=f"minecraft:shield",
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} щит с металлической оковкой",
            pattern=[
                [plate, "minecraft:planks", plate],
                ["minecraft:planks", plate, "minecraft:planks"],
                [None, plate, None]
            ]
        ))

        # Sickle
        recipes.append(Recipe(
            name=f"nexus_exp_equip_sickle_{tname}",
            output=sword,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} серп",
            pattern=[
                [None, plate, plate],
                [None, None, plate],
                [rod, None, None]
            ]
        ))

        # Mining Hammer (3x3 mining)
        recipes.append(Recipe(
            name=f"nexus_exp_equip_hammer_{tname}",
            output=pick,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} тяжелый шахтерский молот 3х3",
            pattern=[
                [plate, "minecraft:iron_block", plate],
                [None, rod, None],
                [None, rod, None]
            ]
        ))

        # Excavator (3x3 digging)
        recipes.append(Recipe(
            name=f"nexus_exp_equip_excavator_{tname}",
            output=shovel,
            is_shaped=True,
            remove_output=False,
            comment=f"{tdisp} тяжелый экскаватор 3х3",
            pattern=[
                [None, plate, None],
                [plate, rod, plate],
                [None, rod, None]
            ]
        ))

    return recipes
