// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Ender IO, Endergy & Enhanced Conduits
// Generated Recipes: 63
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Базовый конденсатор Ender IO
recipes.remove(<enderio:item_basic_capacitor:0>);
recipes.addShaped("nexus_exp_eio_cap_basic", <enderio:item_basic_capacitor:0>, [
    [null, <thermalfoundation:material:33>, <enderio:item_material:20>],
    [<thermalfoundation:material:33>, <thermalfoundation:material:320>, <thermalfoundation:material:33>],
    [<enderio:item_material:20>, <thermalfoundation:material:33>, null]
]);

// Двухслойный конденсатор
recipes.remove(<enderio:item_basic_capacitor:1>);
recipes.addShaped("nexus_exp_eio_cap_double", <enderio:item_basic_capacitor:1>, [
    [null, <enderio:item_alloy_ingot:1>, null],
    [<enderio:item_basic_capacitor:0>, <minecraft:coal:1>, <enderio:item_basic_capacitor:0>],
    [null, <enderio:item_alloy_ingot:1>, null]
]);

// Восьмеричный конденсатор
recipes.remove(<enderio:item_basic_capacitor:2>);
recipes.addShaped("nexus_exp_eio_cap_octadic", <enderio:item_basic_capacitor:2>, [
    [null, <enderio:item_alloy_ingot:2>, null],
    [<enderio:item_basic_capacitor:1>, <minecraft:glowstone>, <enderio:item_basic_capacitor:1>],
    [null, <enderio:item_alloy_ingot:2>, null]
]);

// Конденсатор Endergy: grainary
recipes.remove(<enderio:item_capacitor_grainy>);
recipes.addShaped("nexus_exp_eio_cap_grainary", <enderio:item_capacitor_grainy>, [
    [null, <enderio:item_material:20>, null],
    [<minecraft:paper>, <enderio:item_material:20>, <minecraft:paper>],
    [null, <enderio:item_material:20>, null]
]);

// Конденсатор Endergy: silver
recipes.remove(<enderio:item_capacitor_silver>);
recipes.addShaped("nexus_exp_eio_cap_silver", <enderio:item_capacitor_silver>, [
    [null, <thermalfoundation:material:322>, null],
    [<enderio:item_basic_capacitor:0>, <enderio:item_material:20>, <enderio:item_basic_capacitor:0>],
    [null, <thermalfoundation:material:322>, null]
]);

// Конденсатор Endergy: energetic_silver
recipes.remove(<enderio:item_capacitor_energetic_silver>);
recipes.addShaped("nexus_exp_eio_cap_energetic_silver", <enderio:item_capacitor_energetic_silver>, [
    [null, <thermalfoundation:material:353>, null],
    [<enderio:item_basic_capacitor:1>, <enderio:item_material:20>, <enderio:item_basic_capacitor:1>],
    [null, <thermalfoundation:material:353>, null]
]);

// Конденсатор Endergy: vibrant_silver
recipes.remove(<enderio:item_capacitor_vibrant_silver>);
recipes.addShaped("nexus_exp_eio_cap_vibrant_silver", <enderio:item_capacitor_vibrant_silver>, [
    [null, <thermalfoundation:material:359>, null],
    [<enderio:item_basic_capacitor:2>, <enderio:item_material:20>, <enderio:item_basic_capacitor:2>],
    [null, <thermalfoundation:material:359>, null]
]);

// Конденсатор Endergy: crystalline
recipes.remove(<enderio:item_capacitor_crystalline>);
recipes.addShaped("nexus_exp_eio_cap_crystalline", <enderio:item_capacitor_crystalline>, [
    [null, <enderio:item_alloy_endergy_ingot:1>, null],
    [<enderio:item_basic_capacitor:2>, <enderio:item_material:20>, <enderio:item_basic_capacitor:2>],
    [null, <enderio:item_alloy_endergy_ingot:1>, null]
]);

// Конденсатор Endergy: melodic
recipes.remove(<enderio:item_capacitor_melodic>);
recipes.addShaped("nexus_exp_eio_cap_melodic", <enderio:item_capacitor_melodic>, [
    [null, <enderio:item_alloy_endergy_ingot:2>, null],
    [<enderio:item_basic_capacitor:2>, <enderio:item_material:20>, <enderio:item_basic_capacitor:2>],
    [null, <enderio:item_alloy_endergy_ingot:2>, null]
]);

