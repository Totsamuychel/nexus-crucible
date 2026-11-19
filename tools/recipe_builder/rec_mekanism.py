#!/usr/bin/env python3
"""
Nexus Crucible - Mekanism, Generators & Tools Recipes
Generates ~150 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_mekanism_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    steel_casing = "mekanism:basicblock:8"
    iron_plate = "thermalfoundation:material:32"
    steel_plate = "thermalfoundation:material:352"
    copper_plate = "thermalfoundation:material:320"
    gold_plate = "thermalfoundation:material:33"
    osmium_plate = "mekanism:plate:1"
    osmium_ingot = "mekanism:ingot:1"
    redstone = "minecraft:redstone"
    diamond = "minecraft:diamond"
    refined_obsidian = "mekanism:ingot:0"
    glass = "minecraft:glass"

    # 1. CIRCUITS & ALLOYS
    infused_alloy = "mekanism:enrichedalloy"
    reinforced_alloy = "mekanism:reinforcedalloy"
    atomic_alloy = "mekanism:atomicalloy"

    basic_circuit = "mekanism:controlcircuit:0"
    adv_circuit = "mekanism:controlcircuit:1"
    elite_circuit = "mekanism:controlcircuit:2"
    ult_circuit = "mekanism:controlcircuit:3"

    # Alloys
    recipes.append(Recipe(
        name="nexus_exp_mek_alloy_infused",
        output=infused_alloy,
        is_shaped=True,
        remove_output=True,
        comment="Наполненный сплав Mekanism",
        pattern=[
            [redstone, "minecraft:iron_ingot", redstone],
            ["minecraft:iron_ingot", redstone, "minecraft:iron_ingot"],
            [redstone, "minecraft:iron_ingot", redstone]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_mek_alloy_reinforced",
        output=reinforced_alloy,
        is_shaped=True,
        remove_output=True,
        comment="Усиленный сплав Mekanism",
        pattern=[
            [diamond, infused_alloy, diamond],
            [infused_alloy, "minecraft:diamond_block", infused_alloy],
            [diamond, infused_alloy, diamond]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_mek_alloy_atomic",
        output=atomic_alloy,
        is_shaped=True,
        remove_output=True,
        comment="Атомарный сплав Mekanism",
        pattern=[
            [refined_obsidian, reinforced_alloy, refined_obsidian],
            [reinforced_alloy, "minecraft:nether_star", reinforced_alloy],
            [refined_obsidian, reinforced_alloy, refined_obsidian]
        ]
    ))

    # Circuits
    recipes.append(Recipe(
        name="nexus_exp_mek_circuit_basic",
        output=f"{basic_circuit} * 2",
        is_shaped=True,
        remove_output=True,
        comment="Базовая схема управления Mekanism",
        pattern=[
            [redstone, osmium_ingot, redstone],
            [copper_plate, "appliedenergistics2:material:20", copper_plate],
            [redstone, osmium_ingot, redstone]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_mek_circuit_adv",
        output=adv_circuit,
        is_shaped=True,
        remove_output=True,
        comment="Продвинутая схема управления",
        pattern=[
            [infused_alloy, basic_circuit, infused_alloy],
            [steel_plate, "appliedenergistics2:material:22", steel_plate],
            [infused_alloy, basic_circuit, infused_alloy]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_mek_circuit_elite",
        output=elite_circuit,
        is_shaped=True,
        remove_output=True,
        comment="Элитная схема управления",
        pattern=[
            [reinforced_alloy, adv_circuit, reinforced_alloy],
            [diamond, "appliedenergistics2:material:24", diamond],
            [reinforced_alloy, adv_circuit, reinforced_alloy]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_mek_circuit_ult",
        output=ult_circuit,
        is_shaped=True,
        remove_output=True,
        comment="Совершенная схема управления",
        pattern=[
            [atomic_alloy, elite_circuit, atomic_alloy],
            [refined_obsidian, "contenttweaker:distributed_control_matrix", refined_obsidian],
            [atomic_alloy, elite_circuit, atomic_alloy]
        ]
    ))

    # 2. TIER INSTALLERS (Basic, Adv, Elite, Ultimate)
    tier_installers = [
        ("basic", 0, redstone, iron_plate, basic_circuit),
        ("adv", 1, infused_alloy, osmium_plate, adv_circuit),
        ("elite", 2, reinforced_alloy, gold_plate, elite_circuit),
        ("ult", 3, atomic_alloy, refined_obsidian, ult_circuit)
    ]
    for iname, meta, mat1, mat2, circ in tier_installers:
        recipes.append(Recipe(
            name=f"nexus_exp_mek_tier_installer_{iname}",
            output=f"mekanism:tierinstaller:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=f"Установщик уровня: {iname}",
            pattern=[
                [mat1, circ, mat1],
                [mat2, "minecraft:planks", mat2],
                [mat1, circ, mat1]
            ]
        ))

    # 3. MACHINES (Single-block)
    base_machines = [
        ("smelter", "mekanism:machineblock:10", steel_plate, "minecraft:furnace", basic_circuit, "Энергетическая плавильня"),
        ("enrichment", "mekanism:machineblock:0", steel_plate, "minecraft:piston", basic_circuit, "Камера обогащения"),
        ("crusher", "mekanism:machineblock:3", steel_plate, "minecraft:lava_bucket", basic_circuit, "Дробитель Mekanism"),
        ("compressor", "mekanism:machineblock:1", steel_plate, "minecraft:iron_block", basic_circuit, "Осмиевый компрессор"),
        ("combiner", "mekanism:machineblock:2", steel_plate, "minecraft:cobblestone", adv_circuit, "Комбинатор"),
        ("purification", "mekanism:machineblock2:0", osmium_plate, "minecraft:bucket", adv_circuit, "Камера очистки"),
        ("injection", "mekanism:machineblock2:1", osmium_plate, "minecraft:gold_block", elite_circuit, "Камера химических инъекций"),
        ("dissolution", "mekanism:machineblock2:3", refined_obsidian, "minecraft:diamond_block", ult_circuit, "Камера химического растворения"),
        ("washer", "mekanism:machineblock2:4", refined_obsidian, "minecraft:bucket", ult_circuit, "Химическая мойка"),
        ("crystallizer", "mekanism:machineblock2:8", refined_obsidian, "minecraft:emerald_block", ult_circuit, "Химический кристаллизатор")
    ]

    for mid, mout, mplate, mcore, mcirc, mcomment in base_machines:
        recipes.append(Recipe(
            name=f"nexus_exp_mek_mach_{mid}",
            output=mout,
            is_shaped=True,
            remove_output=True,
            comment=mcomment,
            pattern=[
                [mcirc, mcore, mcirc],
                [mplate, steel_casing, mplate],
                [mcirc, mcore, mcirc]
            ]
        ))

    # 4. ENERGY CUBES & TANKS (Basic to Ultimate)
    energy_tiers = [
        ("basic", 0, redstone, iron_plate, basic_circuit, "Базовый энергокуб"),
        ("adv", 1, infused_alloy, osmium_plate, adv_circuit, "Продвинутый энергокуб"),
        ("elite", 2, reinforced_alloy, gold_plate, elite_circuit, "Элитный энергокуб"),
        ("ult", 3, atomic_alloy, diamond, ult_circuit, "Совершенный энергокуб")
    ]
    for ename, meta, mat1, mat2, circ, ecomment in energy_tiers:
        recipes.append(Recipe(
            name=f"nexus_exp_mek_cube_{ename}",
            output=f"mekanism:energycube:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=ecomment,
            pattern=[
                [mat1, circ, mat1],
                [mat2, steel_casing, mat2],
                [mat1, circ, mat1]
            ]
        ))
        recipes.append(Recipe(
            name=f"nexus_exp_mek_tank_gas_{ename}",
            output=f"mekanism:gastank:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=f"Газовый баллон: {ename}",
            pattern=[
                [mat1, osmium_ingot, mat1],
                [osmium_ingot, circ, osmium_ingot],
                [mat1, osmium_ingot, mat1]
            ]
        ))

    # 5. TRANSMITTERS (Cables, Pipes, Tubes, Transporters across 4 tiers)
    transmitters = [
        ("cable", "mekanism:transmitter:0", redstone, "Универсальный кабель"),
        ("pipe", "mekanism:transmitter:1", "minecraft:bucket", "Механическая труба"),
        ("tube", "mekanism:transmitter:2", osmium_ingot, "Герметичная труба"),
        ("transporter", "mekanism:transmitter:3", steel_plate, "Логистический транспортер")
    ]
    for tname, tout, tcore, tdesc in transmitters:
        # Tier 0 (Basic)
        recipes.append(Recipe(
            name=f"nexus_exp_mek_wire_{tname}_basic",
            output=f"{tout} * 8",
            is_shaped=True,
            remove_output=True,
            comment=f"{tdesc} (Базовый)",
            pattern=[
                [steel_plate, tcore, steel_plate]
            ]
        ))
        # Tier 1 (Advanced)
        recipes.append(Recipe(
            name=f"nexus_exp_mek_wire_{tname}_adv",
            output=f"{tout} * 8",
            is_shaped=True,
            remove_output=False,
            comment=f"{tdesc} (Продвинутый)",
            pattern=[
                [infused_alloy, tout, infused_alloy]
            ]
        ))
        # Tier 2 (Elite)
        recipes.append(Recipe(
            name=f"nexus_exp_mek_wire_{tname}_elite",
            output=f"{tout} * 8",
            is_shaped=True,
            remove_output=False,
            comment=f"{tdesc} (Элитный)",
            pattern=[
                [reinforced_alloy, tout, reinforced_alloy]
            ]
        ))
        # Tier 3 (Ultimate)
        recipes.append(Recipe(
            name=f"nexus_exp_mek_wire_{tname}_ult",
            output=f"{tout} * 8",
            is_shaped=True,
            remove_output=False,
            comment=f"{tdesc} (Совершенный)",
            pattern=[
                [atomic_alloy, tout, atomic_alloy]
            ]
        ))

    # 6. UPGRADES (Speed, Energy, Filter, Gas, Muffling, Anchor)
    upgrades = [
        ("speed", "mekanism:speedupgrade", "minecraft:sugar", "Улучшение скорости Mekanism"),
        ("energy", "mekanism:energyupgrade", "minecraft:redstone", "Улучшение энергии Mekanism"),
        ("filter", "mekanism:filterupgrade", "minecraft:paper", "Улучшение фильтрации Mekanism"),
        ("gas", "mekanism:gasupgrade", iron_plate, "Улучшение газоочистки Mekanism"),
        ("muffling", "mekanism:mufflingupgrade", "minecraft:wool", "Глушитель шума Mekanism"),
        ("anchor", "mekanism:anchorupgrade", diamond, "Якорь чанков (Anchor Upgrade)")
    ]
    for uid, uout, ucore, udesc in upgrades:
        recipes.append(Recipe(
            name=f"nexus_exp_mek_upg_{uid}",
            output=uout,
            is_shaped=True,
            remove_output=True,
            comment=udesc,
            pattern=[
                [None, glass, None],
                [infused_alloy, ucore, infused_alloy],
                [None, glass, None]
            ]
        ))

    # 7. INDUCTION MATRIX (Cells & Providers across 4 tiers)
    induction_tiers = [
        ("basic", 0, "mekanism:energycube:0", "Базовая индукционная ячейка"),
        ("adv", 1, "mekanism:energycube:1", "Продвинутая индукционная ячейка"),
        ("elite", 2, "mekanism:energycube:2", "Элитная индукционная ячейка"),
        ("ult", 3, "mekanism:energycube:3", "Совершенная индукционная ячейка")
    ]
    for iname, meta, cube, idesc in induction_tiers:
        # Cell
        recipes.append(Recipe(
            name=f"nexus_exp_mek_ind_cell_{iname}",
            output=f"mekanism:basicblock2:{meta + 1}",
            is_shaped=True,
            remove_output=False,
            comment=idesc,
            pattern=[
                [steel_plate, cube, steel_plate],
                [cube, steel_casing, cube],
                [steel_plate, cube, steel_plate]
            ]
        ))
        # Provider
        recipes.append(Recipe(
            name=f"nexus_exp_mek_ind_prov_{iname}",
            output=f"mekanism:basicblock2:{meta + 5}",
            is_shaped=True,
            remove_output=False,
            comment=f"Индукционный провайдер ({iname})",
            pattern=[
                [steel_plate, basic_circuit if iname == 'basic' else (adv_circuit if iname == 'adv' else (elite_circuit if iname == 'elite' else ult_circuit)), steel_plate],
                [cube, steel_casing, cube],
                [steel_plate, basic_circuit if iname == 'basic' else (adv_circuit if iname == 'adv' else (elite_circuit if iname == 'elite' else ult_circuit)), steel_plate]
            ]
        ))

    # 8. GENERATORS & TOOLS
    recipes.append(Recipe(
        name="nexus_exp_mek_gen_solar",
        output="mekanismgenerators:generator:1",
        is_shaped=True,
        remove_output=True,
        comment="Солнечная панель Mekanism",
        pattern=[
            ["minecraft:daylight_detector", "minecraft:daylight_detector", "minecraft:daylight_detector"],
            [infused_alloy, osmium_plate, infused_alloy],
            [iron_plate, basic_circuit, iron_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_mek_gen_wind",
        output="mekanismgenerators:generator:6",
        is_shaped=True,
        remove_output=True,
        comment="Ветрогенератор Mekanism",
        pattern=[
            [osmium_plate, "minecraft:iron_bars", osmium_plate],
            [osmium_plate, adv_circuit, osmium_plate],
            [steel_plate, "mekanism:energycube:1", steel_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_mek_gen_heat",
        output="mekanismgenerators:generator:0",
        is_shaped=True,
        remove_output=True,
        comment="Тепловой генератор Mekanism",
        pattern=[
            [iron_plate, iron_plate, iron_plate],
            ["minecraft:furnace", copper_plate, "minecraft:furnace"],
            [iron_plate, basic_circuit, iron_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_mek_gen_bio",
        output="mekanismgenerators:generator:4",
        is_shaped=True,
        remove_output=True,
        comment="Биогенератор Mekanism",
        pattern=[
            [redstone, basic_circuit, redstone],
            [infused_alloy, steel_casing, infused_alloy],
            ["minecraft:piston", "minecraft:piston", "minecraft:piston"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_mek_atomic_disassembler",
        output="mekanism:atomicdisassembler",
        is_shaped=True,
        remove_output=True,
        comment="Атомный разборщик (Atomic Disassembler)",
        pattern=[
            [atomic_alloy, refined_obsidian, atomic_alloy],
            [atomic_alloy, ult_circuit, atomic_alloy],
            [None, "immersiveengineering:material:3", None]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_mek_digital_miner",
        output="mekanism:machineblock:4",
        is_shaped=True,
        remove_output=True,
        comment="Цифровой шахтер (Digital Miner)",
        pattern=[
            [atomic_alloy, ult_circuit, atomic_alloy],
            ["mekanism:machineblock:1", "mekanism:basicblock:8", "mekanism:machineblock:0"],
            ["mekanism:transmitter:3", "mekanism:energycube:3", "mekanism:transmitter:3"]
        ]
    ))

    return recipes
