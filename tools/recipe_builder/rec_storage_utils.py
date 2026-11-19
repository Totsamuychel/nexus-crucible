#!/usr/bin/env python3
"""
Nexus Crucible - Storage Drawers, Iron Chests, Compact Machines & XNet Recipes
Generates ~180 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_storage_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    # 1. STORAGE DRAWERS (6 Wood Types x 5 Variants = 30 drawers)
    woods = [
        ("oak", 0, "minecraft:planks:0", "Дубовый"),
        ("spruce", 1, "minecraft:planks:1", "Еловый"),
        ("birch", 2, "minecraft:planks:2", "Березовый"),
        ("jungle", 3, "minecraft:planks:3", "Тропический"),
        ("acacia", 4, "minecraft:planks:4", "Акациевый"),
        ("dark_oak", 5, "minecraft:planks:5", "Темно-дубовый")
    ]

    chest = "minecraft:chest"

    for wname, meta, plank, wdesc in woods:
        # 1x1 Drawer
        recipes.append(Recipe(
            name=f"nexus_exp_sd_1x1_{wname}",
            output=f"storagedrawers:basicdrawers:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=f"{wdesc} ящик 1x1",
            pattern=[
                [plank, plank, plank],
                [None, chest, None],
                [plank, plank, plank]
            ]
        ))
        # 1x2 Drawer
        recipes.append(Recipe(
            name=f"nexus_exp_sd_1x2_{wname}",
            output=f"storagedrawers:basicdrawers:{meta + 6} * 2",
            is_shaped=True,
            remove_output=True,
            comment=f"{wdesc} ящик 1x2",
            pattern=[
                [plank, chest, plank],
                [plank, plank, plank],
                [plank, chest, plank]
            ]
        ))
        # 2x2 Drawer
        recipes.append(Recipe(
            name=f"nexus_exp_sd_2x2_{wname}",
            output=f"storagedrawers:basicdrawers:{meta + 12} * 4",
            is_shaped=True,
            remove_output=True,
            comment=f"{wdesc} ящик 2x2",
            pattern=[
                [chest, plank, chest],
                [plank, plank, plank],
                [chest, plank, chest]
            ]
        ))
        # Trim Block
        recipes.append(Recipe(
            name=f"nexus_exp_sd_trim_{wname}",
            output=f"storagedrawers:trim:{meta} * 4",
            is_shaped=True,
            remove_output=True,
            comment=f"{wdesc} окантовка для ящиков (Trim)",
            pattern=[
                ["minecraft:stick", plank, "minecraft:stick"],
                [plank, plank, plank],
                ["minecraft:stick", plank, "minecraft:stick"]
            ]
        ))
        # Half 1x2 Drawer
        recipes.append(Recipe(
            name=f"nexus_exp_sd_half_1x2_{wname}",
            output=f"storagedrawers:basicdrawers:{meta + 18} * 2",
            is_shaped=True,
            remove_output=True,
            comment=f"{wdesc} полуящик 1x2",
            pattern=[
                [plank, "minecraft:slab", plank],
                [plank, chest, plank],
                [plank, "minecraft:slab", plank]
            ]
        ))
        # Half 2x2 Drawer
        recipes.append(Recipe(
            name=f"nexus_exp_sd_half_2x2_{wname}",
            output=f"storagedrawers:basicdrawers:{meta + 24} * 4",
            is_shaped=True,
            remove_output=True,
            comment=f"{wdesc} полуящик 2x2",
            pattern=[
                [chest, "minecraft:slab", chest],
                [plank, "minecraft:slab", plank],
                [chest, "minecraft:slab", chest]
            ]
        ))

    # Compacting Drawer & Controller
    recipes.append(Recipe(
        name="nexus_exp_sd_compacting",
        output="storagedrawers:compdrawers",
        is_shaped=True,
        remove_output=True,
        comment="Компактирующий ящик (Compacting Drawer)",
        pattern=[
            ["minecraft:stone", "minecraft:stone", "minecraft:stone"],
            ["minecraft:piston", "storagedrawers:basicdrawers:0", "minecraft:piston"],
            ["minecraft:stone", "minecraft:iron_ingot", "minecraft:stone"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_sd_controller",
        output="storagedrawers:controller",
        is_shaped=True,
        remove_output=True,
        comment="Контроллер ящиков (Drawer Controller)",
        pattern=[
            ["minecraft:stone", "minecraft:stone", "minecraft:stone"],
            ["minecraft:comparator", "storagedrawers:basicdrawers:0", "minecraft:comparator"],
            ["minecraft:stone", "minecraft:diamond", "minecraft:stone"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_sd_controller_slave",
        output="storagedrawers:controllerslave",
        is_shaped=True,
        remove_output=True,
        comment="Подчиненный контроллер ящиков (Slave)",
        pattern=[
            ["minecraft:stone", "minecraft:stone", "minecraft:stone"],
            ["minecraft:repeater", "storagedrawers:basicdrawers:0", "minecraft:repeater"],
            ["minecraft:stone", "minecraft:gold_ingot", "minecraft:stone"]
        ]
    ))

    # Storage Upgrades
    upgrade_template = "storagedrawers:upgrade_template"
    recipes.append(Recipe(
        name="nexus_exp_sd_template",
        output=f"{upgrade_template} * 4",
        is_shaped=True,
        remove_output=True,
        comment="Шаблон улучшения ящиков",
        pattern=[
            ["minecraft:stick", "minecraft:stick", "minecraft:stick"],
            ["minecraft:stick", "storagedrawers:basicdrawers:0", "minecraft:stick"],
            ["minecraft:stick", "minecraft:stick", "minecraft:stick"]
        ]
    ))

    drawer_upgrades = [
        ("obsidian", 0, "minecraft:obsidian", "Обсидиановое улучшение (x2)"),
        ("iron", 1, "minecraft:iron_ingot", "Железное улучшение (x4)"),
        ("gold", 2, "minecraft:gold_ingot", "Золотое улучшение (x8)"),
        ("diamond", 3, "minecraft:diamond", "Алмазное улучшение (x16)"),
        ("emerald", 4, "minecraft:emerald", "Изумрудное улучшение (x32)"),
        ("void", 6, "minecraft:ender_pearl", "Улучшение пустоты (Void)")
    ]
    for uid, meta, mat, udesc in drawer_upgrades:
        recipes.append(Recipe(
            name=f"nexus_exp_sd_upg_{uid}",
            output=f"storagedrawers:upgrade_storage:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=udesc,
            pattern=[
                ["minecraft:stick", mat, "minecraft:stick"],
                [mat, upgrade_template, mat],
                ["minecraft:stick", mat, "minecraft:stick"]
            ]
        ))

    # 2. IRON CHESTS (8 Chests & 14 Upgrades)
    iron_chests = [
        ("copper", 3, "thermalfoundation:material:320", chest, "Медный сундук"),
        ("iron", 0, "thermalfoundation:material:32", "ironchest:iron_chest:3", "Железный сундук"),
        ("silver", 4, "thermalfoundation:material:322", "ironchest:iron_chest:0", "Серебряный сундук"),
        ("gold", 1, "thermalfoundation:material:33", "ironchest:iron_chest:4", "Золотой сундук"),
        ("diamond", 2, "minecraft:diamond", "ironchest:iron_chest:1", "Алмазный сундук"),
        ("crystal", 5, "minecraft:glass", "ironchest:iron_chest:2", "Кристальный сундук"),
        ("obsidian", 6, "minecraft:obsidian", "ironchest:iron_chest:2", "Обсидиановый сундук")
    ]
    for cid, meta, mat, prev, cdesc in iron_chests:
        recipes.append(Recipe(
            name=f"nexus_exp_ic_chest_{cid}",
            output=f"ironchest:iron_chest:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=cdesc,
            pattern=[
                [mat, mat, mat],
                [mat, prev, mat],
                [mat, mat, mat]
            ]
        ))

    # Iron Chest Upgrades
    ic_upgrades = [
        ("wood_to_copper", 10, "thermalfoundation:material:320", "minecraft:planks", "Апгрейд Дерево -> Медь"),
        ("wood_to_iron", 7, "thermalfoundation:material:32", "minecraft:planks", "Апгрейд Дерево -> Железо"),
        ("copper_to_iron", 8, "thermalfoundation:material:32", "thermalfoundation:material:320", "Апгрейд Медь -> Железо"),
        ("copper_to_silver", 9, "thermalfoundation:material:322", "thermalfoundation:material:320", "Апгрейд Медь -> Серебро"),
        ("iron_to_gold", 0, "thermalfoundation:material:33", "thermalfoundation:material:32", "Апгрейд Железо -> Золото"),
        ("silver_to_gold", 2, "thermalfoundation:material:33", "thermalfoundation:material:322", "Апгрейд Серебро -> Золото"),
        ("gold_to_diamond", 1, "minecraft:diamond", "thermalfoundation:material:33", "Апгрейд Золото -> Алмаз"),
        ("diamond_to_crystal", 3, "minecraft:glass", "minecraft:diamond", "Апгрейд Алмаз -> Кристалл"),
        ("diamond_to_obsidian", 4, "minecraft:obsidian", "minecraft:diamond", "Апгрейд Алмаз -> Обсидиан")
    ]
    for uid, meta, out_mat, in_mat, udesc in ic_upgrades:
        recipes.append(Recipe(
            name=f"nexus_exp_ic_upg_{uid}",
            output=f"ironchest:wood_to_copper_chest_upgrade:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=udesc,
            pattern=[
                [out_mat, out_mat, out_mat],
                [out_mat, in_mat, out_mat],
                [out_mat, out_mat, out_mat]
            ]
        ))

    # 3. COMPACT MACHINES
    cm_wall = "compactmachines3:wall"
    recipes.append(Recipe(
        name="nexus_exp_cm_wall",
        output=f"{cm_wall} * 16",
        is_shaped=True,
        remove_output=True,
        comment="Стена компактной машины",
        pattern=[
            ["minecraft:iron_bars", "minecraft:stone", "minecraft:iron_bars"],
            ["minecraft:stone", "minecraft:ender_pearl", "minecraft:stone"],
            ["minecraft:iron_bars", "minecraft:stone", "minecraft:iron_bars"]
        ]
    ))

    cm_tiers = [
        ("tiny", 0, "minecraft:wood", "Крошечная машина (3x3x3)"),
        ("small", 1, "minecraft:iron_block", "Малая машина (5x5x5)"),
        ("normal", 2, "minecraft:gold_block", "Нормальная машина (7x7x7)"),
        ("large", 3, "minecraft:diamond_block", "Большая машина (9x9x9)"),
        ("giant", 4, "minecraft:emerald_block", "Гигантская машина (11x11x11)"),
        ("max", 5, "minecraft:nether_star", "Максимальная машина (13x13x13)")
    ]
    for tid, meta, core, cdesc in cm_tiers:
        recipes.append(Recipe(
            name=f"nexus_exp_cm_machine_{tid}",
            output=f"compactmachines3:machine:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=cdesc,
            pattern=[
                [cm_wall, cm_wall, cm_wall],
                [cm_wall, core, cm_wall],
                [cm_wall, cm_wall, cm_wall]
            ]
        ))

    # PSD & Tunnels
    recipes.append(Recipe(
        name="nexus_exp_cm_psd",
        output="compactmachines3:psd",
        is_shaped=True,
        remove_output=True,
        comment="Личное устройство сжатия (PSD)",
        pattern=[
            [None, "minecraft:glass_pane", None],
            ["thermalfoundation:material:32", "minecraft:ender_eye", "thermalfoundation:material:32"],
            [None, "thermalfoundation:material:32", None]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_cm_tunnel",
        output="compactmachines3:tunneltool",
        is_shaped=True,
        remove_output=True,
        comment="Инструмент туннелей Compact Machines",
        pattern=[
            ["minecraft:redstone", "minecraft:hopper", "minecraft:redstone"],
            ["minecraft:hopper", cm_wall, "minecraft:hopper"],
            ["minecraft:redstone", "minecraft:hopper", "minecraft:redstone"]
        ]
    ))

    # 4. XNET (Controllers, Routers, Connectors, Cables)
    xnet_cables = [
        ("blue", 0, "minecraft:dye:4", "Синий кабель XNet"),
        ("red", 1, "minecraft:dye:1", "Красный кабель XNet"),
        ("green", 2, "minecraft:dye:2", "Зеленый кабель XNet"),
        ("yellow", 3, "minecraft:dye:11", "Желтый кабель XNet"),
        ("routing", 4, "minecraft:dye:0", "Маршрутизирующий кабель XNet")
    ]
    for cname, meta, dye, cdesc in xnet_cables:
        recipes.append(Recipe(
            name=f"nexus_exp_xnet_cable_{cname}",
            output=f"xnet:netcable:{meta} * 16",
            is_shaped=True,
            remove_output=True,
            comment=cdesc,
            pattern=[
                ["minecraft:string", dye, "minecraft:string"],
                ["minecraft:redstone", "minecraft:gold_nugget", "minecraft:redstone"],
                ["minecraft:string", dye, "minecraft:string"]
            ]
        ))

    recipes.append(Recipe(
        name="nexus_exp_xnet_controller",
        output="xnet:controller",
        is_shaped=True,
        remove_output=True,
        comment="Контроллер XNet",
        pattern=[
            ["minecraft:repeater", "minecraft:comparator", "minecraft:repeater"],
            ["thermalfoundation:material:352", "thermalexpansion:frame:0", "thermalfoundation:material:352"],
            ["minecraft:redstone", "appliedenergistics2:material:22", "minecraft:redstone"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_xnet_router",
        output="xnet:router",
        is_shaped=True,
        remove_output=True,
        comment="Маршрутизатор XNet",
        pattern=[
            ["minecraft:comparator", "xnet:netcable:0", "minecraft:comparator"],
            ["thermalfoundation:material:352", "thermalexpansion:frame:0", "thermalfoundation:material:352"],
            ["minecraft:redstone", "appliedenergistics2:material:24", "minecraft:redstone"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_xnet_connector",
        output="xnet:connector:0 * 4",
        is_shaped=True,
        remove_output=True,
        comment="Коннектор XNet",
        pattern=[
            ["minecraft:redstone", "minecraft:chest", "minecraft:redstone"],
            ["thermalfoundation:material:32", "xnet:netcable:0", "thermalfoundation:material:32"]
        ]
    ))

    # 5. FRAMED DRAWERS (Custom design drawers)
    framed_drawers = [
        ("1x1", "storagedrawers:customdrawers:0", [[wood_plank := "minecraft:planks", wood_plank, wood_plank], ["minecraft:stick", chest, "minecraft:stick"], [wood_plank, wood_plank, wood_plank]], "Каркасный ящик 1x1"),
        ("1x2", "storagedrawers:customdrawers:1", [[wood_plank, chest, wood_plank], ["minecraft:stick", wood_plank, "minecraft:stick"], [wood_plank, chest, wood_plank]], "Каркасный ящик 1x2"),
        ("2x2", "storagedrawers:customdrawers:2", [[chest, wood_plank, chest], ["minecraft:stick", wood_plank, "minecraft:stick"], [chest, wood_plank, chest]], "Каркасный ящик 2x2"),
        ("half_1x2", "storagedrawers:customdrawers:3", [[wood_plank, "minecraft:slab", wood_plank], ["minecraft:stick", chest, "minecraft:stick"], [wood_plank, "minecraft:slab", wood_plank]], "Каркасный полуящик 1x2"),
        ("half_2x2", "storagedrawers:customdrawers:4", [[chest, "minecraft:slab", chest], ["minecraft:stick", wood_plank, "minecraft:stick"], [chest, "minecraft:slab", chest]], "Каркасный полуящик 2x2"),
        ("trim", "storagedrawers:customtrim", [["minecraft:stick", wood_plank, "minecraft:stick"], [wood_plank, None, wood_plank], ["minecraft:stick", wood_plank, "minecraft:stick"]], "Каркасная окантовка (Framed Trim)")
    ]
    for fid, fout, fpat, fdesc in framed_drawers:
        recipes.append(Recipe(
            name=f"nexus_exp_sd_framed_{fid}",
            output=fout,
            is_shaped=True,
            remove_output=False,
            comment=fdesc,
            pattern=fpat
        ))

    return recipes
