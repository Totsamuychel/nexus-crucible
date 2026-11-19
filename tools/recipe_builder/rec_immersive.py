#!/usr/bin/env python3
"""
Nexus Crucible - Immersive Engineering & Petroleum Recipes
Generates ~180 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_immersive_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    tw_plank = "immersiveengineering:treated_wood"
    tw_slab = "immersiveengineering:treated_wood_slab"
    iron_plate = "thermalfoundation:material:32"
    steel_plate = "thermalfoundation:material:352"
    copper_plate = "thermalfoundation:material:320"
    lead_plate = "thermalfoundation:material:323"
    aluminum_plate = "thermalfoundation:material:324"
    steel_rod = "immersiveengineering:material:3"
    iron_rod = "immersiveengineering:material:1"

    # 1. TREATED WOOD ARCHITECTURE & STRUCTURAL PARTS
    tw_parts = [
        ("scaffolding_wood", "immersiveengineering:wooden_decoration:1 * 6", [[tw_plank, tw_plank, tw_plank], [None, steel_rod, None], [steel_rod, None, steel_rod]], "Деревянные строительные леса"),
        ("scaffolding_steel", "immersiveengineering:metal_decoration1:1 * 6", [[steel_plate, steel_plate, steel_plate], [None, steel_rod, None], [steel_rod, None, steel_rod]], "Стальные строительные леса"),
        ("scaffolding_aluminum", "immersiveengineering:metal_decoration1:5 * 6", [[aluminum_plate, aluminum_plate, aluminum_plate], [None, iron_rod, None], [iron_rod, None, iron_rod]], "Алюминиевые строительные леса"),
        ("post_wood", "immersiveengineering:wooden_decoration:0 * 4", [[tw_plank], [tw_plank], [tw_plank]], "Деревянный столб IE"),
        ("post_steel", "immersiveengineering:metal_decoration2:4 * 4", [[steel_plate], [steel_plate], [steel_plate]], "Стальной столб IE"),
        ("post_aluminum", "immersiveengineering:metal_decoration2:5 * 4", [[aluminum_plate], [aluminum_plate], [aluminum_plate]], "Алюминиевый столб IE"),
        ("ladder_steel", "immersiveengineering:metal_decoration2:0 * 3", [[steel_rod, None, steel_rod], [steel_rod, steel_rod, steel_rod], [steel_rod, None, steel_rod]], "Стальная лестница IE"),
        ("lantern", "immersiveengineering:metal_decoration2:2", [[None, iron_plate, None], ["minecraft:glass_pane", "minecraft:torch", "minecraft:glass_pane"], [None, iron_plate, None]], "Фонарь инженера"),
        ("powered_lantern", "immersiveengineering:metal_device1:4", [[None, iron_plate, None], ["minecraft:glass_pane", "minecraft:glowstone_dust", "minecraft:glass_pane"], [None, iron_rod, None]], "Электрический фонарь"),
        ("floodlight", "immersiveengineering:metal_device1:9", [[steel_plate, "minecraft:glowstone", steel_plate], [steel_plate, "minecraft:glass", steel_plate], [None, steel_rod, None]], "Прожектор")
    ]

    for pid, pout, ppattern, pcomment in tw_parts:
        recipes.append(Recipe(
            name=f"nexus_exp_ie_{pid}",
            output=pout,
            is_shaped=True,
            remove_output=True,
            comment=pcomment,
            pattern=ppattern
        ))

    # 2. CONNECTORS, RELAYS & INSULATORS
    terracotta = "minecraft:hardened_clay"
    wire_connectors = [
        ("lv_conn", "immersiveengineering:metal_device0:0 * 4", [[None, terracotta, None], [copper_plate, copper_plate, copper_plate], [None, terracotta, None]], "Низковольтный коннектор (LV)"),
        ("lv_relay", "immersiveengineering:metal_device0:1 * 4", [[None, terracotta, None], [iron_plate, copper_plate, iron_plate], [None, terracotta, None]], "Низковольтное реле (LV)"),
        ("mv_conn", "immersiveengineering:metal_device0:2 * 4", [[None, terracotta, None], ["thermalfoundation:material:353", "thermalfoundation:material:353", "thermalfoundation:material:353"], [None, terracotta, None]], "Средневольтный коннектор (MV)"),
        ("mv_relay", "immersiveengineering:metal_device0:3 * 4", [[None, terracotta, None], [iron_plate, "thermalfoundation:material:353", iron_plate], [None, terracotta, None]], "Средневольтное реле (MV)"),
        ("hv_conn", "immersiveengineering:metal_device0:4 * 4", [[None, terracotta, None], [steel_plate, steel_plate, steel_plate], [None, terracotta, None]], "Высоковольтный коннектор (HV)"),
        ("hv_relay", "immersiveengineering:metal_device0:5 * 4", [[None, terracotta, None], [iron_plate, steel_plate, iron_plate], [None, terracotta, None]], "Высоковольтное реле (HV)"),
        ("feedthrough", "immersiveengineering:metal_device0:6 * 2", [[steel_rod, terracotta, steel_rod], [terracotta, steel_plate, terracotta], [steel_rod, terracotta, steel_rod]], "Проходной изолятор"),
        ("redstone_conn", "immersiveengineering:connector:0 * 4", [[None, "minecraft:redstone", None], [iron_plate, iron_plate, iron_plate], [None, terracotta, None]], "Редстоун коннектор"),
        ("redstone_relay", "immersiveengineering:connector:1 * 4", [[None, "minecraft:redstone", None], [iron_plate, "minecraft:stone", iron_plate], [None, terracotta, None]], "Редстоун реле"),
        ("probe_conn", "immersiveengineering:connector:2 * 2", [[None, "minecraft:comparator", None], [iron_plate, steel_plate, iron_plate], [None, terracotta, None]], "Коннектор зонда")
    ]

    for cid, cout, cpat, ccomment in wire_connectors:
        recipes.append(Recipe(
            name=f"nexus_exp_ie_{cid}",
            output=cout,
            is_shaped=True,
            remove_output=True,
            comment=ccomment,
            pattern=cpat
        ))

    # 3. TRANSFORMERS & CAPACITORS
    recipes.append(Recipe(
        name="nexus_exp_ie_transformer_lv_mv",
        output="immersiveengineering:metal_device0:7",
        is_shaped=True,
        remove_output=True,
        comment="Трансформатор LV-MV",
        pattern=[
            ["immersiveengineering:metal_device0:0", None, "immersiveengineering:metal_device0:2"],
            [iron_plate, "immersiveengineering:metal_decoration0:4", iron_plate],
            [tw_plank, iron_plate, tw_plank]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ie_transformer_mv_hv",
        output="immersiveengineering:metal_device0:8",
        is_shaped=True,
        remove_output=True,
        comment="Трансформатор MV-HV",
        pattern=[
            ["immersiveengineering:metal_device0:2", None, "immersiveengineering:metal_device0:4"],
            [steel_plate, "immersiveengineering:metal_decoration0:5", steel_plate],
            [tw_plank, steel_plate, tw_plank]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ie_capacitor_lv",
        output="immersiveengineering:metal_device0:10",
        is_shaped=True,
        remove_output=True,
        comment="LV Конденсатор инженера",
        pattern=[
            [tw_plank, copper_plate, tw_plank],
            [copper_plate, "minecraft:redstone_block", copper_plate],
            [tw_plank, lead_plate, tw_plank]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ie_capacitor_mv",
        output="immersiveengineering:metal_device0:11",
        is_shaped=True,
        remove_output=True,
        comment="MV Конденсатор инженера",
        pattern=[
            [tw_plank, "thermalfoundation:material:353", tw_plank],
            ["thermalfoundation:material:353", "immersiveengineering:metal_device0:10", "thermalfoundation:material:353"],
            [tw_plank, lead_plate, tw_plank]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ie_capacitor_hv",
        output="immersiveengineering:metal_device0:12",
        is_shaped=True,
        remove_output=True,
        comment="HV Конденсатор инженера",
        pattern=[
            [tw_plank, steel_plate, tw_plank],
            [steel_plate, "immersiveengineering:metal_device0:11", steel_plate],
            [tw_plank, lead_plate, tw_plank]
        ]
    ))

    # 4. CONVEYOR BELTS & HANDLING
    leather = "minecraft:leather"
    conveyor_types = [
        ("basic", "immersiveengineering:conveyor:0 * 8", [[leather, leather, leather], [iron_plate, "minecraft:redstone", iron_plate]], "Конвейерная лента IE"),
        ("dropper", "immersiveengineering:conveyor:1 * 4", [[leather, "minecraft:hopper", leather], [iron_plate, "minecraft:redstone", iron_plate]], "Сбрасывающий конвейер"),
        ("vertical", "immersiveengineering:conveyor:2 * 4", [[leather, iron_plate, leather], [iron_plate, "minecraft:redstone", iron_plate]], "Вертикальный конвейер"),
        ("splitter", "immersiveengineering:conveyor:3 * 2", [[leather, "minecraft:iron_ingot", leather], [iron_plate, "minecraft:comparator", iron_plate]], "Разделительный конвейер"),
        ("extract", "immersiveengineering:conveyor:4 * 4", [[leather, "minecraft:piston", leather], [iron_plate, "minecraft:redstone", iron_plate]], "Извлекающий конвейер")
    ]
    for cid, cout, cpat, ccomment in conveyor_types:
        recipes.append(Recipe(
            name=f"nexus_exp_ie_conv_{cid}",
            output=cout,
            is_shaped=True,
            remove_output=True,
            comment=ccomment,
            pattern=cpat
        ))

    # 5. MULTIBLOCK BLOCKS (Heavy/Light Eng, Radiator, Generator, Coke/Blast)
    multiblocks = [
        ("coke_brick", "immersiveengineering:stone_decoration:0 * 3", [["minecraft:clay_ball", "minecraft:brick", "minecraft:clay_ball"], ["minecraft:brick", "minecraft:sandstone", "minecraft:brick"], ["minecraft:clay_ball", "minecraft:brick", "minecraft:clay_ball"]], "Кирпич коксовой печи"),
        ("blast_brick", "immersiveengineering:stone_decoration:1 * 3", [["minecraft:nether_brick", "minecraft:brick", "minecraft:nether_brick"], ["minecraft:brick", "minecraft:magma", "minecraft:brick"], ["minecraft:nether_brick", "minecraft:brick", "minecraft:nether_brick"]], "Кирпич доменной печи"),
        ("blast_brick_reinforced", "immersiveengineering:stone_decoration:2 * 2", [[steel_plate, "immersiveengineering:stone_decoration:1", steel_plate], ["immersiveengineering:stone_decoration:1", "minecraft:obsidian", "immersiveengineering:stone_decoration:1"], [steel_plate, "immersiveengineering:stone_decoration:1", steel_plate]], "Укрепленный кирпич доменной печи"),
        ("alloy_brick", "immersiveengineering:stone_decoration:10 * 2", [["minecraft:brick", "minecraft:sandstone", "minecraft:brick"], ["minecraft:sandstone", copper_plate, "minecraft:sandstone"], ["minecraft:brick", "minecraft:sandstone", "minecraft:brick"]], "Кирпич плавильной печи сплавов"),
        ("light_engineering", "immersiveengineering:metal_decoration0:4 * 2", [[iron_plate, iron_rod, iron_plate], [iron_rod, copper_plate, iron_rod], [iron_plate, iron_rod, iron_plate]], "Блок легкой инженерии"),
        ("heavy_engineering", "immersiveengineering:metal_decoration0:5 * 2", [[steel_plate, steel_rod, steel_plate], [steel_rod, "minecraft:piston", steel_rod], [steel_plate, steel_rod, steel_plate]], "Блок тяжелой инженерии"),
        ("generator_block", "immersiveengineering:metal_decoration0:6 * 2", [[steel_plate, "thermalfoundation:material:353", steel_plate], ["thermalfoundation:material:353", "minecraft:iron_block", "thermalfoundation:material:353"], [steel_plate, "thermalfoundation:material:353", steel_plate]], "Блок электрогенератора"),
        ("radiator_block", "immersiveengineering:metal_decoration0:7 * 2", [[steel_plate, copper_plate, steel_plate], [copper_plate, "minecraft:water_bucket", copper_plate], [steel_plate, copper_plate, steel_plate]], "Блок радиатора охлаждения"),
        ("redstone_engineering", "immersiveengineering:metal_decoration0:3 * 2", [[iron_plate, "minecraft:redstone", iron_plate], ["minecraft:redstone", "minecraft:redstone_block", "minecraft:redstone"], [iron_plate, "minecraft:redstone", iron_plate]], "Блок редстоун инженерии")
    ]
    for mid, mout, mpat, mcomment in multiblocks:
        recipes.append(Recipe(
            name=f"nexus_exp_ie_{mid}",
            output=mout,
            is_shaped=True,
            remove_output=True,
            comment=mcomment,
            pattern=mpat
        ))

    # 6. PIPES & FLUID HANDLING
    recipes.append(Recipe(
        name="nexus_exp_ie_fluid_pipe",
        output="immersiveengineering:metal_device1:6 * 8",
        is_shaped=True,
        remove_output=True,
        comment="Жидкостная труба инженера",
        pattern=[
            [iron_plate, iron_plate, iron_plate],
            [None, None, None],
            [iron_plate, iron_plate, iron_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ie_fluid_pump",
        output="immersiveengineering:metal_device0:13",
        is_shaped=True,
        remove_output=True,
        comment="Жидкостная помпа инженера",
        pattern=[
            [iron_plate, "minecraft:piston", iron_plate],
            [iron_rod, "immersiveengineering:metal_device1:6", iron_rod],
            [steel_plate, "immersiveengineering:metal_decoration0:4", steel_plate]
        ]
    ))

    # 7. DRILLS, REVOLVERS & AMMUNITION
    recipes.append(Recipe(
        name="nexus_exp_ie_drillhead_iron",
        output="immersiveengineering:drillhead:1",
        is_shaped=True,
        remove_output=True,
        comment="Железный бур для буровой установки",
        pattern=[
            [None, iron_plate, iron_plate],
            [iron_plate, "minecraft:iron_block", iron_plate],
            [iron_plate, iron_plate, None]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ie_drillhead_steel",
        output="immersiveengineering:drillhead:0",
        is_shaped=True,
        remove_output=True,
        comment="Стальной бур для буровой установки",
        pattern=[
            [None, steel_plate, steel_plate],
            [steel_plate, "thermalfoundation:storage_alloy:0", steel_plate],
            [steel_plate, steel_plate, None]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ie_mining_drill",
        output="immersiveengineering:drill:0",
        is_shaped=True,
        remove_output=True,
        comment="Шахтерский механический бур",
        pattern=[
            [steel_plate, "immersiveengineering:metal_decoration0:4", None],
            [None, steel_rod, "immersiveengineering:metal_decoration0:5"],
            [None, None, steel_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ie_revolver",
        output="immersiveengineering:revolver:0",
        is_shaped=True,
        remove_output=True,
        comment="Инженерный револьвер",
        pattern=[
            [steel_rod, steel_plate, "minecraft:iron_ingot"],
            [tw_plank, "minecraft:lever", None],
            [tw_plank, None, None]
        ]
    ))

    # 8. SHEETMETAL TYPES (10 metals)
    sheetmetal_metals = [
        ("copper", copper_plate, 0),
        ("aluminum", aluminum_plate, 1),
        ("lead", lead_plate, 2),
        ("silver", "thermalfoundation:material:322", 3),
        ("nickel", "thermalfoundation:material:325", 4),
        ("constantan", "thermalfoundation:material:356", 6),
        ("electrum", "thermalfoundation:material:353", 7),
        ("steel", steel_plate, 8),
        ("iron", iron_plate, 9),
        ("gold", "thermalfoundation:material:33", 10)
    ]
    for sname, plate, meta in sheetmetal_metals:
        recipes.append(Recipe(
            name=f"nexus_exp_ie_sheetmetal_{sname}",
            output=f"immersiveengineering:sheetmetal:{meta} * 4",
            is_shaped=True,
            remove_output=True,
            comment=f"Листовой металл: {sname}",
            pattern=[
                [plate, plate],
                [plate, plate]
            ]
        ))
        recipes.append(Recipe(
            name=f"nexus_exp_ie_sheetmetal_slab_{sname}",
            output=f"immersiveengineering:sheetmetal_slab:{meta} * 6",
            is_shaped=True,
            remove_output=True,
            comment=f"Листовая полуплита: {sname}",
            pattern=[
                [f"immersiveengineering:sheetmetal:{meta}", f"immersiveengineering:sheetmetal:{meta}", f"immersiveengineering:sheetmetal:{meta}"]
            ]
        ))

    # 9. REVOLVER AMMUNITION (10 types)
    ammo_types = [
        ("regular", "immersiveengineering:bullet:0 * 8", "minecraft:iron_ingot", "Стандартный патрон"),
        ("armor_piercing", "immersiveengineering:bullet:1 * 8", steel_plate, "Бронебойный патрон"),
        ("buckshot", "immersiveengineering:bullet:2 * 8", lead_plate, "Картечный патрон"),
        ("he", "immersiveengineering:bullet:3 * 8", "minecraft:tnt", "Разрывной фугасный патрон"),
        ("flare", "immersiveengineering:bullet:4 * 8", "minecraft:glowstone_dust", "Сигнальный патрон"),
        ("silver", "immersiveengineering:bullet:7 * 8", "thermalfoundation:material:322", "Серебряный патрон против нежити"),
        ("dragons_breath", "immersiveengineering:bullet:8 * 4", "minecraft:dragon_breath", "Патрон дыхания дракона"),
        ("potion", "immersiveengineering:bullet:9 * 4", "minecraft:glass_bottle", "Алхимический патрон"),
        ("homing", "immersiveengineering:bullet:10 * 4", "minecraft:ender_pearl", "Самонаводящийся патрон"),
        ("wolfpack", "immersiveengineering:bullet:11 * 4", "minecraft:firework_charge", "Кассетный патрон (Wolfpack)")
    ]
    for aid, aout, acore, adesc in ammo_types:
        recipes.append(Recipe(
            name=f"nexus_exp_ie_ammo_{aid}",
            output=aout,
            is_shaped=True,
            remove_output=False,
            comment=adesc,
            pattern=[
                [acore],
                ["minecraft:gunpowder"],
                [iron_plate]
            ]
        ))

    # 10. TREATED WOOD ARCHITECTURE & FURNITURE
    tw_blocks = [
        ("fence", "immersiveengineering:wooden_decoration:0 * 6", [[tw_plank, "minecraft:stick", tw_plank], [tw_plank, "minecraft:stick", tw_plank]], "Забор из обработанной древесины"),
        ("door", "immersiveengineering:treated_wood_door * 3", [[tw_plank, tw_plank], [tw_plank, tw_plank], [tw_plank, tw_plank]], "Дверь из обработанной древесины"),
        ("trapdoor", "immersiveengineering:treated_wood_trapdoor * 2", [[tw_plank, tw_plank, tw_plank], [tw_plank, tw_plank, tw_plank]], "Люк из обработанной древесины"),
        ("stairs", "immersiveengineering:treated_wood_stairs * 4", [[tw_plank, None, None], [tw_plank, tw_plank, None], [tw_plank, tw_plank, tw_plank]], "Ступени из обработанной древесины"),
        ("barrel", "immersiveengineering:wooden_device0:1", [[tw_plank, None, tw_plank], [tw_plank, None, tw_plank], [tw_plank, tw_plank, tw_plank]], "Деревянная бочка для жидкостей"),
        ("crate", "immersiveengineering:wooden_device0:0", [[tw_plank, iron_plate, tw_plank], [iron_plate, "minecraft:chest", iron_plate], [tw_plank, iron_plate, tw_plank]], "Усиленный деревянный ящик (Crate)")
    ]
    for bid, bout, bpat, bdesc in tw_blocks:
        recipes.append(Recipe(
            name=f"nexus_exp_ie_block_{bid}",
            output=bout,
            is_shaped=True,
            remove_output=False,
            comment=bdesc,
            pattern=bpat
        ))

    # 11. PETROLEUM EXTENSIONS
    recipes.append(Recipe(
        name="nexus_exp_ie_pumpjack_part",
        output="immersivepetroleum:schematic:0",
        is_shaped=True,
        remove_output=False,
        comment="Чертеж качалки Immersive Petroleum",
        pattern=[
            [steel_plate, "minecraft:paper", steel_plate],
            ["minecraft:paper", "minecraft:compass", "minecraft:paper"],
            [steel_plate, "minecraft:paper", steel_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ie_distillation_part",
        output="immersivepetroleum:schematic:1",
        is_shaped=True,
        remove_output=False,
        comment="Чертеж ректификационной колонны",
        pattern=[
            [steel_plate, "minecraft:paper", steel_plate],
            ["minecraft:paper", "minecraft:bucket", "minecraft:paper"],
            [steel_plate, "minecraft:paper", steel_plate]
        ]
    ))

    return recipes
