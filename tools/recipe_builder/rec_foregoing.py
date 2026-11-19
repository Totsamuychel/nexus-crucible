#!/usr/bin/env python3
"""
Nexus Crucible - Industrial Foregoing Recipes
Generates ~180 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_foregoing_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    plastic = "industrialforegoing:plastic"
    pity_casing = "industrialforegoing:pitiful_casing"
    simple_casing = "industrialforegoing:casing:0"
    adv_casing = "industrialforegoing:casing:1"
    supreme_casing = "industrialforegoing:casing:2"

    iron_plate = "thermalfoundation:material:32"
    gold_plate = "thermalfoundation:material:33"
    steel_plate = "thermalfoundation:material:352"
    copper_plate = "thermalfoundation:material:320"
    diamond = "minecraft:diamond"
    emerald = "minecraft:emerald"
    redstone = "minecraft:redstone"

    # 1. RUBBER & PLASTIC SYSTEM
    recipes.append(Recipe(
        name="nexus_exp_if_dry_rubber",
        output="industrialforegoing:dryrubber * 2",
        is_shaped=True,
        remove_output=True,
        comment="Сухой резиновый сгусток из латекса и серы",
        pattern=[
            ["industrialforegoing:tinydryrubber", "industrialforegoing:tinydryrubber", "industrialforegoing:tinydryrubber"],
            ["industrialforegoing:tinydryrubber", "thermalfoundation:material:771", "industrialforegoing:tinydryrubber"],
            ["industrialforegoing:tinydryrubber", "industrialforegoing:tinydryrubber", "industrialforegoing:tinydryrubber"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_if_plastic_sheet",
        output=f"{plastic} * 2",
        is_shaped=True,
        remove_output=True,
        comment="Индустриальный пластик высокой очистки",
        pattern=[
            ["industrialforegoing:dryrubber", "industrialforegoing:dryrubber"],
            ["industrialforegoing:dryrubber", "industrialforegoing:dryrubber"]
        ]
    ))

    # 2. ALL 16 LASER DRILL LENSES
    dyes = [
        ("white", "minecraft:dye:15", 0),
        ("orange", "minecraft:dye:14", 1),
        ("magenta", "minecraft:dye:13", 2),
        ("light_blue", "minecraft:dye:12", 3),
        ("yellow", "minecraft:dye:11", 4),
        ("lime", "minecraft:dye:10", 5),
        ("pink", "minecraft:dye:9", 6),
        ("gray", "minecraft:dye:8", 7),
        ("light_gray", "minecraft:dye:7", 8),
        ("cyan", "minecraft:dye:6", 9),
        ("purple", "minecraft:dye:5", 10),
        ("blue", "minecraft:dye:4", 11),
        ("brown", "minecraft:dye:3", 12),
        ("green", "minecraft:dye:2", 13),
        ("red", "minecraft:dye:1", 14),
        ("black", "minecraft:dye:0", 15)
    ]

    for dname, dye_item, meta in dyes:
        recipes.append(Recipe(
            name=f"nexus_exp_if_lens_{dname}",
            output=f"industrialforegoing:laser_lens:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=f"Фокусирующая линза лазерного бура: {dname}",
            pattern=[
                [plastic, "minecraft:stained_glass_pane:" + str(meta), plastic],
                ["minecraft:stained_glass_pane:" + str(meta), dye_item, "minecraft:stained_glass_pane:" + str(meta)],
                [plastic, "minecraft:stained_glass_pane:" + str(meta), plastic]
            ]
        ))

    # 3. RANGE ADDONS (Tier 0 to Tier 11 -> 12 tiers)
    for rtier in range(12):
        prev = "minecraft:glass_pane" if rtier == 0 else f"industrialforegoing:range_addon:{rtier-1}"
        tier_mat = iron_plate if rtier < 3 else (copper_plate if rtier < 6 else (gold_plate if rtier < 9 else diamond))
        recipes.append(Recipe(
            name=f"nexus_exp_if_range_addon_{rtier}",
            output=f"industrialforegoing:range_addon:{rtier}",
            is_shaped=True,
            remove_output=True,
            comment=f"Увеличитель дальности Tier {rtier+1}",
            pattern=[
                [plastic, tier_mat, plastic],
                [tier_mat, prev, tier_mat],
                [plastic, redstone, plastic]
            ]
        ))

    # 4. SPEED & EFFICIENCY ADDONS
    recipes.append(Recipe(
        name="nexus_exp_if_speed_addon_1",
        output="industrialforegoing:speed_addon_1",
        is_shaped=True,
        remove_output=True,
        comment="Ускоритель Tier 1",
        pattern=[
            [plastic, "minecraft:sugar", plastic],
            ["minecraft:sugar", "minecraft:piston", "minecraft:sugar"],
            [plastic, redstone, plastic]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_if_speed_addon_2",
        output="industrialforegoing:speed_addon_2",
        is_shaped=True,
        remove_output=True,
        comment="Ускоритель Tier 2",
        pattern=[
            [plastic, gold_plate, plastic],
            [gold_plate, "industrialforegoing:speed_addon_1", gold_plate],
            [plastic, "minecraft:blaze_powder", plastic]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_if_energy_addon_1",
        output="industrialforegoing:energy_field_addon",
        is_shaped=True,
        remove_output=True,
        comment="Улучшение энергоэффективности",
        pattern=[
            [plastic, copper_plate, plastic],
            [copper_plate, "minecraft:redstone_block", copper_plate],
            [plastic, redstone, plastic]
        ]
    ))

    # 5. INDUSTRIAL FOREGOING MACHINES
    if_machines = [
        ("plant_gatherer", "industrialforegoing:crop_recolector", [[plastic, "minecraft:iron_hoe", plastic], ["minecraft:iron_axe", pity_casing, "minecraft:iron_axe"], [plastic, redstone, plastic]], "Сборщик урожая (Plant Gatherer)"),
        ("plant_sower", "industrialforegoing:crop_sower", [[plastic, "minecraft:flower_pot", plastic], ["minecraft:piston", pity_casing, "minecraft:piston"], [plastic, redstone, plastic]], "Сеялка (Plant Sower)"),
        ("plant_fertilizer", "industrialforegoing:crop_enrich_material", [[plastic, "minecraft:dye:15", plastic], ["minecraft:leather", pity_casing, "minecraft:leather"], [plastic, redstone, plastic]], "Удобритель растений"),
        ("sewage_composter", "industrialforegoing:sewage_composter_range_addon", [[plastic, "minecraft:brick", plastic], ["minecraft:furnace", pity_casing, "minecraft:furnace"], [plastic, "minecraft:piston", plastic]], "Компостер сточных вод"),
        ("mob_slaughter", "industrialforegoing:mob_slaughter_factory", [[plastic, "minecraft:diamond_sword", plastic], ["minecraft:iron_axe", simple_casing, "minecraft:iron_axe"], [plastic, redstone, plastic]], "Скотобойня (Mob Slaughter Factory)"),
        ("mob_crusher", "industrialforegoing:mob_relocator", [[plastic, "minecraft:diamond_sword", plastic], [diamond, adv_casing, diamond], [plastic, "minecraft:book", plastic]], "Дробитель мобов (Mob Crusher)"),
        ("animal_rancher", "industrialforegoing:animal_resource_harvester", [[plastic, "minecraft:shears", plastic], ["minecraft:bucket", pity_casing, "minecraft:bucket"], [plastic, redstone, plastic]], "Фермерский сборщик (Animal Rancher)"),
        ("tree_fluid_extractor", "industrialforegoing:tree_fluid_extractor", [[iron_plate, "minecraft:furnace", iron_plate], [iron_plate, pity_casing, iron_plate], [iron_plate, "minecraft:bucket", iron_plate]], "Экстрактор древесного сока"),
        ("fluid_crafter", "industrialforegoing:fluid_crafter", [[plastic, "minecraft:crafting_table", plastic], ["minecraft:bucket", simple_casing, "minecraft:bucket"], [plastic, "minecraft:piston", plastic]], "Жидкостный авто-верстак"),
        ("bio_reactor", "industrialforegoing:bioreactor", [[plastic, "minecraft:sugar", plastic], ["minecraft:wheat", simple_casing, "minecraft:potato"], [plastic, "minecraft:carrot", plastic]], "Биореактор"),
        ("biofuel_generator", "industrialforegoing:biofuel_generator", [[plastic, "minecraft:furnace", plastic], ["minecraft:piston", simple_casing, "minecraft:piston"], [plastic, redstone, plastic]], "Биотопливный генератор"),
        ("laser_base", "industrialforegoing:laser_base", [[plastic, diamond, plastic], [diamond, supreme_casing, diamond], [plastic, "minecraft:nether_star", plastic]], "База лазерного бура"),
        ("laser_drill", "industrialforegoing:laser_drill", [[plastic, "minecraft:glowstone", plastic], [diamond, adv_casing, diamond], [plastic, "minecraft:piston", plastic]], "Лазерный бур")
    ]

    for mid, mout, mpat, mcomment in if_machines:
        recipes.append(Recipe(
            name=f"nexus_exp_if_mach_{mid}",
            output=mout,
            is_shaped=True,
            remove_output=True,
            comment=mcomment,
            pattern=mpat
        ))

    # 6. CONVEYOR BELTS (16 Colors)
    for cidx in range(16):
        recipes.append(Recipe(
            name=f"nexus_exp_if_conveyor_color_{cidx}",
            output=f"industrialforegoing:conveyor:{cidx} * 4",
            is_shaped=True,
            remove_output=False,
            comment=f"Цветная конвейерная лента #{cidx}",
            pattern=[
                [plastic, f"minecraft:dye:{15-cidx}", plastic],
                [iron_plate, redstone, iron_plate]
            ]
        ))

    # 7. BLACK HOLE STORAGE & UTILITIES
    recipes.append(Recipe(
        name="nexus_exp_if_black_hole_unit",
        output="industrialforegoing:black_hole_unit",
        is_shaped=True,
        remove_output=True,
        comment="Хранилище Черная Дыра (Black Hole Unit)",
        pattern=[
            [plastic, "minecraft:ender_eye", plastic],
            ["minecraft:ender_pearl", supreme_casing, "minecraft:ender_pearl"],
            [plastic, "minecraft:nether_star", plastic]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_if_black_hole_tank",
        output="industrialforegoing:black_hole_tank",
        is_shaped=True,
        remove_output=True,
        comment="Резервуар Черная Дыра (Black Hole Tank)",
        pattern=[
            [plastic, "minecraft:bucket", plastic],
            ["minecraft:ender_pearl", supreme_casing, "minecraft:ender_pearl"],
            [plastic, "minecraft:nether_star", plastic]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_if_mob_imprisonment_tool",
        output="industrialforegoing:mob_imprisonment_tool",
        is_shaped=True,
        remove_output=True,
        comment="Инструмент захвата мобов (Safari Net)",
        pattern=[
            [plastic, "minecraft:ghast_tear", plastic],
            ["minecraft:ender_pearl", "minecraft:glass_bottle", "minecraft:ender_pearl"],
            [plastic, iron_plate, plastic]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_if_meat_feeder",
        output="industrialforegoing:meat_feeder",
        is_shaped=True,
        remove_output=True,
        comment="Автоматический кормилец мясом",
        pattern=[
            [plastic, "minecraft:cooked_beef", plastic],
            ["minecraft:glass_bottle", pity_casing, "minecraft:glass_bottle"],
            [plastic, redstone, plastic]
        ]
    ))

    return recipes
