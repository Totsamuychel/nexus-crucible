#!/usr/bin/env python3
"""
Nexus Crucible - Tinkers' Construct & Construct's Armory Recipes
Smeltery blocks, patterns, casts, tables and tool modifiers.
Generates ~120 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_tconstruct_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    seared_brick = "tconstruct:materials:0"
    grout = "tconstruct:soil:0"
    blank_pattern = "tconstruct:pattern"

    iron_plate = "thermalfoundation:material:32"
    copper_plate = "thermalfoundation:material:320"
    wood_plank = "minecraft:planks"

    # 1. GROUT & SEARED BRICKS
    recipes.append(Recipe(
        name="nexus_exp_tc_grout",
        output=f"{grout} * 4",
        is_shaped=True,
        remove_output=True,
        comment="Цементный раствор (Grout) для плавильни",
        pattern=[
            ["minecraft:clay_ball", "minecraft:sand"],
            ["minecraft:gravel", "minecraft:sand"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_seared_brick_block",
        output="tconstruct:seared:0 * 4",
        is_shaped=True,
        remove_output=True,
        comment="Обожженный кирпич (Seared Brick Block)",
        pattern=[
            [seared_brick, seared_brick],
            [seared_brick, seared_brick]
        ]
    ))

    # 2. SMELTERY INFRASTRUCTURE
    smeltery_parts = [
        ("controller", "tconstruct:smeltery_controller", [[seared_brick, seared_brick, seared_brick], [seared_brick, "minecraft:furnace", seared_brick], [seared_brick, seared_brick, seared_brick]], "Контроллер плавильни"),
        ("tank", "tconstruct:seared_tank:0", [[seared_brick, seared_brick, seared_brick], [seared_brick, "minecraft:glass", seared_brick], [seared_brick, seared_brick, seared_brick]], "Обожженный резервуар"),
        ("drain", "tconstruct:smeltery_io:0", [[seared_brick, None, seared_brick], [seared_brick, None, seared_brick], [seared_brick, None, seared_brick]], "Слив плавильни (Smeltery Drain)"),
        ("faucet", "tconstruct:faucet * 2", [[seared_brick, None, seared_brick], [None, seared_brick, None]], "Обожженный кран (Faucet)"),
        ("channel", "tconstruct:channel * 2", [[seared_brick, None, seared_brick], [seared_brick, seared_brick, seared_brick]], "Обожженный желоб (Channel)"),
        ("table", "tconstruct:casting:0", [[seared_brick, seared_brick, seared_brick], [seared_brick, None, seared_brick], [seared_brick, None, seared_brick]], "Литейный стол (Casting Table)"),
        ("basin", "tconstruct:casting:1", [[seared_brick, None, seared_brick], [seared_brick, None, seared_brick], [seared_brick, seared_brick, seared_brick]], "Литейный резервуар (Casting Basin)")
    ]
    for sid, sout, spat, sdesc in smeltery_parts:
        recipes.append(Recipe(
            name=f"nexus_exp_tc_{sid}",
            output=sout,
            is_shaped=True,
            remove_output=True,
            comment=sdesc,
            pattern=spat
        ))

    # 3. WORK TABLES & STATIONS
    recipes.append(Recipe(
        name="nexus_exp_tc_stencil_table",
        output="tconstruct:tooltables:1",
        is_shaped=True,
        remove_output=True,
        comment="Стол трафаретов",
        pattern=[
            [blank_pattern],
            [wood_plank]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_part_builder",
        output="tconstruct:tooltables:2",
        is_shaped=True,
        remove_output=True,
        comment="Сборщик деталей (Part Builder)",
        pattern=[
            [blank_pattern],
            ["minecraft:log"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_tool_station",
        output="tconstruct:tooltables:3",
        is_shaped=True,
        remove_output=True,
        comment="Инструментальная станция (Tool Station)",
        pattern=[
            [blank_pattern],
            ["minecraft:crafting_table"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_tool_forge",
        output="tconstruct:toolforge:0",
        is_shaped=True,
        remove_output=True,
        comment="Инструментальная кузня (Tool Forge)",
        pattern=[
            [seared_brick, seared_brick, seared_brick],
            ["thermalfoundation:storage_alloy:0", "tconstruct:tooltables:3", "thermalfoundation:storage_alloy:0"],
            ["thermalfoundation:storage_alloy:0", None, "thermalfoundation:storage_alloy:0"]
        ]
    ))

    # 4. BLANK PATTERNS & MODIFIERS
    recipes.append(Recipe(
        name="nexus_exp_tc_pattern",
        output=f"{blank_pattern} * 4",
        is_shaped=True,
        remove_output=True,
        comment="Пустой трафарет Tinkers' Construct",
        pattern=[
            ["minecraft:stick", wood_plank],
            [wood_plank, "minecraft:stick"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_reinforcement",
        output="tconstruct:materials:14",
        is_shaped=True,
        remove_output=True,
        comment="Пластина укрепления инструментов (Reinforcement)",
        pattern=[
            ["minecraft:obsidian", iron_plate, "minecraft:obsidian"],
            [iron_plate, "tconstruct:materials:0", iron_plate],
            ["minecraft:obsidian", iron_plate, "minecraft:obsidian"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_silky_jewel",
        output="tconstruct:materials:16",
        is_shaped=True,
        remove_output=True,
        comment="Шелковистая драгоценность (Silky Jewel)",
        pattern=[
            ["minecraft:string", "minecraft:gold_ingot", "minecraft:string"],
            ["minecraft:gold_ingot", "minecraft:emerald", "minecraft:gold_ingot"],
            ["minecraft:string", "minecraft:gold_ingot", "minecraft:string"]
        ]
    ))

    # 5. CASTING CASTS (Gold / Brass Casts for 16 tool parts)
    gold = "minecraft:gold_ingot"
    cast_types = [
        ("pickaxe", "tconstruct:cast_custom:0", "Слепок головки кирки"),
        ("shovel", "tconstruct:cast_custom:1", "Слепок головки лопаты"),
        ("axe", "tconstruct:cast_custom:2", "Слепок головки топора"),
        ("sword", "tconstruct:cast_custom:3", "Слепок лезвия меча"),
        ("rod", "tconstruct:cast_custom:4", "Слепок стержня инструмента"),
        ("guard", "tconstruct:cast_custom:5", "Слепок гарды"),
        ("plate", "tconstruct:cast_custom:6", "Слепок большой пластины"),
        ("hammer", "tconstruct:cast_custom:7", "Слепок головки молота"),
        ("excavator", "tconstruct:cast_custom:8", "Слепок головки экскаватора"),
        ("broadaxe", "tconstruct:cast_custom:9", "Слепок секиры"),
        ("gear", "tconstruct:cast_custom:10", "Слепок шестерни"),
        ("plate_armor", "conarm:armor_plate_cast", "Слепок бронепластины Construct's Armory"),
        ("helm_core", "conarm:helmet_core_cast", "Слепок ядра шлема"),
        ("chest_core", "conarm:chest_core_cast", "Слепок ядра кирасы"),
        ("legs_core", "conarm:leggings_core_cast", "Слепок ядра поножей"),
        ("boots_core", "conarm:boots_core_cast", "Слепок ядра сапог")
    ]

    for cid, cout, cdesc in cast_types:
        recipes.append(Recipe(
            name=f"nexus_exp_tc_cast_{cid}",
            output=cout,
            is_shaped=True,
            remove_output=False,
            comment=f"{cdesc} (Отливка из золота)",
            pattern=[
                [gold, gold, gold],
                [gold, blank_pattern, gold],
                [gold, gold, gold]
            ]
        ))

    # Clay Casts
    clay = "minecraft:clay_ball"
    for cid, cout, cdesc in cast_types:
        recipes.append(Recipe(
            name=f"nexus_exp_tc_clay_cast_{cid}",
            output=f"tconstruct:clay_cast:0",
            is_shaped=True,
            remove_output=False,
            comment=f"{cdesc} (Глиняный слепок)",
            pattern=[
                [clay, clay, clay],
                [clay, blank_pattern, clay],
                [clay, clay, clay]
            ]
        ))

    # Sharpening Kits (16 metals)
    metals_tc = [
        ("iron", "minecraft:iron_ingot", "Железный точильный набор"),
        ("copper", "thermalfoundation:material:128", "Медный точильный набор"),
        ("tin", "thermalfoundation:material:129", "Оловянный точильный набор"),
        ("bronze", "thermalfoundation:material:163", "Бронзовый точильный набор"),
        ("lead", "thermalfoundation:material:131", "Свинцовый точильный набор"),
        ("silver", "thermalfoundation:material:130", "Серебряный точильный набор"),
        ("steel", "thermalfoundation:material:160", "Стальной точильный набор"),
        ("electrum", "thermalfoundation:material:161", "Электрумовый точильный набор"),
        ("invar", "thermalfoundation:material:162", "Инваровый точильный набор"),
        ("constantan", "thermalfoundation:material:164", "Константановый точильный набор"),
        ("aluminum", "thermalfoundation:material:132", "Алюминиевый точильный набор"),
        ("obsidian", "minecraft:obsidian", "Обсидиановый точильный набор"),
        ("cobalt", "tconstruct:metal:0", "Кобальтовый точильный набор"),
        ("ardite", "tconstruct:metal:1", "Ардитовый точильный набор"),
        ("manyullyn", "tconstruct:metal:2", "Маньюллиновый точильный набор"),
        ("knightslime", "tconstruct:metal:3", "Рыцарский слизевой точильный набор")
    ]
    for mid, mingot, mdesc in metals_tc:
        recipes.append(Recipe(
            name=f"nexus_exp_tc_kit_{mid}",
            output="tconstruct:sharpening_kit:0",
            is_shaped=True,
            remove_output=False,
            comment=mdesc,
            pattern=[
                [mingot, "minecraft:flint"],
                ["minecraft:sand", mingot]
            ]
        ))

    return recipes
