#!/usr/bin/env python3
"""
Nexus Crucible - Ender IO & Endergy Recipes
Generates ~180 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_enderio_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    infinity_dust = "enderio:item_material:20"
    simple_chassis = "enderio:item_material:0"
    industrial_chassis = "enderio:item_material:1"
    enhanced_chassis = "enderio:item_material:54"
    soul_chassis = "enderio:item_material:53"
    silicon = "enderio:item_material:5"

    basic_cap = "enderio:item_basic_capacitor:0"
    double_cap = "enderio:item_basic_capacitor:1"
    octadic_cap = "enderio:item_basic_capacitor:2"

    steel_plate = "thermalfoundation:material:352"
    iron_plate = "thermalfoundation:material:32"
    copper_plate = "thermalfoundation:material:320"
    gold_plate = "thermalfoundation:material:33"
    enderium_plate = "thermalfoundation:material:359"

    electrical_steel = "enderio:item_alloy_ingot:0"
    energetic_alloy = "enderio:item_alloy_ingot:1"
    vibrant_alloy = "enderio:item_alloy_ingot:2"
    redstone_alloy = "enderio:item_alloy_ingot:3"
    conductive_iron = "enderio:item_alloy_ingot:4"
    pulsating_iron = "enderio:item_alloy_ingot:5"
    dark_steel = "enderio:item_alloy_ingot:6"
    soularium = "enderio:item_alloy_ingot:7"
    end_steel = "enderio:item_alloy_ingot:8"

    # 1. CAPACITORS (Ender IO & Endergy Tiers)
    recipes.append(Recipe(
        name="nexus_exp_eio_cap_basic",
        output=basic_cap,
        is_shaped=True,
        remove_output=True,
        comment="Базовый конденсатор Ender IO",
        pattern=[
            [None, gold_plate, infinity_dust],
            [gold_plate, copper_plate, gold_plate],
            [infinity_dust, gold_plate, None]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_eio_cap_double",
        output=double_cap,
        is_shaped=True,
        remove_output=True,
        comment="Двухслойный конденсатор",
        pattern=[
            [None, energetic_alloy, None],
            [basic_cap, "minecraft:coal:1", basic_cap],
            [None, energetic_alloy, None]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_eio_cap_octadic",
        output=octadic_cap,
        is_shaped=True,
        remove_output=True,
        comment="Восьмеричный конденсатор",
        pattern=[
            [None, vibrant_alloy, None],
            [double_cap, "minecraft:glowstone", double_cap],
            [None, vibrant_alloy, None]
        ]
    ))

    # Endergy Capacitors (Silver, Crystalline, Melodic, Stellar)
    endergy_caps = [
        ("grainary", "enderio:item_capacitor_grainy", infinity_dust, "minecraft:paper"),
        ("silver", "enderio:item_capacitor_silver", "thermalfoundation:material:322", basic_cap),
        ("energetic_silver", "enderio:item_capacitor_energetic_silver", "thermalfoundation:material:353", double_cap),
        ("vibrant_silver", "enderio:item_capacitor_vibrant_silver", enderium_plate, octadic_cap),
        ("crystalline", "enderio:item_capacitor_crystalline", "enderio:item_alloy_endergy_ingot:1", octadic_cap),
        ("melodic", "enderio:item_capacitor_melodic", "enderio:item_alloy_endergy_ingot:2", octadic_cap),
        ("stellar", "enderio:item_capacitor_stellar", "enderio:item_alloy_endergy_ingot:3", octadic_cap)
    ]
    for cname, cout, mat1, mat2 in endergy_caps:
        recipes.append(Recipe(
            name=f"nexus_exp_eio_cap_{cname}",
            output=cout,
            is_shaped=True,
            remove_output=True,
            comment=f"Конденсатор Endergy: {cname}",
            pattern=[
                [None, mat1, None],
                [mat2, infinity_dust, mat2],
                [None, mat1, None]
            ]
        ))

    # 2. CONDUITS (Energy, Fluid, Item, Redstone)
    conduit_binder = "enderio:item_material:4"
    recipes.append(Recipe(
        name="nexus_exp_eio_conduit_binder",
        output=f"{conduit_binder} * 16",
        is_shaped=True,
        remove_output=True,
        comment="Композитный связующий материал для труб",
        pattern=[
            ["minecraft:clay_ball", "minecraft:gravel", "minecraft:clay_ball"],
            ["minecraft:sand", infinity_dust, "minecraft:sand"],
            ["minecraft:clay_ball", "minecraft:gravel", "minecraft:clay_ball"]
        ]
    ))

    # Item Conduits
    recipes.append(Recipe(
        name="nexus_exp_eio_conduit_item",
        output="enderio:item_item_conduit * 8",
        is_shaped=True,
        remove_output=True,
        comment="Труба для предметов (Item Conduit)",
        pattern=[
            [conduit_binder, conduit_binder, conduit_binder],
            [pulsating_iron, pulsating_iron, pulsating_iron],
            [conduit_binder, conduit_binder, conduit_binder]
        ]
    ))

    # Fluid Conduits
    recipes.append(Recipe(
        name="nexus_exp_eio_conduit_fluid_basic",
        output="enderio:item_liquid_conduit:0 * 8",
        is_shaped=True,
        remove_output=True,
        comment="Жидкостная труба (Fluid Conduit)",
        pattern=[
            [conduit_binder, conduit_binder, conduit_binder],
            ["minecraft:glass", "minecraft:glass", "minecraft:glass"],
            [conduit_binder, conduit_binder, conduit_binder]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_eio_conduit_fluid_pressurized",
        output="enderio:item_liquid_conduit:1 * 8",
        is_shaped=True,
        remove_output=True,
        comment="Напорная жидкостная труба",
        pattern=[
            [conduit_binder, conduit_binder, conduit_binder],
            ["minecraft:glass", "minecraft:piston", "minecraft:glass"],
            [conduit_binder, conduit_binder, conduit_binder]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_eio_conduit_fluid_ender",
        output="enderio:item_liquid_conduit:2 * 8",
        is_shaped=True,
        remove_output=True,
        comment="Эндер-жидкостная труба",
        pattern=[
            [conduit_binder, conduit_binder, conduit_binder],
            [vibrant_alloy, "enderio:item_liquid_conduit:1", vibrant_alloy],
            [conduit_binder, conduit_binder, conduit_binder]
        ]
    ))

    # Energy Conduits
    energy_conduits = [
        ("1k", 0, conductive_iron, "1,000 RF/t"),
        ("5k", 1, energetic_alloy, "5,000 RF/t"),
        ("20k", 2, vibrant_alloy, "20,000 RF/t"),
    ]
    for ename, meta, alloy, desc in energy_conduits:
        recipes.append(Recipe(
            name=f"nexus_exp_eio_conduit_power_{ename}",
            output=f"enderio:item_power_conduit:{meta} * 8",
            is_shaped=True,
            remove_output=True,
            comment=f"Энергетическая труба {desc}",
            pattern=[
                [conduit_binder, conduit_binder, conduit_binder],
                [alloy, alloy, alloy],
                [conduit_binder, conduit_binder, conduit_binder]
            ]
        ))

    # Redstone Conduit
    recipes.append(Recipe(
        name="nexus_exp_eio_conduit_redstone",
        output="enderio:item_redstone_conduit:0 * 8",
        is_shaped=True,
        remove_output=True,
        comment="Редстоун труба Ender IO",
        pattern=[
            [conduit_binder, conduit_binder, conduit_binder],
            [redstone_alloy, redstone_alloy, redstone_alloy],
            [conduit_binder, conduit_binder, conduit_binder]
        ]
    ))

    # Conduit Facade
    recipes.append(Recipe(
        name="nexus_exp_eio_conduit_facade",
        output="enderio:item_conduit_facade:0 * 4",
        is_shaped=True,
        remove_output=True,
        comment="Фасад для труб Ender IO",
        pattern=[
            [conduit_binder, conduit_binder, conduit_binder],
            [conduit_binder, None, conduit_binder],
            [conduit_binder, conduit_binder, conduit_binder]
        ]
    ))

    # 3. CONDUIT FILTERS & UPGRADES
    filters = [
        ("basic_filter", "enderio:item_basic_item_filter", [[None, "minecraft:paper", None], ["minecraft:paper", "minecraft:iron_bars", "minecraft:paper"], [None, "minecraft:paper", None]], "Базовый фильтр предметов"),
        ("adv_filter", "enderio:item_advanced_item_filter", [[None, "minecraft:redstone", None], [redstone_alloy, "enderio:item_basic_item_filter", redstone_alloy], [None, "minecraft:redstone", None]], "Продвинутый фильтр предметов"),
        ("limited_filter", "enderio:item_limited_item_filter", [[None, "minecraft:comparator", None], [redstone_alloy, "enderio:item_basic_item_filter", redstone_alloy], [None, "minecraft:comparator", None]], "Ограничивающий фильтр"),
        ("big_filter", "enderio:item_big_item_filter", [[None, pulsating_iron, None], [redstone_alloy, "enderio:item_advanced_item_filter", redstone_alloy], [None, pulsating_iron, None]], "Большой фильтр предметов"),
        ("mod_filter", "enderio:item_mod_item_filter", [[None, "minecraft:book", None], [electrical_steel, "enderio:item_basic_item_filter", electrical_steel], [None, "minecraft:book", None]], "Фильтр по модификациям"),
        ("speed_upgrade", "enderio:item_extract_speed_upgrade", [[None, "minecraft:piston", None], [conduit_binder, conductive_iron, conduit_binder], [None, "minecraft:redstone", None]], "Ускоритель извлечения"),
        ("speed_upgrade_adv", "enderio:item_extract_speed_upgrade:1", [[None, "minecraft:piston", None], [conduit_binder, energetic_alloy, conduit_binder], [None, "minecraft:redstone", None]], "Продвинутый ускоритель извлечения")
    ]
    for fid, fout, fpat, fcomment in filters:
        recipes.append(Recipe(
            name=f"nexus_exp_eio_{fid}",
            output=fout,
            is_shaped=True,
            remove_output=True,
            comment=fcomment,
            pattern=fpat
        ))

    # 4. MACHINES (Alloy Smelter, SAG Mill, Crafter, Vat, etc.)
    machines = [
        ("alloy_smelter", "enderio:block_alloy_smelter", [[industrial_chassis, "minecraft:furnace", industrial_chassis], ["minecraft:furnace", industrial_chassis, "minecraft:furnace"], [dark_steel, basic_cap, dark_steel]], "Завод сплавов (Alloy Smelter)"),
        ("sag_mill", "enderio:block_sag_mill", [[iron_plate, "minecraft:piston", iron_plate], ["minecraft:flint", industrial_chassis, "minecraft:flint"], [dark_steel, basic_cap, dark_steel]], "Дробитель SAG Mill"),
        ("crafter", "enderio:block_crafter", [[silicon, "minecraft:crafting_table", silicon], ["minecraft:crafting_table", industrial_chassis, "minecraft:crafting_table"], [silicon, basic_cap, silicon]], "Авто-верстак Ender IO"),
        ("vat", "enderio:block_vat", [[iron_plate, "minecraft:cauldron", iron_plate], ["minecraft:bucket", industrial_chassis, "minecraft:bucket"], [dark_steel, basic_cap, dark_steel]], "Бродильный чан (The Vat)"),
        ("slice_and_splice", "enderio:block_slice_and_splice", [["minecraft:iron_axe", "minecraft:shears", "minecraft:iron_axe"], [soularium, soul_chassis, soularium], [dark_steel, basic_cap, dark_steel]], "Сшиватель душ (Slice'N'Splice)"),
        ("soul_binder", "enderio:block_soul_binder", [["minecraft:soul_sand", soularium, "minecraft:soul_sand"], [soularium, soul_chassis, soularium], [dark_steel, double_cap, dark_steel]], "Связыватель душ (Soul Binder)"),
        ("farming_station", "enderio:block_farm_station", [[electrical_steel, "minecraft:diamond_hoe", electrical_steel], [electrical_steel, industrial_chassis, electrical_steel], [dark_steel, double_cap, dark_steel]], "Фермерская станция"),
        ("stirling_gen", "enderio:block_stirling_generator", [[iron_plate, "minecraft:furnace", iron_plate], ["minecraft:piston", simple_chassis, "minecraft:piston"], [copper_plate, basic_cap, copper_plate]], "Генератор Стирлинга"),
        ("xp_vacuum", "enderio:block_xp_vacuum", [[iron_plate, "minecraft:hopper", iron_plate], [pulsating_iron, simple_chassis, pulsating_iron], [iron_plate, "minecraft:glass_bottle", iron_plate]], "Поглотитель опыта (XP Vacuum)"),
        ("dimensional_transceiver", "enderio:block_transceiver", [[enderium_plate, "minecraft:ender_eye", enderium_plate], [octadic_cap, enhanced_chassis, octadic_cap], [enderium_plate, "minecraft:ender_eye", enderium_plate]], "Пространственный трансивер")
    ]
    for mid, mout, mpat, mcomment in machines:
        recipes.append(Recipe(
            name=f"nexus_exp_eio_mach_{mid}",
            output=mout,
            is_shaped=True,
            remove_output=True,
            comment=mcomment,
            pattern=mpat
        ))

    # 5. DARK STEEL & STELLAR ARMOR & TOOLS
    gear_items = [
        ("dark_sword", "enderio:item_dark_steel_sword", [[dark_steel], [dark_steel], [soularium]], "Темный стальной меч"),
        ("dark_pick", "enderio:item_dark_steel_pickaxe", [[dark_steel, dark_steel, dark_steel], [None, soularium, None], [None, soularium, None]], "Темная стальная кирка"),
        ("dark_axe", "enderio:item_dark_steel_axe", [[dark_steel, dark_steel], [dark_steel, soularium], [None, soularium]], "Темный стальной топор"),
        ("dark_bow", "enderio:item_dark_steel_bow", [[None, dark_steel, "minecraft:string"], [dark_steel, None, "minecraft:string"], [None, dark_steel, "minecraft:string"]], "Темный стальной лук"),
        ("dark_helm", "enderio:item_dark_steel_helmet", [[dark_steel, dark_steel, dark_steel], [dark_steel, None, dark_steel]], "Темный стальной шлем"),
        ("dark_chest", "enderio:item_dark_steel_chestplate", [[dark_steel, None, dark_steel], [dark_steel, dark_steel, dark_steel], [dark_steel, dark_steel, dark_steel]], "Темный стальной нагрудник"),
        ("dark_legs", "enderio:item_dark_steel_leggings", [[dark_steel, dark_steel, dark_steel], [dark_steel, None, dark_steel], [dark_steel, None, dark_steel]], "Темные стальные поножи"),
        ("dark_boots", "enderio:item_dark_steel_boots", [[dark_steel, None, dark_steel], [dark_steel, None, dark_steel]], "Темные стальные сапоги"),
        ("stellar_sword", "enderio:item_stellar_alloy_sword", [["enderio:item_alloy_endergy_ingot:3"], ["enderio:item_alloy_endergy_ingot:3"], [end_steel]], "Стеллар меч Endergy"),
        ("stellar_pick", "enderio:item_stellar_alloy_pickaxe", [["enderio:item_alloy_endergy_ingot:3", "enderio:item_alloy_endergy_ingot:3", "enderio:item_alloy_endergy_ingot:3"], [None, end_steel, None], [None, end_steel, None]], "Стеллар кирка Endergy")
    ]
    for gid, gout, gpat, gcomment in gear_items:
        recipes.append(Recipe(
            name=f"nexus_exp_eio_gear_{gid}",
            output=gout,
            is_shaped=True,
            remove_output=True,
            comment=gcomment,
            pattern=gpat
        ))

    # 6. DARK STEEL UPGRADES (15 upgrades)
    dark_upgrades = [
        ("glider_wing", "enderio:item_dark_steel_upgrade:1", [[None, "minecraft:leather", None], ["minecraft:leather", dark_steel, "minecraft:leather"], [None, "minecraft:feather", None]], "Крыло планера Dark Steel"),
        ("solar_1", "enderio:item_dark_steel_upgrade:3", [[None, "minecraft:daylight_detector", None], [electrical_steel, basic_cap, electrical_steel]], "Солнечная батарея для шлема Tier 1"),
        ("solar_2", "enderio:item_dark_steel_upgrade:4", [[None, "enderio:block_solar_panel:0", None], [energetic_alloy, double_cap, energetic_alloy]], "Солнечная батарея для шлема Tier 2"),
        ("night_vision", "enderio:item_dark_steel_upgrade:5", [[None, "minecraft:golden_carrot", None], [dark_steel, "minecraft:potion", dark_steel]], "Ночное зрение для шлема"),
        ("goggles", "enderio:item_dark_steel_upgrade:6", [[None, "thaumcraft:goggles", None], [dark_steel, basic_cap, dark_steel]], "Очки откровения для шлема"),
        ("jump_1", "enderio:item_dark_steel_upgrade:7", [[None, "minecraft:piston", None], [dark_steel, basic_cap, dark_steel]], "Улучшение прыжка Tier 1"),
        ("jump_2", "enderio:item_dark_steel_upgrade:8", [[None, "minecraft:slime_ball", None], [dark_steel, double_cap, dark_steel]], "Улучшение прыжка Tier 2"),
        ("speed_1", "enderio:item_dark_steel_upgrade:9", [[None, "minecraft:sugar", None], [dark_steel, basic_cap, dark_steel]], "Улучшение скорости бега Tier 1"),
        ("speed_2", "enderio:item_dark_steel_upgrade:10", [[None, "minecraft:blaze_powder", None], [dark_steel, double_cap, dark_steel]], "Улучшение скорости бега Tier 2"),
        ("spoon", "enderio:item_dark_steel_upgrade:11", [[None, "minecraft:iron_shovel", None], [dark_steel, None, None]], "Насадка-ложка для кирки"),
        ("fork", "enderio:item_dark_steel_upgrade:12", [[None, "minecraft:iron_hoe", None], [dark_steel, None, None]], "Насадка-вилы для топора"),
        ("elytra", "enderio:item_dark_steel_upgrade:13", [[None, "minecraft:elytra", None], [dark_steel, octadic_cap, dark_steel]], "Интеграция элитр в кирасу"),
        ("soulbound", "enderio:item_dark_steel_upgrade:14", [[None, "minecraft:nether_star", None], [soularium, octadic_cap, soularium]], "Привязка к душе (Soulbound)")
    ]
    for uid, uout, upat, udesc in dark_upgrades:
        recipes.append(Recipe(
            name=f"nexus_exp_eio_upg_{uid}",
            output=uout,
            is_shaped=True,
            remove_output=False,
            comment=udesc,
            pattern=upat
        ))

    # 7. SOLAR PANELS
    recipes.append(Recipe(
        name="nexus_exp_eio_solar_simple",
        output="enderio:block_solar_panel:0",
        is_shaped=True,
        remove_output=True,
        comment="Простая солнечная панель Ender IO",
        pattern=[
            ["minecraft:daylight_detector", "minecraft:daylight_detector", "minecraft:daylight_detector"],
            [silicon, basic_cap, silicon],
            [iron_plate, simple_chassis, iron_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_eio_solar_adv",
        output="enderio:block_solar_panel:1",
        is_shaped=True,
        remove_output=True,
        comment="Продвинутая солнечная панель Ender IO",
        pattern=[
            ["enderio:block_solar_panel:0", "enderio:block_solar_panel:0", "enderio:block_solar_panel:0"],
            [energetic_alloy, double_cap, energetic_alloy],
            [dark_steel, industrial_chassis, dark_steel]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_eio_solar_vibrant",
        output="enderio:block_solar_panel:2",
        is_shaped=True,
        remove_output=True,
        comment="Вибрирующая солнечная панель Ender IO",
        pattern=[
            ["enderio:block_solar_panel:1", "enderio:block_solar_panel:1", "enderio:block_solar_panel:1"],
            [vibrant_alloy, octadic_cap, vibrant_alloy],
            [end_steel, enhanced_chassis, end_steel]
        ]
    ))

    return recipes
