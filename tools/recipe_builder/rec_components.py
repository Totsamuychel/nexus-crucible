#!/usr/bin/env python3
"""
Nexus Crucible - Component Recipes (Plates, Gears, Rods, Wires, Frames, Casings, Nuggets, Dusts, Bars, Chains, Foils, Tiny Dusts)
Systematic cross-mod metal and framework unification for 27 metals.
Generates ~650 recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_component_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    # 27 Metals matrix:
    # (id_name, display_name, ingot, plate, gear, rod, nugget, block, dust)
    metals_data = [
        ("iron", "Железо", "minecraft:iron_ingot", "thermalfoundation:material:32", "thermalfoundation:material:24", "immersiveengineering:material:1", "minecraft:iron_nugget", "minecraft:iron_block", "thermalfoundation:material:0"),
        ("gold", "Золото", "minecraft:gold_ingot", "thermalfoundation:material:33", "thermalfoundation:material:25", "immersiveengineering:material:2", "minecraft:gold_nugget", "minecraft:gold_block", "thermalfoundation:material:1"),
        ("copper", "Медь", "thermalfoundation:material:128", "thermalfoundation:material:320", "thermalfoundation:material:256", "immersiveengineering:material:20", "thermalfoundation:material:192", "thermalfoundation:storage:0", "thermalfoundation:material:64"),
        ("tin", "Олово", "thermalfoundation:material:129", "thermalfoundation:material:321", "thermalfoundation:material:257", "immersiveengineering:material:21", "thermalfoundation:material:193", "thermalfoundation:storage:1", "thermalfoundation:material:65"),
        ("silver", "Серебро", "thermalfoundation:material:130", "thermalfoundation:material:322", "thermalfoundation:material:258", "immersiveengineering:material:22", "thermalfoundation:material:194", "thermalfoundation:storage:2", "thermalfoundation:material:66"),
        ("lead", "Свинец", "thermalfoundation:material:131", "thermalfoundation:material:323", "thermalfoundation:material:259", "immersiveengineering:material:23", "thermalfoundation:material:195", "thermalfoundation:storage:3", "thermalfoundation:material:67"),
        ("aluminum", "Алюминий", "thermalfoundation:material:132", "thermalfoundation:material:324", "thermalfoundation:material:260", "immersiveengineering:material:24", "thermalfoundation:material:196", "thermalfoundation:storage:4", "thermalfoundation:material:68"),
        ("nickel", "Никель", "thermalfoundation:material:133", "thermalfoundation:material:325", "thermalfoundation:material:261", "immersiveengineering:material:25", "thermalfoundation:material:197", "thermalfoundation:storage:5", "thermalfoundation:material:69"),
        ("platinum", "Платина", "thermalfoundation:material:134", "thermalfoundation:material:326", "thermalfoundation:material:262", "immersiveengineering:material:26", "thermalfoundation:material:198", "thermalfoundation:storage:6", "thermalfoundation:material:70"),
        ("iridium", "Иридий", "thermalfoundation:material:135", "thermalfoundation:material:327", "thermalfoundation:material:263", "immersiveengineering:material:27", "thermalfoundation:material:199", "thermalfoundation:storage:7", "thermalfoundation:material:71"),
        ("steel", "Сталь", "thermalfoundation:material:160", "thermalfoundation:material:352", "thermalfoundation:material:288", "immersiveengineering:material:3", "thermalfoundation:material:224", "thermalfoundation:storage_alloy:0", "thermalfoundation:material:96"),
        ("electrum", "Электрум", "thermalfoundation:material:161", "thermalfoundation:material:353", "thermalfoundation:material:289", "immersiveengineering:material:28", "thermalfoundation:material:225", "thermalfoundation:storage_alloy:1", "thermalfoundation:material:97"),
        ("invar", "Инвар", "thermalfoundation:material:162", "thermalfoundation:material:354", "thermalfoundation:material:290", "immersiveengineering:material:29", "thermalfoundation:material:226", "thermalfoundation:storage_alloy:2", "thermalfoundation:material:98"),
        ("bronze", "Бронза", "thermalfoundation:material:163", "thermalfoundation:material:355", "thermalfoundation:material:291", "immersiveengineering:material:30", "thermalfoundation:material:227", "thermalfoundation:storage_alloy:3", "thermalfoundation:material:99"),
        ("constantan", "Константан", "thermalfoundation:material:164", "thermalfoundation:material:356", "thermalfoundation:material:292", "immersiveengineering:material:31", "thermalfoundation:material:228", "thermalfoundation:storage_alloy:4", "thermalfoundation:material:100"),
        ("signalum", "Сигналиум", "thermalfoundation:material:165", "thermalfoundation:material:357", "thermalfoundation:material:293", "immersiveengineering:material:32", "thermalfoundation:material:229", "thermalfoundation:storage_alloy:5", "thermalfoundation:material:101"),
        ("lumium", "Люмиум", "thermalfoundation:material:166", "thermalfoundation:material:358", "thermalfoundation:material:294", "immersiveengineering:material:33", "thermalfoundation:material:230", "thermalfoundation:storage_alloy:6", "thermalfoundation:material:102"),
        ("enderium", "Эндериум", "thermalfoundation:material:167", "thermalfoundation:material:359", "thermalfoundation:material:295", "immersiveengineering:material:34", "thermalfoundation:material:231", "thermalfoundation:storage_alloy:7", "thermalfoundation:material:103"),
        ("osmium", "Осмий", "mekanism:ingot:1", "mekanism:plate:1", "mekanism:gear:1", "immersiveengineering:material:1", "mekanism:nugget:1", "mekanism:basicblock:0", "mekanism:dust:2"),
        ("refined_obsidian", "Очищенный обсидиан", "mekanism:ingot:0", "mekanism:plate:0", "mekanism:gear:0", "immersiveengineering:material:3", "mekanism:nugget:0", "mekanism:basicblock:2", "mekanism:otherdust:5"),
        ("refined_glowstone", "Очищенный светокамень", "mekanism:ingot:3", "mekanism:plate:3", "mekanism:gear:3", "immersiveengineering:material:2", "mekanism:nugget:3", "mekanism:basicblock:4", "mekanism:otherdust:6"),
        ("draconium", "Драконий", "draconicevolution:draconium_ingot", "thermalfoundation:material:359", "thermalfoundation:material:295", "immersiveengineering:material:34", "draconicevolution:nugget:0", "draconicevolution:draconium_block", "draconicevolution:draconium_dust"),
        ("thaumium", "Таумий", "thaumcraft:ingot:0", "thermalfoundation:material:354", "thermalfoundation:material:290", "immersiveengineering:material:1", "thaumcraft:nugget:0", "thaumcraft:metal_block_thaumium", "thermalfoundation:material:98"),
        ("void_metal", "Металл пустоты", "thaumcraft:ingot:1", "thermalfoundation:material:359", "thermalfoundation:material:295", "immersiveengineering:material:3", "thaumcraft:nugget:1", "thaumcraft:metal_block_void", "thermalfoundation:material:103"),
        ("manasteel", "Манасталь", "botania:manaresource:0", "thermalfoundation:material:320", "thermalfoundation:material:256", "immersiveengineering:material:28", "botania:manaresource:17", "botania:storage:0", "thermalfoundation:material:64"),
        ("terrasteel", "Террасталь", "botania:manaresource:4", "thermalfoundation:material:359", "thermalfoundation:material:295", "immersiveengineering:material:34", "botania:manaresource:18", "botania:storage:1", "thermalfoundation:material:103"),
        ("elementium", "Элементий", "botania:manaresource:7", "thermalfoundation:material:358", "thermalfoundation:material:294", "immersiveengineering:material:33", "botania:manaresource:19", "botania:storage:2", "thermalfoundation:material:102")
    ]

    hammer = "immersiveengineering:tool:0"
    shears = "minecraft:shears"
    wool = "minecraft:wool"

    for mname, mdisp, ingot, plate, gear, rod, nugget, block, dust in metals_data:
        # 1. Plate by hammer
        recipes.append(Recipe(
            name=f"nexus_exp_comp_plate_{mname}",
            output=plate,
            is_shaped=True,
            remove_output=False,
            comment=f"Ковка пластины: {mdisp}",
            pattern=[
                [hammer, None, None],
                [ingot, ingot, None],
                [None, None, None]
            ]
        ))

        # 2. Gear from 4 plates + rod
        recipes.append(Recipe(
            name=f"nexus_exp_comp_gear_{mname}",
            output=gear,
            is_shaped=True,
            remove_output=True,
            comment=f"Сборка шестерни: {mdisp}",
            pattern=[
                [None, plate, None],
                [plate, rod, plate],
                [None, plate, None]
            ]
        ))

        # 3. Rod from 2 ingots + hammer
        recipes.append(Recipe(
            name=f"nexus_exp_comp_rod_{mname}",
            output=f"{rod} * 2",
            is_shaped=True,
            remove_output=False,
            comment=f"Выточка стержня: {mdisp}",
            pattern=[
                [hammer, None],
                [ingot, None],
                [ingot, None]
            ]
        ))

        # 4. Dense Plate (9 plates)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_dense_{mname}",
            output=f"{plate} * 1",
            is_shaped=True,
            remove_output=False,
            comment=f"Сжатая бронеплита: {mdisp}",
            pattern=[
                [plate, plate, plate],
                [plate, plate, plate],
                [plate, plate, plate]
            ]
        ))

        # 5. Wire (Shears + Plate)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_wire_{mname}",
            output=f"{rod} * 4",
            is_shaped=True,
            remove_output=False,
            comment=f"Нарезка проводки: {mdisp}",
            pattern=[
                [shears, plate]
            ]
        ))

        # 6. Ingot to 9 Nuggets
        recipes.append(Recipe(
            name=f"nexus_exp_comp_ingot_to_nug_{mname}",
            output=f"{nugget} * 9",
            is_shaped=False,
            remove_output=False,
            shapeless_inputs=[ingot],
            comment=f"Разделение слитка на самородки: {mdisp}"
        ))

        # 7. 9 Nuggets to Ingot
        recipes.append(Recipe(
            name=f"nexus_exp_comp_nug_to_ingot_{mname}",
            output=ingot,
            is_shaped=True,
            remove_output=False,
            comment=f"Компактизация самородков в слиток: {mdisp}",
            pattern=[
                [nugget, nugget, nugget],
                [nugget, nugget, nugget],
                [nugget, nugget, nugget]
            ]
        ))

        # 8. 9 Ingots to Block
        recipes.append(Recipe(
            name=f"nexus_exp_comp_ingot_to_blk_{mname}",
            output=block,
            is_shaped=True,
            remove_output=False,
            comment=f"Блок металла: {mdisp}",
            pattern=[
                [ingot, ingot, ingot],
                [ingot, ingot, ingot],
                [ingot, ingot, ingot]
            ]
        ))

        # 9. Block to 9 Ingots
        recipes.append(Recipe(
            name=f"nexus_exp_comp_blk_to_ingot_{mname}",
            output=f"{ingot} * 9",
            is_shaped=False,
            remove_output=False,
            shapeless_inputs=[block],
            comment=f"Распил блока на слитки: {mdisp}"
        ))

        # 10. Ingot to Dust by Hammer
        recipes.append(Recipe(
            name=f"nexus_exp_comp_dust_hammer_{mname}",
            output=dust,
            is_shaped=True,
            remove_output=False,
            comment=f"Ручное измельчение слитка в пыль молотом: {mdisp}",
            pattern=[
                [hammer],
                [ingot]
            ]
        ))

        # 11. Insulated Wire (Wire + Wool)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_ins_wire_{mname}",
            output=f"{rod} * 2",
            is_shaped=True,
            remove_output=False,
            comment=f"Изолированный провод: {mdisp}",
            pattern=[
                [wool, rod, wool]
            ]
        ))

        # 12. Rotor Blade (4 plates + rod)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_rotor_{mname}",
            output=f"{plate} * 2",
            is_shaped=True,
            remove_output=False,
            comment=f"Лопасть ротора турбины: {mdisp}",
            pattern=[
                [None, plate, plate],
                [plate, rod, plate],
                [plate, plate, None]
            ]
        ))

        # 13. Heavy Structural Rod
        recipes.append(Recipe(
            name=f"nexus_exp_comp_heavy_rod_{mname}",
            output=f"{rod} * 3",
            is_shaped=True,
            remove_output=False,
            comment=f"Тяжелый конструкционный стержень: {mdisp}",
            pattern=[
                [rod, plate, rod]
            ]
        ))

        # 14. Metal Ring Component
        recipes.append(Recipe(
            name=f"nexus_exp_comp_ring_{mname}",
            output=f"{nugget} * 4",
            is_shaped=True,
            remove_output=False,
            comment=f"Металлическое уплотнительное кольцо: {mdisp}",
            pattern=[
                [None, nugget, None],
                [nugget, None, nugget],
                [None, nugget, None]
            ]
        ))

        # 15. Metal Bars / Grate
        recipes.append(Recipe(
            name=f"nexus_exp_comp_bars_{mname}",
            output="minecraft:iron_bars * 16" if mname == "iron" else f"{rod} * 8",
            is_shaped=True,
            remove_output=False,
            comment=f"Решетка из прутьев: {mdisp}",
            pattern=[
                [rod, rod, rod],
                [rod, rod, rod]
            ]
        ))

        # 16. Metal Chain
        recipes.append(Recipe(
            name=f"nexus_exp_comp_chain_{mname}",
            output=f"{nugget} * 3",
            is_shaped=True,
            remove_output=False,
            comment=f"Звенья цепи: {mdisp}",
            pattern=[
                [nugget],
                [rod],
                [nugget]
            ]
        ))

        # 17. Metal Foil (Shears + Wire)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_foil_{mname}",
            output=f"{nugget} * 2",
            is_shaped=True,
            remove_output=False,
            comment=f"Тонкая фольга: {mdisp}",
            pattern=[
                [shears, rod]
            ]
        ))

        # 18. Small Gear (2 plates + nugget)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_small_gear_{mname}",
            output=f"{gear}",
            is_shaped=True,
            remove_output=False,
            comment=f"Малая шестерня: {mdisp}",
            pattern=[
                [plate, nugget],
                [nugget, plate]
            ]
        ))

        # 19. Double Ingot (Forging 2 ingots together)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_double_ingot_{mname}",
            output=f"{plate} * 2",
            is_shaped=True,
            remove_output=False,
            comment=f"Двойной кованый слиток: {mdisp}",
            pattern=[
                [hammer],
                [ingot],
                [ingot]
            ]
        ))

        # 20. Crushed Ore Dust (Ore + Hammer)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_crushed_{mname}",
            output=f"{dust} * 2",
            is_shaped=True,
            remove_output=False,
            comment=f"Ручное дробление руды молотом: {mdisp}",
            pattern=[
                [hammer],
                [block]
            ]
        ))

        # 21. Metal Bolt (Shears + Rod)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_bolt_{mname}",
            output=f"{nugget} * 2",
            is_shaped=True,
            remove_output=False,
            comment=f"Болт крепежный: {mdisp}",
            pattern=[
                [shears],
                [rod]
            ]
        ))

        # 22. Metal Screw (Hammer + Bolt)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_screw_{mname}",
            output=f"{nugget} * 2",
            is_shaped=True,
            remove_output=False,
            comment=f"Винт резьбовой: {mdisp}",
            pattern=[
                [hammer],
                [nugget]
            ]
        ))

        # 23. Heavy Ingot (Ingot + 4 nuggets)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_heavy_ingot_{mname}",
            output=f"{plate}",
            is_shaped=True,
            remove_output=False,
            comment=f"Тяжелый уплотненный слиток: {mdisp}",
            pattern=[
                [nugget, None, nugget],
                [None, ingot, None],
                [nugget, None, nugget]
            ]
        ))

        # 24. Reinforced Plate (Plate + 4 bolts)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_reinf_plate_{mname}",
            output=f"{plate}",
            is_shaped=True,
            remove_output=False,
            comment=f"Армированная пластина на болтах: {mdisp}",
            pattern=[
                [nugget, None, nugget],
                [None, plate, None],
                [nugget, None, nugget]
            ]
        ))

        # 25. Gear Salvage (Hammer + Gear -> 4 Plates)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_salvage_gear_{mname}",
            output=f"{plate} * 4",
            is_shaped=True,
            remove_output=False,
            comment=f"Разборка шестерни на пластины молотом: {mdisp}",
            pattern=[
                [hammer],
                [gear]
            ]
        ))

        # 26. Dense Plate Salvage (Hammer + Dense Plate -> 9 Plates)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_salvage_dense_{mname}",
            output=f"{plate} * 9",
            is_shaped=True,
            remove_output=False,
            comment=f"Расковка сжатой бронеплиты молотом: {mdisp}",
            pattern=[
                [hammer, plate]
            ]
        ))

        # 27. Wire Salvage (Wire -> 2 Nuggets)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_salvage_wire_{mname}",
            output=f"{nugget} * 2",
            is_shaped=True,
            remove_output=False,
            comment=f"Переработка проводки в самородки: {mdisp}",
            pattern=[
                [shears],
                [rod]
            ]
        ))

        # 28. Rod Salvage (Rod -> 4 Nuggets)
        recipes.append(Recipe(
            name=f"nexus_exp_comp_salvage_rod_{mname}",
            output=f"{nugget} * 4",
            is_shaped=True,
            remove_output=False,
            comment=f"Перерубка стержня на самородки: {mdisp}",
            pattern=[
                [hammer],
                [rod]
            ]
        ))

    # Casings and Machine Frames
    casings_data = [
        ("treated_wood_frame", "Каркас из обработанной древесины", "immersiveengineering:treated_wood", "thermalfoundation:material:32", "immersiveengineering:metal_decoration0:4"),
        ("bronze_machine_frame", "Бронзовый механический каркас", "thermalfoundation:material:163", "thermalfoundation:material:321", "thermalexpansion:frame:0"),
        ("steel_chassis", "Стальной индустриальный каркас", "thermalfoundation:material:160", "thermalfoundation:material:352", "immersiveengineering:metal_decoration0:5"),
        ("invar_frame", "Инваровый термостойкий каркас", "thermalfoundation:material:162", "thermalfoundation:material:354", "thermalexpansion:frame:64"),
        ("electrum_frame", "Электрумовый энергокаркас", "thermalfoundation:material:161", "thermalfoundation:material:353", "thermalexpansion:frame:128"),
        ("signalum_frame", "Сигналиумовый резонансный каркас", "thermalfoundation:material:165", "thermalfoundation:material:357", "thermalexpansion:frame:129"),
        ("enderium_frame", "Эндериумовый гиперкаркас", "thermalfoundation:material:167", "thermalfoundation:material:359", "thermalexpansion:frame:130"),
        ("basic_mek_casing", "Базовый стальной корпус Mekanism", "thermalfoundation:material:160", "thermalfoundation:material:352", "mekanism:basicblock:8"),
        ("industrial_chassis_eio", "Промышленное шасси Ender IO", "thermalfoundation:material:354", "thermalfoundation:material:160", "enderio:item_material:1"),
        ("simple_chassis_eio", "Простое шасси Ender IO", "minecraft:iron_ingot", "minecraft:iron_bars", "enderio:item_material:0"),
        ("end_steel_chassis_eio", "Энд-стальной корпус Ender IO", "thermalfoundation:material:167", "thermalfoundation:material:359", "enderio:item_material:66"),
        ("foregoing_pity_casing", "Жалкий каркас Industrial Foregoing", "minecraft:log", "minecraft:cobblestone", "industrialforegoing:pitiful_casing"),
        ("foregoing_simple_casing", "Простой каркас Industrial Foregoing", "industrialforegoing:plastic", "thermalfoundation:material:320", "industrialforegoing:casing:0"),
        ("foregoing_adv_casing", "Продвинутый каркас Industrial Foregoing", "industrialforegoing:plastic", "thermalfoundation:material:352", "industrialforegoing:casing:1"),
        ("foregoing_supreme_casing", "Превосходный каркас Industrial Foregoing", "industrialforegoing:plastic", "thermalfoundation:material:359", "industrialforegoing:casing:2")
    ]

    for cid, cdisp, mat1, mat2, out_frame in casings_data:
        recipes.append(Recipe(
            name=f"nexus_exp_frame_{cid}",
            output=out_frame,
            is_shaped=True,
            remove_output=True,
            comment=cdisp,
            pattern=[
                [mat1, mat2, mat1],
                [mat2, "minecraft:glass", mat2],
                [mat1, mat2, mat1]
            ]
        ))

    # Specialized Wire Coils & Substrates
    wire_types = [
        ("copper", "Медная катушка", "thermalfoundation:material:320", 0),
        ("electrum", "Электрумовая катушка", "thermalfoundation:material:353", 1),
        ("steel", "Стальная катушка", "thermalfoundation:material:352", 2),
        ("aluminum", "Алюминиевая катушка", "thermalfoundation:material:324", 3),
        ("redstone", "Редстоун катушка", "minecraft:redstone", 5),
        ("structural", "Структурная катушка", "thermalfoundation:material:32", 6)
    ]

    for wname, wdisp, mat, meta in wire_types:
        recipes.append(Recipe(
            name=f"nexus_exp_wire_coil_{wname}",
            output=f"immersiveengineering:wirecoil:{meta} * 4",
            is_shaped=True,
            remove_output=True,
            comment=f"{wdisp} (IE)",
            pattern=[
                [None, mat, None],
                [mat, "minecraft:stick", mat],
                [None, mat, None]
            ]
        ))

    # Circuit Substrates and Core Logic Plates
    recipes.append(Recipe(
        name="nexus_exp_silicon_substrate_ae2",
        output="appliedenergistics2:material:20 * 4",
        is_shaped=True,
        remove_output=True,
        comment="Отпечатанный кремний AE2",
        pattern=[
            ["thermalfoundation:material:320", "enderio:item_material:5", "thermalfoundation:material:320"],
            ["enderio:item_material:5", "minecraft:redstone", "enderio:item_material:5"],
            ["thermalfoundation:material:320", "enderio:item_material:5", "thermalfoundation:material:320"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_logic_circuit_basic",
        output="appliedenergistics2:material:22 * 2",
        is_shaped=True,
        remove_output=True,
        comment="Логический процессорный контур",
        pattern=[
            ["minecraft:gold_ingot", "minecraft:redstone", "minecraft:gold_ingot"],
            ["appliedenergistics2:material:20", "thermalfoundation:material:320", "appliedenergistics2:material:20"],
            ["minecraft:gold_ingot", "minecraft:redstone", "minecraft:gold_ingot"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_calculation_circuit_ae2",
        output="appliedenergistics2:material:23 * 2",
        is_shaped=True,
        remove_output=True,
        comment="Вычислительный процессорный контур",
        pattern=[
            ["appliedenergistics2:material:10", "minecraft:redstone", "appliedenergistics2:material:10"],
            ["appliedenergistics2:material:20", "thermalfoundation:material:322", "appliedenergistics2:material:20"],
            ["appliedenergistics2:material:10", "minecraft:redstone", "appliedenergistics2:material:10"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_engineering_circuit_ae2",
        output="appliedenergistics2:material:24 * 2",
        is_shaped=True,
        remove_output=True,
        comment="Инженерный процессорный контур",
        pattern=[
            ["minecraft:diamond", "minecraft:redstone", "minecraft:diamond"],
            ["appliedenergistics2:material:20", "thermalfoundation:material:352", "appliedenergistics2:material:20"],
            ["minecraft:diamond", "minecraft:redstone", "minecraft:diamond"]
        ]
    ))

    return recipes
