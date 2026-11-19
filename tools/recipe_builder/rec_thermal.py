#!/usr/bin/env python3
"""
Nexus Crucible - Thermal Expansion, Dynamics & Redstone Arsenal Recipes
Generates ~230 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_thermal_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    frame = "thermalexpansion:frame:0"
    coil_reception = "thermalfoundation:material:512"
    coil_transmission = "thermalfoundation:material:513"
    copper_gear = "thermalfoundation:material:256"
    invar_gear = "thermalfoundation:material:290"
    steel_gear = "thermalfoundation:material:288"
    electrum_gear = "thermalfoundation:material:289"
    enderium_gear = "thermalfoundation:material:295"
    gold_gear = "thermalfoundation:material:25"
    silver_gear = "thermalfoundation:material:258"
    signalum_gear = "thermalfoundation:material:293"
    lumium_gear = "thermalfoundation:material:294"

    # 1. DYNAMOS (Basic tier)
    dynamos = [
        ("steam", "thermalexpansion:dynamo:0", copper_gear, "minecraft:furnace"),
        ("magmatic", "thermalexpansion:dynamo:1", invar_gear, "minecraft:iron_ingot"),
        ("compression", "thermalexpansion:dynamo:2", steel_gear, "minecraft:piston"),
        ("reactant", "thermalexpansion:dynamo:3", electrum_gear, "minecraft:potion"),
        ("enervation", "thermalexpansion:dynamo:4", gold_gear, "minecraft:redstone"),
        ("numismatic", "thermalexpansion:dynamo:5", silver_gear, "minecraft:gold_ingot")
    ]

    for dname, out_item, gear, spec in dynamos:
        recipes.append(Recipe(
            name=f"nexus_exp_te_dynamo_{dname}",
            output=out_item,
            is_shaped=True,
            remove_output=True,
            comment=f"Динамо-генератор: {dname}",
            pattern=[
                [None, coil_transmission, None],
                [gear, "thermalfoundation:material:160", gear],
                ["minecraft:brick", spec, "minecraft:brick"]
            ]
        ))

    # 2. MACHINES (Expert Recipes: 14 machines)
    machines = [
        ("furnace", "thermalexpansion:machine:0", copper_gear, "minecraft:furnace", "thermalfoundation:material:32"),
        ("pulverizer", "thermalexpansion:machine:1", copper_gear, "minecraft:piston", "minecraft:flint"),
        ("sawmill", "thermalexpansion:machine:2", copper_gear, "minecraft:iron_axe", "thermalfoundation:material:320"),
        ("smelter", "thermalexpansion:machine:3", invar_gear, "minecraft:furnace", "thermalfoundation:material:354"),
        ("compactor", "thermalexpansion:machine:5", steel_gear, "minecraft:piston", "thermalfoundation:material:352"),
        ("crucible", "thermalexpansion:machine:6", invar_gear, "minecraft:cauldron", "thermalfoundation:material:1024"),
        ("refinery", "thermalexpansion:machine:7", steel_gear, "minecraft:glass", "thermalfoundation:material:352"),
        ("transposer", "thermalexpansion:machine:8", invar_gear, "minecraft:bucket", "thermalfoundation:material:354"),
        ("centrifuge", "thermalexpansion:machine:10", copper_gear, "minecraft:compass", "thermalfoundation:material:320"),
        ("crafter", "thermalexpansion:machine:11", electrum_gear, "minecraft:crafting_table", "thermalfoundation:material:353"),
        ("brewer", "thermalexpansion:machine:12", silver_gear, "minecraft:brewing_stand", "thermalfoundation:material:322"),
        ("enchanter", "thermalexpansion:machine:13", gold_gear, "minecraft:book", "thermalfoundation:material:33"),
        ("precipitator", "thermalexpansion:machine:14", copper_gear, "minecraft:snowball", "thermalfoundation:material:320"),
        ("extruder", "thermalexpansion:machine:15", invar_gear, "minecraft:piston", "thermalfoundation:material:354")
    ]

    for mname, mitem, gear, core_part, casing_mat in machines:
        recipes.append(Recipe(
            name=f"nexus_exp_te_mach_{mname}",
            output=mitem,
            is_shaped=True,
            remove_output=True,
            comment=f"Механизм Thermal: {mname}",
            pattern=[
                [None, core_part, None],
                [casing_mat, frame, casing_mat],
                [gear, coil_reception, gear]
            ]
        ))

    # 3. DIRECT TIER UPGRADES FOR MACHINES (Hardened, Reinforced, Signalum, Resonant)
    tiers_m = [
        ("hardened", "thermalfoundation:material:354", "thermalfoundation:material:256"),
        ("reinforced", "thermalfoundation:material:353", "thermalfoundation:material:290"),
        ("signalum", "thermalfoundation:material:357", "thermalfoundation:material:289"),
        ("resonant", "thermalfoundation:material:359", "thermalfoundation:material:293"),
    ]
    for mname, mitem, gear, core_part, casing_mat in machines:
        for tname, plate, tgear in tiers_m:
            recipes.append(Recipe(
                name=f"nexus_exp_te_mach_{mname}_{tname}",
                output=mitem,
                is_shaped=True,
                remove_output=False,
                comment=f"Модернизация {mname} до уровня {tname}",
                pattern=[
                    [plate, tgear, plate],
                    [plate, mitem, plate],
                    [plate, coil_reception, plate]
                ]
            ))

    # 4. UPGRADE KITS (Hardened, Reinforced, Signalum, Resonant)
    upgrade_kits = [
        ("hardened", "thermalfoundation:upgrade:0", "thermalfoundation:material:162", "thermalfoundation:material:354", "thermalfoundation:material:256"),
        ("reinforced", "thermalfoundation:upgrade:1", "thermalfoundation:material:161", "thermalfoundation:material:353", "thermalfoundation:material:290"),
        ("signalum", "thermalfoundation:upgrade:2", "thermalfoundation:material:165", "thermalfoundation:material:357", "thermalfoundation:material:289"),
        ("resonant", "thermalfoundation:upgrade:3", "thermalfoundation:material:167", "thermalfoundation:material:359", "thermalfoundation:material:293"),
    ]

    for uname, uitem, ingot, plate, gear in upgrade_kits:
        recipes.append(Recipe(
            name=f"nexus_exp_te_kit_{uname}",
            output=uitem,
            is_shaped=True,
            remove_output=True,
            comment=f"Комплект улучшения механизма: {uname}",
            pattern=[
                [plate, ingot, plate],
                [ingot, gear, ingot],
                [plate, ingot, plate]
            ]
        ))

    # Conversion Upgrade Kits
    conv_kits = [
        ("base_to_reinforced", "thermalfoundation:upgrade:33", "thermalfoundation:upgrade:0", "thermalfoundation:upgrade:1"),
        ("base_to_signalum", "thermalfoundation:upgrade:34", "thermalfoundation:upgrade:1", "thermalfoundation:upgrade:2"),
        ("base_to_resonant", "thermalfoundation:upgrade:35", "thermalfoundation:upgrade:2", "thermalfoundation:upgrade:3")
    ]
    for cname, citem, k1, k2 in conv_kits:
        recipes.append(Recipe(
            name=f"nexus_exp_te_conv_{cname}",
            output=citem,
            is_shaped=True,
            remove_output=True,
            comment=f"Конверсионный комплект улучшения: {cname}",
            pattern=[
                [None, k1, None],
                [k2, "minecraft:ender_pearl", k2],
                [None, k1, None]
            ]
        ))

    # 5. THERMAL AUGMENTS (20 augments)
    augments = [
        ("auxiliary_reception", 128, coil_reception, "thermalfoundation:material:354"),
        ("flux_concentrator", 129, coil_transmission, "thermalfoundation:material:353"),
        ("space_time_flux", 130, coil_reception, "thermalfoundation:material:359"),
        ("auxiliary_sieve", 256, "minecraft:iron_bars", "thermalfoundation:material:320"),
        ("pyroclastic_injection", 257, "minecraft:blaze_powder", "thermalfoundation:material:354"),
        ("cryotheum_coolant", 258, "thermalfoundation:material:1025", "thermalfoundation:material:358"),
        ("boiler_conversion", 576, "minecraft:bucket", "thermalfoundation:material:352"),
        ("turbine_conversion", 640, "thermalfoundation:material:288", "thermalfoundation:material:352"),
        ("isothermal_lamp", 656, "minecraft:glowstone_dust", "thermalfoundation:material:358"),
        ("motive_drive", 672, "minecraft:piston", "thermalfoundation:material:353"),
        ("gearbox_reduction", 688, copper_gear, "thermalfoundation:material:354"),
        ("feed_regulator", 704, "minecraft:hopper", "thermalfoundation:material:32"),
        ("fluid_tank_expansion", 400, "minecraft:glass", "thermalfoundation:material:320"),
        ("closed_loop_cooling", 401, "minecraft:ice", "thermalfoundation:material:321")
    ]

    for aname, meta, mat1, mat2 in augments:
        recipes.append(Recipe(
            name=f"nexus_exp_te_augment_{aname}",
            output=f"thermalexpansion:augment:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=f"Улучшение Thermal: {aname}",
            pattern=[
                [None, mat1, None],
                [mat2, "thermalfoundation:material:32", mat2],
                [None, mat1, None]
            ]
        ))

    # 6. THERMAL DYNAMICS DUCTS (Item, Fluid, Flux, Structural)
    # Itemducts
    recipes.append(Recipe(
        name="nexus_exp_te_duct_item_basic",
        output="thermaldynamics:duct_32:0 * 6",
        is_shaped=True,
        remove_output=True,
        comment="Труба для предметов (Itemduct)",
        pattern=[
            ["thermalfoundation:material:321", "minecraft:glass", "thermalfoundation:material:321"],
            ["minecraft:glass", None, "minecraft:glass"],
            ["thermalfoundation:material:321", "minecraft:glass", "thermalfoundation:material:321"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_te_duct_item_opaque",
        output="thermaldynamics:duct_32:1 * 6",
        is_shaped=True,
        remove_output=True,
        comment="Непрозрачная труба для предметов",
        pattern=[
            ["thermalfoundation:material:321", "thermalfoundation:material:323", "thermalfoundation:material:321"],
            ["thermalfoundation:material:323", None, "thermalfoundation:material:323"],
            ["thermalfoundation:material:321", "thermalfoundation:material:323", "thermalfoundation:material:321"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_te_duct_item_impulse",
        output="thermaldynamics:duct_32:2 * 6",
        is_shaped=True,
        remove_output=True,
        comment="Импульсная труба для предметов",
        pattern=[
            ["thermalfoundation:material:358", "minecraft:glowstone_dust", "thermalfoundation:material:358"],
            ["minecraft:glowstone_dust", "thermaldynamics:duct_32:0", "minecraft:glowstone_dust"],
            ["thermalfoundation:material:358", "minecraft:glowstone_dust", "thermalfoundation:material:358"]
        ]
    ))

    # Fluiducts
    recipes.append(Recipe(
        name="nexus_exp_te_duct_fluid_basic",
        output="thermaldynamics:duct_16:0 * 6",
        is_shaped=True,
        remove_output=True,
        comment="Жидкостная труба (Fluiduct)",
        pattern=[
            ["thermalfoundation:material:320", "minecraft:glass", "thermalfoundation:material:320"],
            ["minecraft:glass", None, "minecraft:glass"],
            ["thermalfoundation:material:320", "minecraft:glass", "thermalfoundation:material:320"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_te_duct_fluid_hardened",
        output="thermaldynamics:duct_16:2 * 6",
        is_shaped=True,
        remove_output=True,
        comment="Укрепленная жидкостная труба",
        pattern=[
            ["thermalfoundation:material:354", "minecraft:glass", "thermalfoundation:material:354"],
            ["minecraft:glass", "thermaldynamics:duct_16:0", "minecraft:glass"],
            ["thermalfoundation:material:354", "minecraft:glass", "thermalfoundation:material:354"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_te_duct_fluid_superlaminar",
        output="thermaldynamics:duct_16:6 * 6",
        is_shaped=True,
        remove_output=True,
        comment="Сверхламинарная жидкостная труба",
        pattern=[
            ["thermalfoundation:material:357", "minecraft:glass", "thermalfoundation:material:357"],
            ["minecraft:glass", "thermaldynamics:duct_16:2", "minecraft:glass"],
            ["thermalfoundation:material:357", "minecraft:glass", "thermalfoundation:material:357"]
        ]
    ))

    # Fluxducts
    fluxduct_tiers = [
        ("leadstone", 0, "thermalfoundation:material:323", "minecraft:redstone"),
        ("hardened", 1, "thermalfoundation:material:354", "minecraft:redstone"),
        ("signalum", 2, "thermalfoundation:material:357", "minecraft:redstone"),
        ("resonant", 3, "thermalfoundation:material:359", "minecraft:redstone"),
        ("cryo", 4, "thermalfoundation:material:358", "thermalfoundation:material:1025")
    ]
    for fname, meta, metal, fill in fluxduct_tiers:
        recipes.append(Recipe(
            name=f"nexus_exp_te_fluxduct_{fname}",
            output=f"thermaldynamics:duct_0:{meta} * 6",
            is_shaped=True,
            remove_output=True,
            comment=f"Энергетическая труба (Fluxduct): {fname}",
            pattern=[
                [metal, fill, metal],
                [fill, "minecraft:glass", fill],
                [metal, fill, metal]
            ]
        ))

    # Structural & Attachments
    servo_tiers = [
        ("basic", 0, "thermalfoundation:material:32", "minecraft:redstone"),
        ("hardened", 1, "thermalfoundation:material:354", "minecraft:redstone"),
        ("reinforced", 2, "thermalfoundation:material:353", "minecraft:redstone"),
        ("signalum", 3, "thermalfoundation:material:357", "minecraft:redstone"),
        ("resonant", 4, "thermalfoundation:material:359", "minecraft:redstone")
    ]
    for sname, meta, plate, fill in servo_tiers:
        # Servo
        recipes.append(Recipe(
            name=f"nexus_exp_te_servo_{sname}",
            output=f"thermaldynamics:servo:{meta} * 2",
            is_shaped=True,
            remove_output=True,
            comment=f"Сервомеханизм: {sname}",
            pattern=[
                [None, fill, None],
                [plate, "minecraft:iron_bars", plate],
                [None, fill, None]
            ]
        ))
        # Filter
        recipes.append(Recipe(
            name=f"nexus_exp_te_filter_{sname}",
            output=f"thermaldynamics:filter:{meta} * 2",
            is_shaped=True,
            remove_output=True,
            comment=f"Фильтр: {sname}",
            pattern=[
                [None, plate, None],
                [fill, "minecraft:paper", fill],
                [None, plate, None]
            ]
        ))
        # Retriever
        recipes.append(Recipe(
            name=f"nexus_exp_te_retriever_{sname}",
            output=f"thermaldynamics:retriever:{meta} * 2",
            is_shaped=True,
            remove_output=True,
            comment=f"Поисковик: {sname}",
            pattern=[
                [None, "minecraft:ender_pearl", None],
                [plate, fill, plate],
                [None, plate, None]
            ]
        ))

    # 7. SATCHELS, RESERVOIRS & FLUX CAPACITORS
    storage_tiers = [
        ("basic", 0, "thermalfoundation:material:320", "minecraft:iron_ingot"),
        ("hardened", 1, "thermalfoundation:material:354", "minecraft:gold_ingot"),
        ("reinforced", 2, "thermalfoundation:material:353", "minecraft:diamond"),
        ("signalum", 3, "thermalfoundation:material:357", "minecraft:emerald"),
        ("resonant", 4, "thermalfoundation:material:359", "minecraft:nether_star")
    ]
    for sname, meta, plate, gem in storage_tiers:
        # Flux Capacitor
        recipes.append(Recipe(
            name=f"nexus_exp_te_flux_cap_{sname}",
            output=f"thermalexpansion:capacitor:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=f"Флаксовый конденсатор: {sname}",
            pattern=[
                [plate, "minecraft:redstone", plate],
                ["minecraft:redstone", gem, "minecraft:redstone"],
                [plate, coil_reception, plate]
            ]
        ))
        # Reservoir
        recipes.append(Recipe(
            name=f"nexus_exp_te_reservoir_{sname}",
            output=f"thermalexpansion:reservoir:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=f"Резервуар: {sname}",
            pattern=[
                [plate, "minecraft:bucket", plate],
                ["minecraft:bucket", gem, "minecraft:bucket"],
                [plate, plate, plate]
            ]
        ))
        # Satchel
        recipes.append(Recipe(
            name=f"nexus_exp_te_satchel_{sname}",
            output=f"thermalexpansion:satchel:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=f"Сумка исследователя: {sname}",
            pattern=[
                ["minecraft:leather", "minecraft:wool", "minecraft:leather"],
                [plate, gem, plate],
                ["minecraft:leather", plate, "minecraft:leather"]
            ]
        ))
        # Energy Cell
        recipes.append(Recipe(
            name=f"nexus_exp_te_cell_{sname}",
            output=f"thermalexpansion:cell:{meta}",
            is_shaped=True,
            remove_output=False,
            comment=f"Энергетическая ячейка Thermal: {sname}",
            pattern=[
                [plate, "minecraft:redstone", plate],
                ["minecraft:redstone", frame, "minecraft:redstone"],
                [plate, coil_reception, plate]
            ]
        ))
        # Fluid Tank
        recipes.append(Recipe(
            name=f"nexus_exp_te_tank_{sname}",
            output=f"thermalexpansion:tank:{meta}",
            is_shaped=True,
            remove_output=False,
            comment=f"Жидкостный резервуар Thermal: {sname}",
            pattern=[
                [plate, "minecraft:glass", plate],
                ["minecraft:glass", "minecraft:bucket", "minecraft:glass"],
                [plate, plate, plate]
            ]
        ))

    # 8. REDSTONE ARSENAL GEAR
    arsenal_ingot = "redstonearsenal:material:32"
    arsenal_plate = "redstonearsenal:material:128"
    arsenal_gear = "redstonearsenal:material:64"

    arsenal_items = [
        ("sword", "redstonearsenal:tool.sword_flux", [[None, arsenal_plate, None], [None, arsenal_plate, None], [None, "immersiveengineering:material:3", None]]),
        ("pickaxe", "redstonearsenal:tool.pickaxe_flux", [[arsenal_plate, arsenal_ingot, arsenal_plate], [None, "immersiveengineering:material:3", None], [None, "immersiveengineering:material:3", None]]),
        ("axe", "redstonearsenal:tool.axe_flux", [[arsenal_plate, arsenal_plate, None], [arsenal_plate, "immersiveengineering:material:3", None], [None, "immersiveengineering:material:3", None]]),
        ("shovel", "redstonearsenal:tool.shovel_flux", [[None, arsenal_plate, None], [None, "immersiveengineering:material:3", None], [None, "immersiveengineering:material:3", None]]),
        ("sickle", "redstonearsenal:tool.sickle_flux", [[None, arsenal_plate, None], [None, None, arsenal_plate], ["immersiveengineering:material:3", arsenal_plate, None]]),
        ("bow", "redstonearsenal:tool.bow_flux", [[None, arsenal_plate, "minecraft:string"], [arsenal_ingot, None, "minecraft:string"], [None, arsenal_plate, "minecraft:string"]]),
        ("wrench", "redstonearsenal:tool.wrench_flux", [[arsenal_plate, None, arsenal_plate], [None, arsenal_gear, None], [None, arsenal_ingot, None]]),
        ("helmet", "redstonearsenal:armor.helmet_flux", [[arsenal_plate, arsenal_plate, arsenal_plate], [arsenal_plate, "minecraft:diamond_helmet", arsenal_plate]]),
        ("plate", "redstonearsenal:armor.plate_flux", [[arsenal_plate, "minecraft:diamond_chestplate", arsenal_plate], [arsenal_plate, arsenal_gear, arsenal_plate], [arsenal_plate, arsenal_plate, arsenal_plate]]),
        ("legs", "redstonearsenal:armor.legs_flux", [[arsenal_plate, arsenal_plate, arsenal_plate], [arsenal_plate, "minecraft:diamond_leggings", arsenal_plate], [arsenal_plate, None, arsenal_plate]]),
        ("boots", "redstonearsenal:armor.boots_flux", [[arsenal_plate, None, arsenal_plate], [arsenal_plate, "minecraft:diamond_boots", arsenal_plate]])
    ]

    for aname, aitem, apattern in arsenal_items:
        recipes.append(Recipe(
            name=f"nexus_exp_rsa_{aname}",
            output=aitem,
            is_shaped=True,
            remove_output=True,
            comment=f"Флаксовая экипировка Redstone Arsenal: {aname}",
            pattern=apattern
        ))

    # 9. ELEMENTAL DUSTS & ESSENCES
    recipes.append(Recipe(
        name="nexus_exp_te_pyrotheum_dust",
        output="thermalfoundation:material:1024 * 2",
        is_shaped=True,
        remove_output=True,
        comment="Пыль пиротеума",
        pattern=[
            ["minecraft:blaze_powder", "minecraft:redstone", "minecraft:blaze_powder"],
            ["minecraft:redstone", "minecraft:gunpowder", "minecraft:redstone"],
            ["minecraft:blaze_powder", "minecraft:redstone", "minecraft:blaze_powder"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_te_cryotheum_dust",
        output="thermalfoundation:material:1025 * 2",
        is_shaped=True,
        remove_output=True,
        comment="Пыль криотеума",
        pattern=[
            ["minecraft:snowball", "minecraft:redstone", "minecraft:snowball"],
            ["minecraft:redstone", "minecraft:gunpowder", "minecraft:redstone"],
            ["minecraft:snowball", "minecraft:redstone", "minecraft:snowball"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_te_aerotheum_dust",
        output="thermalfoundation:material:1026 * 2",
        is_shaped=True,
        remove_output=True,
        comment="Пыль аэротеума",
        pattern=[
            ["minecraft:feather", "minecraft:redstone", "minecraft:feather"],
            ["minecraft:redstone", "minecraft:gunpowder", "minecraft:redstone"],
            ["minecraft:feather", "minecraft:redstone", "minecraft:feather"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_te_petrotheum_dust",
        output="thermalfoundation:material:1027 * 2",
        is_shaped=True,
        remove_output=True,
        comment="Пыль петротеума",
        pattern=[
            ["minecraft:clay_ball", "minecraft:redstone", "minecraft:clay_ball"],
            ["minecraft:redstone", "minecraft:obsidian", "minecraft:redstone"],
            ["minecraft:clay_ball", "minecraft:redstone", "minecraft:clay_ball"]
        ]
    ))

    return recipes
