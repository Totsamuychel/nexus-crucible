#!/usr/bin/env python3
"""
Nexus Crucible - Environmental Tech & Draconic Evolution Endgame Recipes
Generates ~180 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_endgame_tech_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    # Environmental Tech Materials
    litherite = "environmentaltech:litherite_crystal"
    erodio = "environmentaltech:erodio_crystal"
    kyronite = "environmentaltech:kyronite_crystal"
    pladium = "environmentaltech:pladium_crystal"
    ionite = "environmentaltech:ionite_crystal"
    aethium = "environmentaltech:aethium_crystal"

    et_crystals = [litherite, erodio, kyronite, pladium, ionite, aethium]

    diamond = "minecraft:diamond"
    emerald = "minecraft:emerald"
    nether_star = "minecraft:nether_star"
    draconium = "draconicevolution:draconium_ingot"
    awakened_core = "draconicevolution:awakened_core"

    # 1. VOID MINER CONTROLLERS & STRUCTURAL FRAMES (Tier 1 to Tier 6)
    for tier in range(1, 7):
        cryst = et_crystals[tier - 1]
        prev_miner = "minecraft:diamond_pickaxe" if tier == 1 else f"environmentaltech:void_ore_miner_cont_{tier-1}"
        prev_res = "minecraft:diamond_shovel" if tier == 1 else f"environmentaltech:void_res_miner_cont_{tier-1}"

        # Ore Miner Controller
        recipes.append(Recipe(
            name=f"nexus_exp_et_ore_miner_t{tier}",
            output=f"environmentaltech:void_ore_miner_cont_{tier}",
            is_shaped=True,
            remove_output=True,
            comment=f"Контроллер рудного пустотного бура Tier {tier}",
            pattern=[
                [cryst, "minecraft:diamond_block", cryst],
                [cryst, prev_miner, cryst],
                [cryst, "environmentaltech:laser_core", cryst]
            ]
        ))

        # Resource Miner Controller
        recipes.append(Recipe(
            name=f"nexus_exp_et_res_miner_t{tier}",
            output=f"environmentaltech:void_res_miner_cont_{tier}",
            is_shaped=True,
            remove_output=True,
            comment=f"Контроллер ресурсного пустотного бура Tier {tier}",
            pattern=[
                [cryst, "minecraft:emerald_block", cryst],
                [cryst, prev_res, cryst],
                [cryst, "environmentaltech:laser_core", cryst]
            ]
        ))

        # Solar Array Controller
        recipes.append(Recipe(
            name=f"nexus_exp_et_solar_cont_t{tier}",
            output=f"environmentaltech:solar_cont_{tier}",
            is_shaped=True,
            remove_output=True,
            comment=f"Контроллер солнечной панели Tier {tier}",
            pattern=[
                [cryst, "minecraft:daylight_detector", cryst],
                [cryst, "minecraft:glowstone", cryst],
                [cryst, f"environmentaltech:structure_frame_{tier}", cryst]
            ]
        ))

        # Structure Frame
        recipes.append(Recipe(
            name=f"nexus_exp_et_frame_t{tier}",
            output=f"environmentaltech:structure_frame_{tier} * 4",
            is_shaped=True,
            remove_output=True,
            comment=f"Структурный каркас Environmental Tech Tier {tier}",
            pattern=[
                [cryst, "thermalfoundation:material:352", cryst],
                ["thermalfoundation:material:352", None, "thermalfoundation:material:352"],
                [cryst, "thermalfoundation:material:352", cryst]
            ]
        ))

        # Nano-Bot Beacon
        recipes.append(Recipe(
            name=f"nexus_exp_et_beacon_t{tier}",
            output=f"environmentaltech:nano_cont_{tier}",
            is_shaped=True,
            remove_output=True,
            comment=f"Нано-маяк Environmental Tech Tier {tier}",
            pattern=[
                [cryst, "minecraft:beacon", cryst],
                [cryst, f"environmentaltech:structure_frame_{tier}", cryst],
                [cryst, "minecraft:nether_star", cryst]
            ]
        ))

        # Lightning Rod
        recipes.append(Recipe(
            name=f"nexus_exp_et_lightning_t{tier}",
            output=f"environmentaltech:lightning_cont_{tier}",
            is_shaped=True,
            remove_output=True,
            comment=f"Громоотводный генератор Environmental Tech Tier {tier}",
            pattern=[
                [cryst, "minecraft:iron_bars", cryst],
                [cryst, f"environmentaltech:structure_frame_{tier}", cryst],
                [cryst, "thermalfoundation:material:352", cryst]
            ]
        ))

    # Modifiers
    modifier_types = [
        ("speed", "environmentaltech:modifier_speed", "minecraft:sugar", "Модификатор скорости ET"),
        ("accuracy", "environmentaltech:modifier_accuracy", "minecraft:compass", "Модификатор точности ET"),
        ("piezo", "environmentaltech:modifier_piezo", "minecraft:piston", "Пьезо-модификатор ET")
    ]
    for mid, mout, mcore, mdesc in modifier_types:
        recipes.append(Recipe(
            name=f"nexus_exp_et_mod_{mid}",
            output=mout,
            is_shaped=True,
            remove_output=True,
            comment=mdesc,
            pattern=[
                [litherite, mcore, litherite],
                [mcore, "environmentaltech:modifier_null", mcore],
                [litherite, mcore, litherite]
            ]
        ))

    # 2. DRACONIC EVOLUTION CORES & INJECTORS
    draconic_core = "draconicevolution:draconic_core"
    wyvern_core = "draconicevolution:wyvern_core"
    chaotic_core = "draconicevolution:chaotic_core"

    recipes.append(Recipe(
        name="nexus_exp_de_core_draconic",
        output=draconic_core,
        is_shaped=True,
        remove_output=True,
        comment="Дракониевое ядро (Draconic Core)",
        pattern=[
            [draconium, "minecraft:gold_ingot", draconium],
            [diamond, nether_star, diamond],
            [draconium, "minecraft:gold_ingot", draconium]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_de_core_wyvern",
        output=wyvern_core,
        is_shaped=True,
        remove_output=True,
        comment="Виверн ядро (Wyvern Core)",
        pattern=[
            ["draconicevolution:draconium_block", draconic_core, "draconicevolution:draconium_block"],
            [nether_star, "contenttweaker:celestial_binding_matrix", nether_star],
            ["draconicevolution:draconium_block", draconic_core, "draconicevolution:draconium_block"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_de_core_awakened",
        output=awakened_core,
        is_shaped=True,
        remove_output=True,
        comment="Пробужденное ядро (Awakened Core)",
        pattern=[
            ["draconicevolution:draconic_block", wyvern_core, "draconicevolution:draconic_block"],
            [nether_star, "draconicevolution:dragon_heart", nether_star],
            ["draconicevolution:draconic_block", wyvern_core, "draconicevolution:draconic_block"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_de_core_chaotic",
        output=chaotic_core,
        is_shaped=True,
        remove_output=True,
        comment="Хаотическое ядро (Chaotic Core)",
        pattern=[
            ["draconicevolution:chaos_shard:0", awakened_core, "draconicevolution:chaos_shard:0"],
            ["contenttweaker:nexus_singularity", "draconicevolution:dragon_heart", "contenttweaker:nexus_singularity"],
            ["draconicevolution:chaos_shard:0", awakened_core, "draconicevolution:chaos_shard:0"]
        ]
    ))

    # Fusion Crafting Injectors
    injectors = [
        ("basic", "draconicevolution:crafting_injector:0", draconic_core, "Базовый инжектор крафта"),
        ("wyvern", "draconicevolution:crafting_injector:1", wyvern_core, "Виверн инжектор крафта"),
        ("draconic", "draconicevolution:crafting_injector:2", awakened_core, "Дракониевый инжектор крафта"),
        ("chaotic", "draconicevolution:crafting_injector:3", chaotic_core, "Хаотический инжектор крафта")
    ]
    for iname, iout, icore, idesc in injectors:
        recipes.append(Recipe(
            name=f"nexus_exp_de_injector_{iname}",
            output=iout,
            is_shaped=True,
            remove_output=True,
            comment=idesc,
            pattern=[
                [draconium, diamond, draconium],
                [diamond, icore, diamond],
                [draconium, "minecraft:stone", draconium]
            ]
        ))

    # 3. DRACONIC WEAPONS & ARMOR
    recipes.append(Recipe(
        name="nexus_exp_de_wyvern_sword",
        output="draconicevolution:wyvern_sword",
        is_shaped=True,
        remove_output=True,
        comment="Меч виверны Draconic Evolution",
        pattern=[
            [draconium],
            [draconium],
            [wyvern_core]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_de_wyvern_pick",
        output="draconicevolution:wyvern_pick",
        is_shaped=True,
        remove_output=True,
        comment="Кирка виверны Draconic Evolution",
        pattern=[
            [draconium, draconium, draconium],
            [None, wyvern_core, None],
            [None, "draconicevolution:draconium_block", None]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_de_wyvern_bow",
        output="draconicevolution:wyvern_bow",
        is_shaped=True,
        remove_output=True,
        comment="Лук виверны Draconic Evolution",
        pattern=[
            [None, draconium, "minecraft:string"],
            [wyvern_core, None, "minecraft:string"],
            [None, draconium, "minecraft:string"]
        ]
    ))

    # 4. DRACONIC REACTOR & ENERGY MATRIX
    reactor_parts = [
        ("core", "draconicevolution:reactor_core", [[awakened_core, "draconicevolution:dragon_heart", awakened_core], ["draconicevolution:dragon_heart", "contenttweaker:convergence_core", "draconicevolution:dragon_heart"], [awakened_core, "draconicevolution:dragon_heart", awakened_core]], "Ядро реактора Draconic Evolution"),
        ("stabilizer", "draconicevolution:reactor_component:0", [[draconium, awakened_core, draconium], [awakened_core, "contenttweaker:celestial_binding_matrix", awakened_core], [draconium, awakened_core, draconium]], "Стабилизатор реактора дракона"),
        ("flux_gate", "draconicevolution:flow_gate:0", [[draconium, "minecraft:comparator", draconium], ["minecraft:redstone", draconic_core, "minecraft:redstone"], [draconium, "minecraft:comparator", draconium]], "Флаксовый вентиль (Flux Gate)"),
        ("energy_pylon", "draconicevolution:energy_pylon", [[draconium, glass := "minecraft:glass", draconium], [glass, draconic_core, glass], [draconium, glass, draconium]], "Энергетический пилон"),
        ("particle_generator", "draconicevolution:particle_generator", [[draconium, "minecraft:blaze_rod", draconium], ["minecraft:blaze_rod", draconic_core, "minecraft:blaze_rod"], [draconium, "minecraft:blaze_rod", draconium]], "Генератор частиц Draconic Evolution")
    ]
    for pid, pout, ppat, pdesc in reactor_parts:
        recipes.append(Recipe(
            name=f"nexus_exp_de_{pid}",
            output=pout,
            is_shaped=True,
            remove_output=True,
            comment=pdesc,
            pattern=ppat
        ))

    return recipes