// Конденсатор Endergy: stellar
recipes.remove(<enderio:item_capacitor_stellar>);
recipes.addShaped("nexus_exp_eio_cap_stellar", <enderio:item_capacitor_stellar>, [
    [null, <enderio:item_alloy_endergy_ingot:3>, null],
    [<enderio:item_basic_capacitor:2>, <enderio:item_material:20>, <enderio:item_basic_capacitor:2>],
    [null, <enderio:item_alloy_endergy_ingot:3>, null]
]);

// Композитный связующий материал для труб
recipes.remove(<enderio:item_material:4>);
recipes.addShaped("nexus_exp_eio_conduit_binder", <enderio:item_material:4> * 16, [
    [<minecraft:clay_ball>, <minecraft:gravel>, <minecraft:clay_ball>],
    [<minecraft:sand>, <enderio:item_material:20>, <minecraft:sand>],
    [<minecraft:clay_ball>, <minecraft:gravel>, <minecraft:clay_ball>]
]);

// Труба для предметов (Item Conduit)
recipes.remove(<enderio:item_item_conduit>);
recipes.addShaped("nexus_exp_eio_conduit_item", <enderio:item_item_conduit> * 8, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<enderio:item_alloy_ingot:5>, <enderio:item_alloy_ingot:5>, <enderio:item_alloy_ingot:5>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// Жидкостная труба (Fluid Conduit)
recipes.remove(<enderio:item_liquid_conduit:0>);
recipes.addShaped("nexus_exp_eio_conduit_fluid_basic", <enderio:item_liquid_conduit:0> * 8, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// Напорная жидкостная труба
recipes.remove(<enderio:item_liquid_conduit:1>);
recipes.addShaped("nexus_exp_eio_conduit_fluid_pressurized", <enderio:item_liquid_conduit:1> * 8, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<minecraft:glass>, <minecraft:piston>, <minecraft:glass>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// Эндер-жидкостная труба
recipes.remove(<enderio:item_liquid_conduit:2>);
recipes.addShaped("nexus_exp_eio_conduit_fluid_ender", <enderio:item_liquid_conduit:2> * 8, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<enderio:item_alloy_ingot:2>, <enderio:item_liquid_conduit:1>, <enderio:item_alloy_ingot:2>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// Энергетическая труба 1,000 RF/t
recipes.remove(<enderio:item_power_conduit:0>);
recipes.addShaped("nexus_exp_eio_conduit_power_1k", <enderio:item_power_conduit:0> * 8, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:4>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// Энергетическая труба 5,000 RF/t
recipes.remove(<enderio:item_power_conduit:1>);
recipes.addShaped("nexus_exp_eio_conduit_power_5k", <enderio:item_power_conduit:1> * 8, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:1>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// Энергетическая труба 20,000 RF/t
recipes.remove(<enderio:item_power_conduit:2>);
recipes.addShaped("nexus_exp_eio_conduit_power_20k", <enderio:item_power_conduit:2> * 8, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:2>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// Редстоун труба Ender IO
recipes.remove(<enderio:item_redstone_conduit:0>);
recipes.addShaped("nexus_exp_eio_conduit_redstone", <enderio:item_redstone_conduit:0> * 8, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:3>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// Фасад для труб Ender IO
recipes.remove(<enderio:item_conduit_facade:0>);
recipes.addShaped("nexus_exp_eio_conduit_facade", <enderio:item_conduit_facade:0> * 4, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<enderio:item_material:4>, null, <enderio:item_material:4>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// Базовый фильтр предметов
recipes.remove(<enderio:item_basic_item_filter>);
recipes.addShaped("nexus_exp_eio_basic_filter", <enderio:item_basic_item_filter>, [
    [null, <minecraft:paper>, null],
    [<minecraft:paper>, <minecraft:iron_bars>, <minecraft:paper>],
    [null, <minecraft:paper>, null]
]);

// Продвинутый фильтр предметов
recipes.remove(<enderio:item_advanced_item_filter>);
recipes.addShaped("nexus_exp_eio_adv_filter", <enderio:item_advanced_item_filter>, [
    [null, <minecraft:redstone>, null],
    [<enderio:item_alloy_ingot:3>, <enderio:item_basic_item_filter>, <enderio:item_alloy_ingot:3>],
    [null, <minecraft:redstone>, null]
]);

// Ограничивающий фильтр
recipes.remove(<enderio:item_limited_item_filter>);
recipes.addShaped("nexus_exp_eio_limited_filter", <enderio:item_limited_item_filter>, [
    [null, <minecraft:comparator>, null],
    [<enderio:item_alloy_ingot:3>, <enderio:item_basic_item_filter>, <enderio:item_alloy_ingot:3>],
    [null, <minecraft:comparator>, null]
]);

// Большой фильтр предметов
recipes.remove(<enderio:item_big_item_filter>);
recipes.addShaped("nexus_exp_eio_big_filter", <enderio:item_big_item_filter>, [
    [null, <enderio:item_alloy_ingot:5>, null],
    [<enderio:item_alloy_ingot:3>, <enderio:item_advanced_item_filter>, <enderio:item_alloy_ingot:3>],
    [null, <enderio:item_alloy_ingot:5>, null]
]);

// Фильтр по модификациям
recipes.remove(<enderio:item_mod_item_filter>);
recipes.addShaped("nexus_exp_eio_mod_filter", <enderio:item_mod_item_filter>, [
    [null, <minecraft:book>, null],
    [<enderio:item_alloy_ingot:0>, <enderio:item_basic_item_filter>, <enderio:item_alloy_ingot:0>],
    [null, <minecraft:book>, null]
]);

// Ускоритель извлечения
recipes.remove(<enderio:item_extract_speed_upgrade>);
recipes.addShaped("nexus_exp_eio_speed_upgrade", <enderio:item_extract_speed_upgrade>, [
    [null, <minecraft:piston>, null],
    [<enderio:item_material:4>, <enderio:item_alloy_ingot:4>, <enderio:item_material:4>],
    [null, <minecraft:redstone>, null]
]);

// Продвинутый ускоритель извлечения
recipes.remove(<enderio:item_extract_speed_upgrade:1>);
recipes.addShaped("nexus_exp_eio_speed_upgrade_adv", <enderio:item_extract_speed_upgrade:1>, [
    [null, <minecraft:piston>, null],
    [<enderio:item_material:4>, <enderio:item_alloy_ingot:1>, <enderio:item_material:4>],
    [null, <minecraft:redstone>, null]
]);

// Завод сплавов (Alloy Smelter)
recipes.remove(<enderio:block_alloy_smelter>);
recipes.addShaped("nexus_exp_eio_mach_alloy_smelter", <enderio:block_alloy_smelter>, [
    [<enderio:item_material:1>, <minecraft:furnace>, <enderio:item_material:1>],
    [<minecraft:furnace>, <enderio:item_material:1>, <minecraft:furnace>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:0>, <enderio:item_alloy_ingot:6>]
]);

// Дробитель SAG Mill
recipes.remove(<enderio:block_sag_mill>);
recipes.addShaped("nexus_exp_eio_mach_sag_mill", <enderio:block_sag_mill>, [
    [<thermalfoundation:material:32>, <minecraft:piston>, <thermalfoundation:material:32>],
    [<minecraft:flint>, <enderio:item_material:1>, <minecraft:flint>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:0>, <enderio:item_alloy_ingot:6>]
]);

// Авто-верстак Ender IO
recipes.remove(<enderio:block_crafter>);
recipes.addShaped("nexus_exp_eio_mach_crafter", <enderio:block_crafter>, [
    [<enderio:item_material:5>, <minecraft:crafting_table>, <enderio:item_material:5>],
    [<minecraft:crafting_table>, <enderio:item_material:1>, <minecraft:crafting_table>],
    [<enderio:item_material:5>, <enderio:item_basic_capacitor:0>, <enderio:item_material:5>]
]);

// Бродильный чан (The Vat)
recipes.remove(<enderio:block_vat>);
recipes.addShaped("nexus_exp_eio_mach_vat", <enderio:block_vat>, [
    [<thermalfoundation:material:32>, <minecraft:cauldron>, <thermalfoundation:material:32>],
    [<minecraft:bucket>, <enderio:item_material:1>, <minecraft:bucket>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:0>, <enderio:item_alloy_ingot:6>]
]);

// Сшиватель душ (Slice'N'Splice)
recipes.remove(<enderio:block_slice_and_splice>);
recipes.addShaped("nexus_exp_eio_mach_slice_and_splice", <enderio:block_slice_and_splice>, [
    [<minecraft:iron_axe>, <minecraft:shears>, <minecraft:iron_axe>],
    [<enderio:item_alloy_ingot:7>, <enderio:item_material:53>, <enderio:item_alloy_ingot:7>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:0>, <enderio:item_alloy_ingot:6>]
]);

// Связыватель душ (Soul Binder)
recipes.remove(<enderio:block_soul_binder>);
recipes.addShaped("nexus_exp_eio_mach_soul_binder", <enderio:block_soul_binder>, [
    [<minecraft:soul_sand>, <enderio:item_alloy_ingot:7>, <minecraft:soul_sand>],
    [<enderio:item_alloy_ingot:7>, <enderio:item_material:53>, <enderio:item_alloy_ingot:7>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:6>]
]);

// Фермерская станция
recipes.remove(<enderio:block_farm_station>);
recipes.addShaped("nexus_exp_eio_mach_farming_station", <enderio:block_farm_station>, [
    [<enderio:item_alloy_ingot:0>, <minecraft:diamond_hoe>, <enderio:item_alloy_ingot:0>],
    [<enderio:item_alloy_ingot:0>, <enderio:item_material:1>, <enderio:item_alloy_ingot:0>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:6>]
]);

// Генератор Стирлинга
recipes.remove(<enderio:block_stirling_generator>);
recipes.addShaped("nexus_exp_eio_mach_stirling_gen", <enderio:block_stirling_generator>, [
    [<thermalfoundation:material:32>, <minecraft:furnace>, <thermalfoundation:material:32>],
    [<minecraft:piston>, <enderio:item_material:0>, <minecraft:piston>],
    [<thermalfoundation:material:320>, <enderio:item_basic_capacitor:0>, <thermalfoundation:material:320>]
]);

// Поглотитель опыта (XP Vacuum)
recipes.remove(<enderio:block_xp_vacuum>);
recipes.addShaped("nexus_exp_eio_mach_xp_vacuum", <enderio:block_xp_vacuum>, [
    [<thermalfoundation:material:32>, <minecraft:hopper>, <thermalfoundation:material:32>],
    [<enderio:item_alloy_ingot:5>, <enderio:item_material:0>, <enderio:item_alloy_ingot:5>],
    [<thermalfoundation:material:32>, <minecraft:glass_bottle>, <thermalfoundation:material:32>]
]);

// Пространственный трансивер
recipes.remove(<enderio:block_transceiver>);
recipes.addShaped("nexus_exp_eio_mach_dimensional_transceiver", <enderio:block_transceiver>, [
    [<thermalfoundation:material:359>, <minecraft:ender_eye>, <thermalfoundation:material:359>],
    [<enderio:item_basic_capacitor:2>, <enderio:item_material:54>, <enderio:item_basic_capacitor:2>],
    [<thermalfoundation:material:359>, <minecraft:ender_eye>, <thermalfoundation:material:359>]
]);

// Темный стальной меч
recipes.remove(<enderio:item_dark_steel_sword>);
recipes.addShaped("nexus_exp_eio_gear_dark_sword", <enderio:item_dark_steel_sword>, [
    [<enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:7>]
]);

// Темная стальная кирка
recipes.remove(<enderio:item_dark_steel_pickaxe>);
recipes.addShaped("nexus_exp_eio_gear_dark_pick", <enderio:item_dark_steel_pickaxe>, [
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],
    [null, <enderio:item_alloy_ingot:7>, null],
    [null, <enderio:item_alloy_ingot:7>, null]
]);

// Темный стальной топор
recipes.remove(<enderio:item_dark_steel_axe>);
recipes.addShaped("nexus_exp_eio_gear_dark_axe", <enderio:item_dark_steel_axe>, [
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:7>],
    [null, <enderio:item_alloy_ingot:7>]
]);

// Темный стальной лук
recipes.remove(<enderio:item_dark_steel_bow>);
recipes.addShaped("nexus_exp_eio_gear_dark_bow", <enderio:item_dark_steel_bow>, [
    [null, <enderio:item_alloy_ingot:6>, <minecraft:string>],
    [<enderio:item_alloy_ingot:6>, null, <minecraft:string>],
    [null, <enderio:item_alloy_ingot:6>, <minecraft:string>]
]);

// Темный стальной шлем
recipes.remove(<enderio:item_dark_steel_helmet>);
recipes.addShaped("nexus_exp_eio_gear_dark_helm", <enderio:item_dark_steel_helmet>, [
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:6>, null, <enderio:item_alloy_ingot:6>]
]);

// Темный стальной нагрудник
recipes.remove(<enderio:item_dark_steel_chestplate>);
recipes.addShaped("nexus_exp_eio_gear_dark_chest", <enderio:item_dark_steel_chestplate>, [
    [<enderio:item_alloy_ingot:6>, null, <enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>]
]);

// Темные стальные поножи
recipes.remove(<enderio:item_dark_steel_leggings>);
recipes.addShaped("nexus_exp_eio_gear_dark_legs", <enderio:item_dark_steel_leggings>, [
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:6>, null, <enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:6>, null, <enderio:item_alloy_ingot:6>]
]);

// Темные стальные сапоги
recipes.remove(<enderio:item_dark_steel_boots>);
recipes.addShaped("nexus_exp_eio_gear_dark_boots", <enderio:item_dark_steel_boots>, [
    [<enderio:item_alloy_ingot:6>, null, <enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:6>, null, <enderio:item_alloy_ingot:6>]
]);

// Стеллар меч Endergy
recipes.remove(<enderio:item_stellar_alloy_sword>);
recipes.addShaped("nexus_exp_eio_gear_stellar_sword", <enderio:item_stellar_alloy_sword>, [
    [<enderio:item_alloy_endergy_ingot:3>],
    [<enderio:item_alloy_endergy_ingot:3>],
    [<enderio:item_alloy_ingot:8>]
]);

// Стеллар кирка Endergy
recipes.remove(<enderio:item_stellar_alloy_pickaxe>);
recipes.addShaped("nexus_exp_eio_gear_stellar_pick", <enderio:item_stellar_alloy_pickaxe>, [
    [<enderio:item_alloy_endergy_ingot:3>, <enderio:item_alloy_endergy_ingot:3>, <enderio:item_alloy_endergy_ingot:3>],
    [null, <enderio:item_alloy_ingot:8>, null],
    [null, <enderio:item_alloy_ingot:8>, null]
]);

// Крыло планера Dark Steel
recipes.addShaped("nexus_exp_eio_upg_glider_wing", <enderio:item_dark_steel_upgrade:1>, [
    [null, <minecraft:leather>, null],
    [<minecraft:leather>, <enderio:item_alloy_ingot:6>, <minecraft:leather>],
    [null, <minecraft:feather>, null]
]);

// Солнечная батарея для шлема Tier 1
recipes.addShaped("nexus_exp_eio_upg_solar_1", <enderio:item_dark_steel_upgrade:3>, [
    [null, <minecraft:daylight_detector>, null],
    [<enderio:item_alloy_ingot:0>, <enderio:item_basic_capacitor:0>, <enderio:item_alloy_ingot:0>]
]);

// Солнечная батарея для шлема Tier 2
recipes.addShaped("nexus_exp_eio_upg_solar_2", <enderio:item_dark_steel_upgrade:4>, [
    [null, <enderio:block_solar_panel:0>, null],
    [<enderio:item_alloy_ingot:1>, <enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:1>]
]);

// Ночное зрение для шлема
recipes.addShaped("nexus_exp_eio_upg_night_vision", <enderio:item_dark_steel_upgrade:5>, [
    [null, <minecraft:golden_carrot>, null],
    [<enderio:item_alloy_ingot:6>, <minecraft:potion>, <enderio:item_alloy_ingot:6>]
]);

// Очки откровения для шлема
recipes.addShaped("nexus_exp_eio_upg_goggles", <enderio:item_dark_steel_upgrade:6>, [
    [null, <thaumcraft:goggles>, null],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:0>, <enderio:item_alloy_ingot:6>]
]);

// Улучшение прыжка Tier 1
recipes.addShaped("nexus_exp_eio_upg_jump_1", <enderio:item_dark_steel_upgrade:7>, [
    [null, <minecraft:piston>, null],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:0>, <enderio:item_alloy_ingot:6>]
]);

// Улучшение прыжка Tier 2
recipes.addShaped("nexus_exp_eio_upg_jump_2", <enderio:item_dark_steel_upgrade:8>, [
    [null, <minecraft:slime_ball>, null],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:6>]
]);

// Улучшение скорости бега Tier 1
recipes.addShaped("nexus_exp_eio_upg_speed_1", <enderio:item_dark_steel_upgrade:9>, [
    [null, <minecraft:sugar>, null],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:0>, <enderio:item_alloy_ingot:6>]
]);

// Улучшение скорости бега Tier 2
recipes.addShaped("nexus_exp_eio_upg_speed_2", <enderio:item_dark_steel_upgrade:10>, [
    [null, <minecraft:blaze_powder>, null],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:6>]
]);

