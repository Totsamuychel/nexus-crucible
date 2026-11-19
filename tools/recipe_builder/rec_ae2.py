#!/usr/bin/env python3
"""
Nexus Crucible - Applied Energistics 2, AE2 Stuff & PackagedAuto Recipes
Generates ~180 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_ae2_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    fluix = "appliedenergistics2:material:7"
    pure_fluix = "appliedenergistics2:material:12"
    pure_certus = "appliedenergistics2:material:10"
    pure_nether = "appliedenergistics2:material:11"

    logic_proc = "appliedenergistics2:material:22"
    calc_proc = "appliedenergistics2:material:23"
    eng_proc = "appliedenergistics2:material:24"

    iron_plate = "thermalfoundation:material:32"
    steel_plate = "thermalfoundation:material:352"
    copper_plate = "thermalfoundation:material:320"
    redstone = "minecraft:redstone"
    glass = "minecraft:glass"
    wool = "minecraft:wool"

    # 1. CORE NETWORK BLOCKS
    recipes.append(Recipe(
        name="nexus_exp_ae2_controller",
        output="appliedenergistics2:controller",
        is_shaped=True,
        remove_output=True,
        comment="МЭ Контроллер сети",
        pattern=[
            [pure_fluix, pure_certus, pure_fluix],
            [eng_proc, "thermalexpansion:frame:0", eng_proc],
            [pure_fluix, pure_certus, pure_fluix]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ae2_drive",
        output="appliedenergistics2:drive",
        is_shaped=True,
        remove_output=True,
        comment="МЭ Накопитель дисков",
        pattern=[
            [iron_plate, eng_proc, iron_plate],
            ["appliedenergistics2:part:16", "thermalexpansion:frame:0", "appliedenergistics2:part:16"],
            [iron_plate, eng_proc, iron_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ae2_chest",
        output="appliedenergistics2:chest",
        is_shaped=True,
        remove_output=True,
        comment="МЭ Сундук",
        pattern=[
            [glass, "appliedenergistics2:part:380", glass],
            ["appliedenergistics2:part:16", "minecraft:chest", "appliedenergistics2:part:16"],
            [iron_plate, fluix, iron_plate]
        ]
    ))

    # 2. TERMINALS & INTERFACES
    terminals = [
        ("term_terminal", "appliedenergistics2:part:380", [["minecraft:glowstone_dust", logic_proc, "minecraft:glowstone_dust"], [iron_plate, "appliedenergistics2:part:140", iron_plate], [None, fluix, None]], "МЭ Обычный терминал"),
        ("term_crafting", "appliedenergistics2:part:360", [[None, "minecraft:crafting_table", None], [None, "appliedenergistics2:part:380", None], [calc_proc, None, calc_proc]], "МЭ Терминал создания"),
        ("term_pattern", "appliedenergistics2:part:340", [[None, iron_plate, None], [calc_proc, "appliedenergistics2:part:360", calc_proc], [None, iron_plate, None]], "МЭ Терминал шаблонов"),
        ("term_interface", "appliedenergistics2:part:480", [[None, "appliedenergistics2:interface", None], [eng_proc, "appliedenergistics2:part:380", eng_proc], [None, None, None]], "МЭ Терминал интерфейсов")
    ]
    for tid, tout, tpat, tdesc in terminals:
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_{tid}",
            output=tout,
            is_shaped=True,
            remove_output=True,
            comment=tdesc,
            pattern=tpat
        ))

    # 3. STORAGE COMPONENTS & CELLS (Item, Fluid, Spatial)
    cell_tiers = [
        ("1k", "appliedenergistics2:material:35", "appliedenergistics2:storage_cell_1k", redstone, pure_certus, logic_proc, "1к"),
        ("4k", "appliedenergistics2:material:36", "appliedenergistics2:storage_cell_4k", "appliedenergistics2:material:35", calc_proc, calc_proc, "4к"),
        ("16k", "appliedenergistics2:material:37", "appliedenergistics2:storage_cell_16k", "appliedenergistics2:material:36", eng_proc, eng_proc, "16к"),
        ("64k", "appliedenergistics2:material:38", "appliedenergistics2:storage_cell_64k", "appliedenergistics2:material:37", "contenttweaker:runic_logic_core", eng_proc, "64к")
    ]

    cell_housing = "appliedenergistics2:material:39"
    recipes.append(Recipe(
        name="nexus_exp_ae2_cell_housing",
        output=cell_housing,
        is_shaped=True,
        remove_output=True,
        comment="Корпус ячейки хранения МЭ",
        pattern=[
            [iron_plate, redstone, iron_plate],
            [redstone, None, redstone],
            [steel_plate, steel_plate, steel_plate]
        ]
    ))

    for ctier, comp, cell, prev, mat_proc, side_proc, cdesc in cell_tiers:
        # Item Component
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_comp_{ctier}",
            output=comp,
            is_shaped=True,
            remove_output=True,
            comment=f"Компонент хранения {cdesc}",
            pattern=[
                [redstone, pure_certus, redstone],
                [side_proc, prev, side_proc],
                [redstone, mat_proc, redstone]
            ]
        ))
        # Item Cell assembly
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_cell_{ctier}",
            output=cell,
            is_shaped=True,
            remove_output=True,
            comment=f"Ячейка хранения {cdesc}",
            pattern=[
                [redstone, glass, redstone],
                [iron_plate, comp, iron_plate],
                [steel_plate, steel_plate, steel_plate]
            ]
        ))

    # Fluid Components & Cells
    fluid_cell_tiers = [
        ("fluid_1k", "appliedenergistics2:material:54", "appliedenergistics2:fluid_storage_cell_1k", "appliedenergistics2:material:35", "1к"),
        ("fluid_4k", "appliedenergistics2:material:55", "appliedenergistics2:fluid_storage_cell_4k", "appliedenergistics2:material:36", "4к"),
        ("fluid_16k", "appliedenergistics2:material:56", "appliedenergistics2:fluid_storage_cell_16k", "appliedenergistics2:material:37", "16к"),
        ("fluid_64k", "appliedenergistics2:material:57", "appliedenergistics2:fluid_storage_cell_64k", "appliedenergistics2:material:38", "64к")
    ]
    for ftier, fcomp, fcell, icomp, fdesc in fluid_cell_tiers:
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_comp_{ftier}",
            output=fcomp,
            is_shaped=True,
            remove_output=True,
            comment=f"Жидкостный компонент {fdesc}",
            pattern=[
                [redstone, "minecraft:bucket", redstone],
                [copper_plate, icomp, copper_plate],
                [redstone, "minecraft:bucket", redstone]
            ]
        ))
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_cell_{ftier}",
            output=fcell,
            is_shaped=True,
            remove_output=True,
            comment=f"Жидкостная ячейка хранения {fdesc}",
            pattern=[
                [redstone, glass, redstone],
                [copper_plate, fcomp, copper_plate],
                [steel_plate, steel_plate, steel_plate]
            ]
        ))

    # Spatial Storage Components & Cells (2^3, 16^3, 128^3)
    spatial_tiers = [
        ("2s", "appliedenergistics2:material:32", "appliedenergistics2:spatial_storage_cell_2_cubed", "2³"),
        ("16s", "appliedenergistics2:material:33", "appliedenergistics2:spatial_storage_cell_16_cubed", "16³"),
        ("128s", "appliedenergistics2:material:34", "appliedenergistics2:spatial_storage_cell_128_cubed", "128³")
    ]
    for stier, scomp, scell, sdesc in spatial_tiers:
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_spatial_comp_{stier}",
            output=scomp,
            is_shaped=True,
            remove_output=True,
            comment=f"Пространственный компонент хранения {sdesc}",
            pattern=[
                ["minecraft:glowstone_dust", pure_certus, "minecraft:glowstone_dust"],
                [eng_proc, "minecraft:ender_pearl", eng_proc],
                ["minecraft:glowstone_dust", pure_certus, "minecraft:glowstone_dust"]
            ]
        ))
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_spatial_cell_{stier}",
            output=scell,
            is_shaped=True,
            remove_output=True,
            comment=f"Пространственная ячейка {sdesc}",
            pattern=[
                [redstone, glass, redstone],
                [iron_plate, scomp, iron_plate],
                [steel_plate, steel_plate, steel_plate]
            ]
        ))

    # 4. CABLES IN 16 COLORS (Glass, Covered, Smart, Dense)
    dyes = [
        ("white", 0), ("orange", 1), ("magenta", 2), ("light_blue", 3),
        ("yellow", 4), ("lime", 5), ("pink", 6), ("gray", 7),
        ("light_gray", 8), ("cyan", 9), ("purple", 10), ("blue", 11),
        ("brown", 12), ("green", 13), ("red", 14), ("black", 15)
    ]
    fluix_cable = "appliedenergistics2:part:16"
    recipes.append(Recipe(
        name="nexus_exp_ae2_cable_fluix_base",
        output=f"{fluix_cable} * 4",
        is_shaped=True,
        remove_output=True,
        comment="Стеклянный МЭ кабель из изменчивого кристалла",
        pattern=[
            [glass, fluix, glass]
        ]
    ))

    for dname, meta in dyes:
        # Glass Cable
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_cable_glass_{dname}",
            output=f"appliedenergistics2:part:{meta} * 8",
            is_shaped=True,
            remove_output=True,
            comment=f"Стеклянный МЭ кабель ({dname})",
            pattern=[
                [fluix_cable, fluix_cable, fluix_cable],
                [fluix_cable, f"minecraft:dye:{15-meta}", fluix_cable],
                [fluix_cable, fluix_cable, fluix_cable]
            ]
        ))
        # Covered Cable
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_cable_covered_{dname}",
            output=f"appliedenergistics2:part:{meta + 20} * 4",
            is_shaped=True,
            remove_output=True,
            comment=f"Закрытый МЭ кабель ({dname})",
            pattern=[
                [wool, f"appliedenergistics2:part:{meta}", wool]
            ]
        ))
        # Smart Cable
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_cable_smart_{dname}",
            output=f"appliedenergistics2:part:{meta + 40} * 4",
            is_shaped=True,
            remove_output=True,
            comment=f"Умный МЭ кабель ({dname})",
            pattern=[
                [redstone, f"appliedenergistics2:part:{meta}", redstone],
                ["minecraft:glowstone_dust", f"appliedenergistics2:part:{meta}", "minecraft:glowstone_dust"]
            ]
        ))
        # Dense Cable
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_cable_dense_{dname}",
            output=f"appliedenergistics2:part:{meta + 60} * 2",
            is_shaped=True,
            remove_output=True,
            comment=f"Плотный МЭ кабель ({dname}) 32 канала",
            pattern=[
                [f"appliedenergistics2:part:{meta + 40}", f"appliedenergistics2:part:{meta + 40}"],
                [f"appliedenergistics2:part:{meta + 40}", f"appliedenergistics2:part:{meta + 40}"]
            ]
        ))

    # 5. CARDS & AUTOMATION
    cards = [
        ("capacity", "appliedenergistics2:material:27", [[None, "minecraft:hopper", None], [iron_plate, "appliedenergistics2:material:25", iron_plate], [None, None, None]], "Карта емкости"),
        ("redstone", "appliedenergistics2:material:26", [[None, "minecraft:redstone_torch", None], [iron_plate, "appliedenergistics2:material:25", iron_plate], [None, None, None]], "Редстоун карта"),
        ("acceleration", "appliedenergistics2:material:28", [[None, pure_fluix, None], [iron_plate, "appliedenergistics2:material:25", iron_plate], [None, None, None]], "Карта ускорения"),
        ("inverter", "appliedenergistics2:material:29", [[None, "minecraft:lever", None], [iron_plate, "appliedenergistics2:material:25", iron_plate], [None, None, None]], "Карта инвертора"),
        ("fuzzy", "appliedenergistics2:material:30", [[None, wool, None], [iron_plate, "appliedenergistics2:material:25", iron_plate], [None, None, None]], "Карта нечеткости (Fuzzy)"),
        ("crafting", "appliedenergistics2:material:53", [[None, "minecraft:crafting_table", None], [iron_plate, "appliedenergistics2:material:25", iron_plate], [None, None, None]], "Карта создания")
    ]
    for cid, cout, cpat, cdesc in cards:
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_card_{cid}",
            output=cout,
            is_shaped=True,
            remove_output=True,
            comment=cdesc,
            pattern=cpat
        ))

    # 6. BUSES & AUTOMATION
    buses = [
        ("import_bus", "appliedenergistics2:part:240", [[None, iron_plate, None], ["appliedenergistics2:material:44", "minecraft:piston", "appliedenergistics2:material:44"], [None, fluix_cable, None]], "МЭ Шина импорта"),
        ("export_bus", "appliedenergistics2:part:260", [[None, iron_plate, None], ["appliedenergistics2:material:43", "minecraft:piston", "appliedenergistics2:material:43"], [None, fluix_cable, None]], "МЭ Шина экспорта"),
        ("storage_bus", "appliedenergistics2:part:220", [[None, iron_plate, None], ["appliedenergistics2:part:380", "minecraft:piston", "appliedenergistics2:part:380"], [None, fluix_cable, None]], "МЭ Шина хранения"),
        ("interface", "appliedenergistics2:interface", [[iron_plate, glass, iron_plate], ["appliedenergistics2:material:44", None, "appliedenergistics2:material:43"], [iron_plate, glass, iron_plate]], "МЭ Интерфейс"),
        ("molecular_assembler", "appliedenergistics2:molecular_assembler", [[iron_plate, glass, iron_plate], ["appliedenergistics2:material:44", "minecraft:crafting_table", "appliedenergistics2:material:43"], [iron_plate, glass, iron_plate]], "Молекулярный сборщик")
    ]
    for bid, bout, bpat, bdesc in buses:
        recipes.append(Recipe(
            name=f"nexus_exp_ae2_{bid}",
            output=bout,
            is_shaped=True,
            remove_output=True,
            comment=bdesc,
            pattern=bpat
        ))

    # 7. PACKAGEDAUTO & AE2 STUFF
    recipes.append(Recipe(
        name="nexus_exp_ae2_package_crafter",
        output="packagedauto:package_crafter",
        is_shaped=True,
        remove_output=False,
        comment="Упаковочный сборщик PackagedAuto",
        pattern=[
            [iron_plate, "appliedenergistics2:molecular_assembler", iron_plate],
            [calc_proc, "appliedenergistics2:interface", calc_proc],
            [steel_plate, eng_proc, steel_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ae2_packager",
        output="packagedauto:packager",
        is_shaped=True,
        remove_output=False,
        comment="Упаковщик шаблонов PackagedAuto",
        pattern=[
            [iron_plate, "minecraft:chest", iron_plate],
            [calc_proc, "appliedenergistics2:interface", calc_proc],
            [steel_plate, eng_proc, steel_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ae2_unpackager",
        output="packagedauto:unpackager",
        is_shaped=True,
        remove_output=False,
        comment="Распаковщик PackagedAuto",
        pattern=[
            [iron_plate, "minecraft:hopper", iron_plate],
            [calc_proc, "appliedenergistics2:interface", calc_proc],
            [steel_plate, eng_proc, steel_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ae2_growth_chamber",
        output="ae2stuff:grower",
        is_shaped=True,
        remove_output=False,
        comment="Камера выращивания кристаллов AE2 Stuff",
        pattern=[
            [iron_plate, "minecraft:water_bucket", iron_plate],
            ["appliedenergistics2:quartz_growth_accelerator", "thermalexpansion:frame:0", "appliedenergistics2:quartz_growth_accelerator"],
            [iron_plate, eng_proc, iron_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ae2_adv_inscriber",
        output="ae2stuff:inscriber",
        is_shaped=True,
        remove_output=False,
        comment="Продвинутый высекатель AE2 Stuff",
        pattern=[
            [iron_plate, "minecraft:piston", iron_plate],
            [eng_proc, "appliedenergistics2:inscriber", eng_proc],
            [steel_plate, "minecraft:hopper", steel_plate]
        ]
    ))

    return recipes
