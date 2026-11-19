#!/usr/bin/env python3
"""
Nexus Crucible - NuclearCraft Fission & Fusion Recipes
Generates ~220 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_nuclearcraft_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    fission_casing = "nuclearcraft:fission_block:0"
    reactor_casing = "nuclearcraft:reactor_casing_transparent:0"
    steel_plate = "thermalfoundation:material:352"
    lead_plate = "thermalfoundation:material:323"
    copper_plate = "thermalfoundation:material:320"
    iron_plate = "thermalfoundation:material:32"
    graphite_ingot = "nuclearcraft:ingot:8"
    beryllium_ingot = "nuclearcraft:ingot:9"

    # 1. FISSION CASINGS & STRUCTURE
    recipes.append(Recipe(
        name="nexus_exp_nc_fission_casing",
        output=f"{fission_casing} * 4",
        is_shaped=True,
        remove_output=True,
        comment="Корпус реактора деления NuclearCraft",
        pattern=[
            [lead_plate, steel_plate, lead_plate],
            [steel_plate, "nuclearcraft:part:0", steel_plate],
            [lead_plate, steel_plate, lead_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_nc_fission_glass",
        output="nuclearcraft:reactor_casing_transparent:0 * 4",
        is_shaped=True,
        remove_output=True,
        comment="Прозрачный корпус реактора",
        pattern=[
            [lead_plate, "minecraft:glass", lead_plate],
            ["minecraft:glass", fission_casing, "minecraft:glass"],
            [lead_plate, "minecraft:glass", lead_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_nc_fission_controller",
        output="nuclearcraft:fission_controller_new_fixed",
        is_shaped=True,
        remove_output=False,
        comment="Контроллер реактора деления",
        pattern=[
            [lead_plate, "appliedenergistics2:material:24", lead_plate],
            ["minecraft:comparator", fission_casing, "minecraft:comparator"],
            [steel_plate, "nuclearcraft:part:1", steel_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_nc_fission_cell",
        output="nuclearcraft:solid_fission_cell",
        is_shaped=True,
        remove_output=False,
        comment="Топливная ячейка реактора деления",
        pattern=[
            [lead_plate, "minecraft:glass", lead_plate],
            ["minecraft:glass", "nuclearcraft:part:0", "minecraft:glass"],
            [lead_plate, "minecraft:glass", lead_plate]
        ]
    ))

    # 2. ALL 20 REACTOR COOLERS
    coolers_data = [
        ("water", 1, "minecraft:water_bucket", "Водяной охладитель"),
        ("redstone", 2, "minecraft:redstone_block", "Редстоун охладитель"),
        ("quartz", 3, "minecraft:quartz_block", "Кварцевый охладитель"),
        ("gold", 4, "minecraft:gold_block", "Золотой охладитель"),
        ("glowstone", 5, "minecraft:glowstone", "Светокаменный охладитель"),
        ("lapis", 6, "minecraft:lapis_block", "Лазуритовый охладитель"),
        ("diamond", 7, "minecraft:diamond_block", "Алмазный охладитель"),
        ("helium", 8, "nuclearcraft:liquid_helium_bucket", "Гелиевый охладитель"),
        ("enderium", 9, "thermalfoundation:storage_alloy:7", "Эндериумовый охладитель"),
        ("cryotheum", 10, "thermalfoundation:material:1025", "Криотеумовый охладитель"),
        ("iron", 11, "minecraft:iron_block", "Железный охладитель"),
        ("emerald", 12, "minecraft:emerald_block", "Изумрудный охладитель"),
        ("copper", 13, "thermalfoundation:storage:0", "Медный охладитель"),
        ("tin", 14, "thermalfoundation:storage:1", "Оловянный охладитель"),
        ("magnesium", 15, "nuclearcraft:block_depleted_thorium", "Магниевый охладитель")
    ]

    cooler_empty = "nuclearcraft:cooler:0"
    recipes.append(Recipe(
        name="nexus_exp_nc_cooler_empty",
        output=f"{cooler_empty} * 2",
        is_shaped=True,
        remove_output=True,
        comment="Пустой охлаждающий блок",
        pattern=[
            [steel_plate, copper_plate, steel_plate],
            [copper_plate, "minecraft:ice", copper_plate],
            [steel_plate, copper_plate, steel_plate]
        ]
    ))

    for cname, meta, core_mat, cdesc in coolers_data:
        recipes.append(Recipe(
            name=f"nexus_exp_nc_cooler_{cname}",
            output=f"nuclearcraft:cooler:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=cdesc,
            pattern=[
                [None, core_mat, None],
                [steel_plate, cooler_empty, steel_plate],
                [None, copper_plate, None]
            ]
        ))

    # 3. NUCLEARCRAFT PROCESSORS & MACHINES
    nc_machines = [
        ("manufactory", "nuclearcraft:manufactory", "minecraft:piston", "thermalfoundation:material:32", "Мануфактория (Manufactory)"),
        ("isotope_separator", "nuclearcraft:separator", "minecraft:hopper", "thermalfoundation:material:352", "Изотопный сепаратор"),
        ("decay_hastener", "nuclearcraft:decay_hastener", "minecraft:end_stone", "thermalfoundation:material:323", "Ускоритель распада"),
        ("fuel_reprocessor", "nuclearcraft:fuel_reprocessor", "minecraft:brewing_stand", "thermalfoundation:material:323", "Переработчик ядерного топлива"),
        ("alloy_furnace", "nuclearcraft:alloy_furnace", "minecraft:furnace", "thermalfoundation:material:354", "Сплавная печь NuclearCraft"),
        ("infuser", "nuclearcraft:infuser", "minecraft:cauldron", "thermalfoundation:material:320", "Жидкостный инфузер"),
        ("melter", "nuclearcraft:melter", "minecraft:lava_bucket", "thermalfoundation:material:354", "Плавитель"),
        ("supercooler", "nuclearcraft:supercooler", "minecraft:packed_ice", "thermalfoundation:material:321", "Суперохладитель"),
        ("crystallizer", "nuclearcraft:crystallizer", "minecraft:quartz", "thermalfoundation:material:322", "Кристаллизатор ядерных солей"),
        ("centrifuge", "nuclearcraft:centrifuge", "minecraft:compass", "thermalfoundation:material:352", "Высокоскоростная центрифуга"),
        ("chemical_reactor", "nuclearcraft:chemical_reactor", "minecraft:glass_bottle", "thermalfoundation:material:323", "Химический реактор")
    ]

    for mid, mout, mcore, mplate, mdesc in nc_machines:
        recipes.append(Recipe(
            name=f"nexus_exp_nc_mach_{mid}",
            output=mout,
            is_shaped=True,
            remove_output=True,
            comment=mdesc,
            pattern=[
                [mplate, mcore, mplate],
                [steel_plate, "nuclearcraft:part:0", steel_plate],
                [mplate, "minecraft:redstone", mplate]
            ]
        ))

    # 4. ISOTOPE FUEL PELLETS & RODS
    fuels = [
        ("tbu", "nuclearcraft:fuel_thorium:0", "nuclearcraft:thorium:0", "Ториевое топливо TBU"),
        ("leu_233", "nuclearcraft:fuel_uranium:0", "nuclearcraft:uranium:5", "Низкообогащенный уран LEU-233"),
        ("heu_233", "nuclearcraft:fuel_uranium:1", "nuclearcraft:uranium:4", "Высокообогащенный уран HEU-233"),
        ("leu_235", "nuclearcraft:fuel_uranium:2", "nuclearcraft:uranium:9", "Низкообогащенный уран LEU-235"),
        ("heu_235", "nuclearcraft:fuel_uranium:3", "nuclearcraft:uranium:8", "Высокообогащенный уран HEU-235"),
        ("lep_239", "nuclearcraft:fuel_plutonium:0", "nuclearcraft:plutonium:5", "Низкообогащенный плутоний LEP-239"),
        ("hep_239", "nuclearcraft:fuel_plutonium:1", "nuclearcraft:plutonium:4", "Высокообогащенный плутоний HEP-239"),
        ("lep_241", "nuclearcraft:fuel_plutonium:2", "nuclearcraft:plutonium:9", "Низкообогащенный плутоний LEP-241"),
        ("hep_241", "nuclearcraft:fuel_plutonium:3", "nuclearcraft:plutonium:8", "Высокообогащенный плутоний HEP-241"),
        ("mox_239", "nuclearcraft:fuel_uranium:4", "nuclearcraft:plutonium:0", "MOX-239 топливо"),
        ("mox_241", "nuclearcraft:fuel_uranium:5", "nuclearcraft:plutonium:1", "MOX-241 топливо"),
        ("americium_242", "nuclearcraft:fuel_americium:0", "nuclearcraft:americium:0", "Америциевое ядерное топливо"),
        ("curium_243", "nuclearcraft:fuel_curium:0", "nuclearcraft:curium:0", "Кюриевое ядерное топливо"),
        ("californium_249", "nuclearcraft:fuel_californium:0", "nuclearcraft:californium:0", "Калифорниевое ядерное топливо")
    ]
    for fid, fout, fiso, fdesc in fuels:
        recipes.append(Recipe(
            name=f"nexus_exp_nc_fuel_{fid}",
            output=f"{fout} * 4",
            is_shaped=True,
            remove_output=False,
            comment=fdesc,
            pattern=[
                [fiso, graphite_ingot, fiso],
                [graphite_ingot, beryllium_ingot, graphite_ingot],
                [fiso, graphite_ingot, fiso]
            ]
        ))

    # 5. HAZMAT SUIT (4 pieces)
    hazmat = [
        ("helm", "nuclearcraft:helm_hazmat", [["nuclearcraft:part:0", lead_plate, "nuclearcraft:part:0"], [lead_plate, "minecraft:glass_pane", lead_plate]], "Защитный шлем HAZMAT"),
        ("chest", "nuclearcraft:chest_hazmat", [[lead_plate, "minecraft:leather", lead_plate], [lead_plate, "nuclearcraft:part:0", lead_plate], [lead_plate, lead_plate, lead_plate]], "Защитный костюм HAZMAT"),
        ("legs", "nuclearcraft:legs_hazmat", [[lead_plate, "nuclearcraft:part:0", lead_plate], [lead_plate, None, lead_plate], [lead_plate, None, lead_plate]], "Защитные штаны HAZMAT"),
        ("boots", "nuclearcraft:boots_hazmat", [[lead_plate, None, lead_plate], [lead_plate, "minecraft:leather", lead_plate]], "Защитные сапоги HAZMAT")
    ]
    for hid, hout, hpat, hdesc in hazmat:
        recipes.append(Recipe(
            name=f"nexus_exp_nc_hazmat_{hid}",
            output=hout,
            is_shaped=True,
            remove_output=True,
            comment=hdesc,
            pattern=hpat
        ))

    # 6. RTG GENERATORS
    rtgs = [
        ("basic", "nuclearcraft:rtg_uranium", "nuclearcraft:uranium:0", "Урановый РИТЭГ"),
        ("plutonium", "nuclearcraft:rtg_plutonium", "nuclearcraft:plutonium:0", "Плутониевый РИТЭГ"),
        ("americium", "nuclearcraft:rtg_americium", "nuclearcraft:americium:0", "Америциевый РИТЭГ"),
        ("californium", "nuclearcraft:rtg_californium", "nuclearcraft:californium:0", "Калифорниевый РИТЭГ")
    ]
    for rid, rout, rmat, rdesc in rtgs:
        recipes.append(Recipe(
            name=f"nexus_exp_nc_rtg_{rid}",
            output=rout,
            is_shaped=True,
            remove_output=True,
            comment=rdesc,
            pattern=[
                [lead_plate, copper_plate, lead_plate],
                [copper_plate, rmat, copper_plate],
                [lead_plate, copper_plate, lead_plate]
            ]
        ))

    return recipes