// Насадка-ложка для кирки
recipes.addShaped("nexus_exp_eio_upg_spoon", <enderio:item_dark_steel_upgrade:11>, [
    [null, <minecraft:iron_shovel>, null],
    [<enderio:item_alloy_ingot:6>, null, null]
]);

// Насадка-вилы для топора
recipes.addShaped("nexus_exp_eio_upg_fork", <enderio:item_dark_steel_upgrade:12>, [
    [null, <minecraft:iron_hoe>, null],
    [<enderio:item_alloy_ingot:6>, null, null]
]);

// Интеграция элитр в кирасу
recipes.addShaped("nexus_exp_eio_upg_elytra", <enderio:item_dark_steel_upgrade:13>, [
    [null, <minecraft:elytra>, null],
    [<enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:2>, <enderio:item_alloy_ingot:6>]
]);

// Привязка к душе (Soulbound)
recipes.addShaped("nexus_exp_eio_upg_soulbound", <enderio:item_dark_steel_upgrade:14>, [
    [null, <minecraft:nether_star>, null],
    [<enderio:item_alloy_ingot:7>, <enderio:item_basic_capacitor:2>, <enderio:item_alloy_ingot:7>]
]);

// Простая солнечная панель Ender IO
recipes.remove(<enderio:block_solar_panel:0>);
recipes.addShaped("nexus_exp_eio_solar_simple", <enderio:block_solar_panel:0>, [
    [<minecraft:daylight_detector>, <minecraft:daylight_detector>, <minecraft:daylight_detector>],
    [<enderio:item_material:5>, <enderio:item_basic_capacitor:0>, <enderio:item_material:5>],
    [<thermalfoundation:material:32>, <enderio:item_material:0>, <thermalfoundation:material:32>]
]);

// Продвинутая солнечная панель Ender IO
recipes.remove(<enderio:block_solar_panel:1>);
recipes.addShaped("nexus_exp_eio_solar_adv", <enderio:block_solar_panel:1>, [
    [<enderio:block_solar_panel:0>, <enderio:block_solar_panel:0>, <enderio:block_solar_panel:0>],
    [<enderio:item_alloy_ingot:1>, <enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:1>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_material:1>, <enderio:item_alloy_ingot:6>]
]);

// Вибрирующая солнечная панель Ender IO
recipes.remove(<enderio:block_solar_panel:2>);
recipes.addShaped("nexus_exp_eio_solar_vibrant", <enderio:block_solar_panel:2>, [
    [<enderio:block_solar_panel:1>, <enderio:block_solar_panel:1>, <enderio:block_solar_panel:1>],
    [<enderio:item_alloy_ingot:2>, <enderio:item_basic_capacitor:2>, <enderio:item_alloy_ingot:2>],
    [<enderio:item_alloy_ingot:8>, <enderio:item_material:54>, <enderio:item_alloy_ingot:8>]
]);
