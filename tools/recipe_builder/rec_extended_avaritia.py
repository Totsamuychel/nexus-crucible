#!/usr/bin/env python3
"""
Nexus Crucible - Extended Crafting & Avaritia Endgame Recipes
Compressed blocks, Black Iron, Singularities and End-Game Catalysts.
Generates ~220 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_extended_avaritia_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    # 1. COMPRESSED BLOCKS (11 block types x 8 tiers = 88 compress + 88 decompress = 176 recipes)
    compressed_materials = [
        ("cobblestone", "minecraft:cobblestone", "extrautils2:compressedcobblestone"),
        ("dirt", "minecraft:dirt", "extrautils2:compresseddirt"),
        ("sand", "minecraft:sand", "extrautils2:compressedsand"),
        ("gravel", "minecraft:gravel", "extrautils2:compressedgravel"),
        ("netherrack", "minecraft:netherrack", "extrautils2:compressednetherrack"),
        ("obsidian", "minecraft:obsidian", "extrautils2:compressedcobblestone"),
        ("end_stone", "minecraft:end_stone", "extrautils2:compressedcobblestone"),
        ("granite", "minecraft:stone:1", "extrautils2:compressedcobblestone"),
        ("diorite", "minecraft:stone:3", "extrautils2:compressedcobblestone"),
        ("andesite", "minecraft:stone:5", "extrautils2:compressedcobblestone"),
        ("soul_sand", "minecraft:soul_sand", "extrautils2:compressednetherrack")
    ]

    for cname, base_block, comp_prefix in compressed_materials:
        curr = base_block
        for tier in range(1, 9):
            out_comp = f"{comp_prefix}:{tier-1}" if cname in ["cobblestone", "dirt", "sand", "gravel", "netherrack"] else f"extrautils2:compressedcobblestone:{tier-1}"
            # Compress (9 -> 1)
            recipes.append(Recipe(
                name=f"nexus_exp_comp_{cname}_t{tier}",
                output=out_comp,
                is_shaped=True,
                remove_output=False,
                comment=f"Сжатый {cname} Tier {tier} (x{9**tier})",
                pattern=[
                    [curr, curr, curr],
                    [curr, curr, curr],
                    [curr, curr, curr]
                ]
            ))
            # Decompress (1 -> 9)
            recipes.append(Recipe(
                name=f"nexus_exp_decomp_{cname}_t{tier}",
                output=f"{curr} * 9",
                is_shaped=False,
                remove_output=False,
                comment=f"Распаковка {cname} Tier {tier}",
                shapeless_inputs=[out_comp]
            ))
            curr = out_comp

    # 2. EXTENDED CRAFTING COMPONENTS & TABLES
    black_iron = "extendedcrafting:material:0"
    luminessence = "extendedcrafting:material:7"
    ender_star = "extendedcrafting:material:40"
    crying_obsidian = "extendedcrafting:storage:2"

    recipes.append(Recipe(
        name="nexus_exp_ec_black_iron_ingot",
        output=f"{black_iron} * 2",
        is_shaped=True,
        remove_output=True,
        comment="Черный железный слиток Extended Crafting",
        pattern=[
            ["minecraft:iron_ingot", "minecraft:coal:1", "minecraft:iron_ingot"],
            ["minecraft:coal:1", "minecraft:obsidian", "minecraft:coal:1"],
            ["minecraft:iron_ingot", "minecraft:coal:1", "minecraft:iron_ingot"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ec_luminessence",
        output=f"{luminessence} * 4",
        is_shaped=True,
        remove_output=True,
        comment="Люминесценция (Luminessence)",
        pattern=[
            ["minecraft:glowstone_dust", "minecraft:gunpowder"],
            ["minecraft:redstone", "minecraft:sugar"]
        ]
    ))

    # Extended Crafting Tables (Basic 3x3, Advanced 5x5, Elite 7x7, Ultimate 9x9)
    ec_tables = [
        ("basic", "extendedcrafting:table_basic", [[black_iron, "minecraft:crafting_table", black_iron], ["minecraft:crafting_table", "thermalexpansion:frame:0", "minecraft:crafting_table"], [black_iron, "minecraft:crafting_table", black_iron]], "Базовый верстак расширенного крафта (3х3)"),
        ("advanced", "extendedcrafting:table_advanced", [[black_iron, "extendedcrafting:material:2", black_iron], ["extendedcrafting:material:2", "extendedcrafting:table_basic", "extendedcrafting:material:2"], [black_iron, "extendedcrafting:material:2", black_iron]], "Продвинутый верстак расширенного крафта (5х5)"),
        ("elite", "extendedcrafting:table_elite", [[black_iron, "extendedcrafting:material:3", black_iron], ["extendedcrafting:material:3", "extendedcrafting:table_advanced", "extendedcrafting:material:3"], [black_iron, "extendedcrafting:material:3", black_iron]], "Элитный верстак расширенного крафта (7х7)"),
        ("ultimate", "extendedcrafting:table_ultimate", [[black_iron, "extendedcrafting:material:4", black_iron], ["extendedcrafting:material:4", "extendedcrafting:table_elite", "extendedcrafting:material:4"], [black_iron, "extendedcrafting:material:4", black_iron]], "Совершенный верстак расширенного крафта (9х9)"),
        ("auto_basic", "extendedcrafting:auto_table_basic", [[luminessence, "extendedcrafting:table_basic", luminessence], [black_iron, "minecraft:comparator", black_iron]], "Авто-верстак расширенного крафта (Basic)")
    ]
    for tid, tout, tpat, tdesc in ec_tables:
        recipes.append(Recipe(
            name=f"nexus_exp_ec_{tid}",
            output=tout,
            is_shaped=True,
            remove_output=True,
            comment=tdesc,
            pattern=tpat
        ))

    # 3. SINGULARITIES (24 Singularities crafted from blocks)
    singularities = [
        ("iron", "extendedcrafting:singularity_custom:0", "minecraft:iron_block", "Железная сингулярность"),
        ("gold", "extendedcrafting:singularity_custom:1", "minecraft:gold_block", "Золотая сингулярность"),
        ("copper", "extendedcrafting:singularity_custom:2", "thermalfoundation:storage:0", "Медная сингулярность"),
        ("tin", "extendedcrafting:singularity_custom:3", "thermalfoundation:storage:1", "Оловянная сингулярность"),
        ("silver", "extendedcrafting:singularity_custom:4", "thermalfoundation:storage:2", "Серебряная сингулярность"),
        ("lead", "extendedcrafting:singularity_custom:5", "thermalfoundation:storage:3", "Свинцовая сингулярность"),
        ("aluminum", "extendedcrafting:singularity_custom:6", "thermalfoundation:storage:4", "Алюминиевая сингулярность"),
        ("nickel", "extendedcrafting:singularity_custom:7", "thermalfoundation:storage:5", "Никелевая сингулярность"),
        ("platinum", "extendedcrafting:singularity_custom:8", "thermalfoundation:storage:6", "Платиновая сингулярность"),
        ("steel", "extendedcrafting:singularity_custom:9", "thermalfoundation:storage_alloy:0", "Стальная сингулярность"),
        ("electrum", "extendedcrafting:singularity_custom:10", "thermalfoundation:storage_alloy:1", "Электрумовая сингулярность"),
        ("invar", "extendedcrafting:singularity_custom:11", "thermalfoundation:storage_alloy:2", "Инваровая сингулярность"),
        ("bronze", "extendedcrafting:singularity_custom:12", "thermalfoundation:storage_alloy:3", "Бронзовая сингулярность"),
        ("constantan", "extendedcrafting:singularity_custom:13", "thermalfoundation:storage_alloy:4", "Константановая сингулярность"),
        ("signalum", "extendedcrafting:singularity_custom:14", "thermalfoundation:storage_alloy:5", "Сигналиумовая сингулярность"),
        ("lumium", "extendedcrafting:singularity_custom:15", "thermalfoundation:storage_alloy:6", "Люмиумовая сингулярность"),
        ("enderium", "extendedcrafting:singularity_custom:16", "thermalfoundation:storage_alloy:7", "Эндериумовая сингулярность"),
        ("diamond", "extendedcrafting:singularity_custom:17", "minecraft:diamond_block", "Алмазная сингулярность"),
        ("emerald", "extendedcrafting:singularity_custom:18", "minecraft:emerald_block", "Изумрудная сингулярность"),
        ("lapis", "extendedcrafting:singularity_custom:19", "minecraft:lapis_block", "Лазуритовая сингулярность"),
        ("redstone", "extendedcrafting:singularity_custom:20", "minecraft:redstone_block", "Редстоуновая сингулярность"),
        ("coal", "extendedcrafting:singularity_custom:21", "minecraft:coal_block", "Угольная сингулярность"),
        ("draconium", "extendedcrafting:singularity_custom:22", "draconicevolution:draconium_block", "Дракониевая сингулярность"),
        ("thaumium", "extendedcrafting:singularity_custom:23", "thaumcraft:metal_block_thaumium", "Таумиевая сингулярность")
    ]

    for sid, sout, sblock, sdesc in singularities:
        recipes.append(Recipe(
            name=f"nexus_exp_ec_singularity_{sid}",
            output=sout,
            is_shaped=True,
            remove_output=False,
            comment=f"{sdesc} (Компрессия 9 блоков в сингулярность)",
            pattern=[
                [sblock, sblock, sblock],
                [sblock, "extendedcrafting:material:1", sblock],
                [sblock, sblock, sblock]
            ]
        ))

    # 4. AVARITIA CATALYSTS & CRYSTALS
    recipes.append(Recipe(
        name="nexus_exp_ava_crystal_matrix",
        output="avaritia:resource:1",
        is_shaped=True,
        remove_output=True,
        comment="Слиток кристаллической матрицы Avaritia",
        pattern=[
            ["minecraft:diamond", "minecraft:nether_star", "minecraft:diamond"],
            ["minecraft:nether_star", "avaritia:resource:0", "minecraft:nether_star"],
            ["minecraft:diamond", "minecraft:nether_star", "minecraft:diamond"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ava_neutronium_ingot",
        output="avaritia:resource:4",
        is_shaped=True,
        remove_output=True,
        comment="Нейтрониевый слиток",
        pattern=[
            ["avaritia:resource:3", "avaritia:resource:3", "avaritia:resource:3"],
            ["avaritia:resource:3", "avaritia:resource:3", "avaritia:resource:3"],
            ["avaritia:resource:3", "avaritia:resource:3", "avaritia:resource:3"]
        ]
    ))

    return recipes
