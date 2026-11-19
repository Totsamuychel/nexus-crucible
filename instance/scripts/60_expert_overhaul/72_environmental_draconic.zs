// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Environmental Tech Tiered Arrays & Draconic Evolution
// Generated Recipes: 55
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Контроллер рудного пустотного бура Tier 1
recipes.remove(<environmentaltech:void_ore_miner_cont_1>);
recipes.addShaped("nexus_exp_et_ore_miner_t1", <environmentaltech:void_ore_miner_cont_1>, [
    [<environmentaltech:litherite_crystal>, <minecraft:diamond_block>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:litherite_crystal>, <minecraft:diamond_pickaxe>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:litherite_crystal>, <environmentaltech:laser_core>, <environmentaltech:litherite_crystal>]
]);

// Контроллер ресурсного пустотного бура Tier 1
recipes.remove(<environmentaltech:void_res_miner_cont_1>);
recipes.addShaped("nexus_exp_et_res_miner_t1", <environmentaltech:void_res_miner_cont_1>, [
    [<environmentaltech:litherite_crystal>, <minecraft:emerald_block>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:litherite_crystal>, <minecraft:diamond_shovel>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:litherite_crystal>, <environmentaltech:laser_core>, <environmentaltech:litherite_crystal>]
]);

// Контроллер солнечной панели Tier 1
recipes.remove(<environmentaltech:solar_cont_1>);
recipes.addShaped("nexus_exp_et_solar_cont_t1", <environmentaltech:solar_cont_1>, [
    [<environmentaltech:litherite_crystal>, <minecraft:daylight_detector>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:litherite_crystal>, <minecraft:glowstone>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:litherite_crystal>, <environmentaltech:structure_frame_1>, <environmentaltech:litherite_crystal>]
]);

// Структурный каркас Environmental Tech Tier 1
recipes.remove(<environmentaltech:structure_frame_1>);
recipes.addShaped("nexus_exp_et_frame_t1", <environmentaltech:structure_frame_1> * 4, [
    [<environmentaltech:litherite_crystal>, <thermalfoundation:material:352>, <environmentaltech:litherite_crystal>],
    [<thermalfoundation:material:352>, null, <thermalfoundation:material:352>],
    [<environmentaltech:litherite_crystal>, <thermalfoundation:material:352>, <environmentaltech:litherite_crystal>]
]);

// Нано-маяк Environmental Tech Tier 1
recipes.remove(<environmentaltech:nano_cont_1>);
recipes.addShaped("nexus_exp_et_beacon_t1", <environmentaltech:nano_cont_1>, [
    [<environmentaltech:litherite_crystal>, <minecraft:beacon>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:litherite_crystal>, <environmentaltech:structure_frame_1>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:litherite_crystal>, <minecraft:nether_star>, <environmentaltech:litherite_crystal>]
]);

// Громоотводный генератор Environmental Tech Tier 1
recipes.remove(<environmentaltech:lightning_cont_1>);
recipes.addShaped("nexus_exp_et_lightning_t1", <environmentaltech:lightning_cont_1>, [
    [<environmentaltech:litherite_crystal>, <minecraft:iron_bars>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:litherite_crystal>, <environmentaltech:structure_frame_1>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:litherite_crystal>, <thermalfoundation:material:352>, <environmentaltech:litherite_crystal>]
]);

// Контроллер рудного пустотного бура Tier 2
recipes.remove(<environmentaltech:void_ore_miner_cont_2>);
recipes.addShaped("nexus_exp_et_ore_miner_t2", <environmentaltech:void_ore_miner_cont_2>, [
    [<environmentaltech:erodio_crystal>, <minecraft:diamond_block>, <environmentaltech:erodio_crystal>],
    [<environmentaltech:erodio_crystal>, <environmentaltech:void_ore_miner_cont_1>, <environmentaltech:erodio_crystal>],
    [<environmentaltech:erodio_crystal>, <environmentaltech:laser_core>, <environmentaltech:erodio_crystal>]
]);

// Контроллер ресурсного пустотного бура Tier 2
recipes.remove(<environmentaltech:void_res_miner_cont_2>);
recipes.addShaped("nexus_exp_et_res_miner_t2", <environmentaltech:void_res_miner_cont_2>, [
    [<environmentaltech:erodio_crystal>, <minecraft:emerald_block>, <environmentaltech:erodio_crystal>],
    [<environmentaltech:erodio_crystal>, <environmentaltech:void_res_miner_cont_1>, <environmentaltech:erodio_crystal>],
    [<environmentaltech:erodio_crystal>, <environmentaltech:laser_core>, <environmentaltech:erodio_crystal>]
]);

// Контроллер солнечной панели Tier 2
recipes.remove(<environmentaltech:solar_cont_2>);
recipes.addShaped("nexus_exp_et_solar_cont_t2", <environmentaltech:solar_cont_2>, [
    [<environmentaltech:erodio_crystal>, <minecraft:daylight_detector>, <environmentaltech:erodio_crystal>],
    [<environmentaltech:erodio_crystal>, <minecraft:glowstone>, <environmentaltech:erodio_crystal>],
    [<environmentaltech:erodio_crystal>, <environmentaltech:structure_frame_2>, <environmentaltech:erodio_crystal>]
]);

// Структурный каркас Environmental Tech Tier 2
recipes.remove(<environmentaltech:structure_frame_2>);
recipes.addShaped("nexus_exp_et_frame_t2", <environmentaltech:structure_frame_2> * 4, [
    [<environmentaltech:erodio_crystal>, <thermalfoundation:material:352>, <environmentaltech:erodio_crystal>],
    [<thermalfoundation:material:352>, null, <thermalfoundation:material:352>],
    [<environmentaltech:erodio_crystal>, <thermalfoundation:material:352>, <environmentaltech:erodio_crystal>]
]);

// Нано-маяк Environmental Tech Tier 2
recipes.remove(<environmentaltech:nano_cont_2>);
recipes.addShaped("nexus_exp_et_beacon_t2", <environmentaltech:nano_cont_2>, [
    [<environmentaltech:erodio_crystal>, <minecraft:beacon>, <environmentaltech:erodio_crystal>],
    [<environmentaltech:erodio_crystal>, <environmentaltech:structure_frame_2>, <environmentaltech:erodio_crystal>],
    [<environmentaltech:erodio_crystal>, <minecraft:nether_star>, <environmentaltech:erodio_crystal>]
]);

// Громоотводный генератор Environmental Tech Tier 2
recipes.remove(<environmentaltech:lightning_cont_2>);
recipes.addShaped("nexus_exp_et_lightning_t2", <environmentaltech:lightning_cont_2>, [
    [<environmentaltech:erodio_crystal>, <minecraft:iron_bars>, <environmentaltech:erodio_crystal>],
    [<environmentaltech:erodio_crystal>, <environmentaltech:structure_frame_2>, <environmentaltech:erodio_crystal>],
    [<environmentaltech:erodio_crystal>, <thermalfoundation:material:352>, <environmentaltech:erodio_crystal>]
]);

// Контроллер рудного пустотного бура Tier 3
recipes.remove(<environmentaltech:void_ore_miner_cont_3>);
recipes.addShaped("nexus_exp_et_ore_miner_t3", <environmentaltech:void_ore_miner_cont_3>, [
    [<environmentaltech:kyronite_crystal>, <minecraft:diamond_block>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <environmentaltech:void_ore_miner_cont_2>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <environmentaltech:laser_core>, <environmentaltech:kyronite_crystal>]
]);

// Контроллер ресурсного пустотного бура Tier 3
recipes.remove(<environmentaltech:void_res_miner_cont_3>);
recipes.addShaped("nexus_exp_et_res_miner_t3", <environmentaltech:void_res_miner_cont_3>, [
    [<environmentaltech:kyronite_crystal>, <minecraft:emerald_block>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <environmentaltech:void_res_miner_cont_2>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <environmentaltech:laser_core>, <environmentaltech:kyronite_crystal>]
]);

// Контроллер солнечной панели Tier 3
recipes.remove(<environmentaltech:solar_cont_3>);
recipes.addShaped("nexus_exp_et_solar_cont_t3", <environmentaltech:solar_cont_3>, [
    [<environmentaltech:kyronite_crystal>, <minecraft:daylight_detector>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <minecraft:glowstone>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <environmentaltech:structure_frame_3>, <environmentaltech:kyronite_crystal>]
]);

// Структурный каркас Environmental Tech Tier 3
recipes.remove(<environmentaltech:structure_frame_3>);
recipes.addShaped("nexus_exp_et_frame_t3", <environmentaltech:structure_frame_3> * 4, [
    [<environmentaltech:kyronite_crystal>, <thermalfoundation:material:352>, <environmentaltech:kyronite_crystal>],
    [<thermalfoundation:material:352>, null, <thermalfoundation:material:352>],
    [<environmentaltech:kyronite_crystal>, <thermalfoundation:material:352>, <environmentaltech:kyronite_crystal>]
]);

// Нано-маяк Environmental Tech Tier 3
recipes.remove(<environmentaltech:nano_cont_3>);
recipes.addShaped("nexus_exp_et_beacon_t3", <environmentaltech:nano_cont_3>, [
    [<environmentaltech:kyronite_crystal>, <minecraft:beacon>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <environmentaltech:structure_frame_3>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <minecraft:nether_star>, <environmentaltech:kyronite_crystal>]
]);

// Громоотводный генератор Environmental Tech Tier 3
recipes.remove(<environmentaltech:lightning_cont_3>);
recipes.addShaped("nexus_exp_et_lightning_t3", <environmentaltech:lightning_cont_3>, [
    [<environmentaltech:kyronite_crystal>, <minecraft:iron_bars>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <environmentaltech:structure_frame_3>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:kyronite_crystal>, <thermalfoundation:material:352>, <environmentaltech:kyronite_crystal>]
]);

// Контроллер рудного пустотного бура Tier 4
recipes.remove(<environmentaltech:void_ore_miner_cont_4>);
recipes.addShaped("nexus_exp_et_ore_miner_t4", <environmentaltech:void_ore_miner_cont_4>, [
    [<environmentaltech:pladium_crystal>, <minecraft:diamond_block>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:pladium_crystal>, <environmentaltech:void_ore_miner_cont_3>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:pladium_crystal>, <environmentaltech:laser_core>, <environmentaltech:pladium_crystal>]
]);

// Контроллер ресурсного пустотного бура Tier 4
recipes.remove(<environmentaltech:void_res_miner_cont_4>);
recipes.addShaped("nexus_exp_et_res_miner_t4", <environmentaltech:void_res_miner_cont_4>, [
    [<environmentaltech:pladium_crystal>, <minecraft:emerald_block>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:pladium_crystal>, <environmentaltech:void_res_miner_cont_3>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:pladium_crystal>, <environmentaltech:laser_core>, <environmentaltech:pladium_crystal>]
]);

// Контроллер солнечной панели Tier 4
recipes.remove(<environmentaltech:solar_cont_4>);
recipes.addShaped("nexus_exp_et_solar_cont_t4", <environmentaltech:solar_cont_4>, [
    [<environmentaltech:pladium_crystal>, <minecraft:daylight_detector>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:pladium_crystal>, <minecraft:glowstone>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:pladium_crystal>, <environmentaltech:structure_frame_4>, <environmentaltech:pladium_crystal>]
]);

// Структурный каркас Environmental Tech Tier 4
recipes.remove(<environmentaltech:structure_frame_4>);
recipes.addShaped("nexus_exp_et_frame_t4", <environmentaltech:structure_frame_4> * 4, [
    [<environmentaltech:pladium_crystal>, <thermalfoundation:material:352>, <environmentaltech:pladium_crystal>],
    [<thermalfoundation:material:352>, null, <thermalfoundation:material:352>],
    [<environmentaltech:pladium_crystal>, <thermalfoundation:material:352>, <environmentaltech:pladium_crystal>]
]);

// Нано-маяк Environmental Tech Tier 4
recipes.remove(<environmentaltech:nano_cont_4>);
recipes.addShaped("nexus_exp_et_beacon_t4", <environmentaltech:nano_cont_4>, [
    [<environmentaltech:pladium_crystal>, <minecraft:beacon>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:pladium_crystal>, <environmentaltech:structure_frame_4>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:pladium_crystal>, <minecraft:nether_star>, <environmentaltech:pladium_crystal>]
]);

// Громоотводный генератор Environmental Tech Tier 4
recipes.remove(<environmentaltech:lightning_cont_4>);
recipes.addShaped("nexus_exp_et_lightning_t4", <environmentaltech:lightning_cont_4>, [
    [<environmentaltech:pladium_crystal>, <minecraft:iron_bars>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:pladium_crystal>, <environmentaltech:structure_frame_4>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:pladium_crystal>, <thermalfoundation:material:352>, <environmentaltech:pladium_crystal>]
]);

// Контроллер рудного пустотного бура Tier 5
recipes.remove(<environmentaltech:void_ore_miner_cont_5>);
recipes.addShaped("nexus_exp_et_ore_miner_t5", <environmentaltech:void_ore_miner_cont_5>, [
    [<environmentaltech:ionite_crystal>, <minecraft:diamond_block>, <environmentaltech:ionite_crystal>],
    [<environmentaltech:ionite_crystal>, <environmentaltech:void_ore_miner_cont_4>, <environmentaltech:ionite_crystal>],
    [<environmentaltech:ionite_crystal>, <environmentaltech:laser_core>, <environmentaltech:ionite_crystal>]
]);

// Контроллер ресурсного пустотного бура Tier 5
recipes.remove(<environmentaltech:void_res_miner_cont_5>);
recipes.addShaped("nexus_exp_et_res_miner_t5", <environmentaltech:void_res_miner_cont_5>, [
    [<environmentaltech:ionite_crystal>, <minecraft:emerald_block>, <environmentaltech:ionite_crystal>],
    [<environmentaltech:ionite_crystal>, <environmentaltech:void_res_miner_cont_4>, <environmentaltech:ionite_crystal>],
    [<environmentaltech:ionite_crystal>, <environmentaltech:laser_core>, <environmentaltech:ionite_crystal>]
]);

// Контроллер солнечной панели Tier 5
recipes.remove(<environmentaltech:solar_cont_5>);
recipes.addShaped("nexus_exp_et_solar_cont_t5", <environmentaltech:solar_cont_5>, [
    [<environmentaltech:ionite_crystal>, <minecraft:daylight_detector>, <environmentaltech:ionite_crystal>],
    [<environmentaltech:ionite_crystal>, <minecraft:glowstone>, <environmentaltech:ionite_crystal>],
    [<environmentaltech:ionite_crystal>, <environmentaltech:structure_frame_5>, <environmentaltech:ionite_crystal>]
]);

// Структурный каркас Environmental Tech Tier 5
recipes.remove(<environmentaltech:structure_frame_5>);
recipes.addShaped("nexus_exp_et_frame_t5", <environmentaltech:structure_frame_5> * 4, [
    [<environmentaltech:ionite_crystal>, <thermalfoundation:material:352>, <environmentaltech:ionite_crystal>],
    [<thermalfoundation:material:352>, null, <thermalfoundation:material:352>],
    [<environmentaltech:ionite_crystal>, <thermalfoundation:material:352>, <environmentaltech:ionite_crystal>]
]);

// Нано-маяк Environmental Tech Tier 5
recipes.remove(<environmentaltech:nano_cont_5>);
recipes.addShaped("nexus_exp_et_beacon_t5", <environmentaltech:nano_cont_5>, [
    [<environmentaltech:ionite_crystal>, <minecraft:beacon>, <environmentaltech:ionite_crystal>],
    [<environmentaltech:ionite_crystal>, <environmentaltech:structure_frame_5>, <environmentaltech:ionite_crystal>],
    [<environmentaltech:ionite_crystal>, <minecraft:nether_star>, <environmentaltech:ionite_crystal>]
]);

// Громоотводный генератор Environmental Tech Tier 5
recipes.remove(<environmentaltech:lightning_cont_5>);
recipes.addShaped("nexus_exp_et_lightning_t5", <environmentaltech:lightning_cont_5>, [
    [<environmentaltech:ionite_crystal>, <minecraft:iron_bars>, <environmentaltech:ionite_crystal>],
    [<environmentaltech:ionite_crystal>, <environmentaltech:structure_frame_5>, <environmentaltech:ionite_crystal>],
    [<environmentaltech:ionite_crystal>, <thermalfoundation:material:352>, <environmentaltech:ionite_crystal>]
]);

// Контроллер рудного пустотного бура Tier 6
recipes.remove(<environmentaltech:void_ore_miner_cont_6>);
recipes.addShaped("nexus_exp_et_ore_miner_t6", <environmentaltech:void_ore_miner_cont_6>, [
    [<environmentaltech:aethium_crystal>, <minecraft:diamond_block>, <environmentaltech:aethium_crystal>],
    [<environmentaltech:aethium_crystal>, <environmentaltech:void_ore_miner_cont_5>, <environmentaltech:aethium_crystal>],
    [<environmentaltech:aethium_crystal>, <environmentaltech:laser_core>, <environmentaltech:aethium_crystal>]
]);

// Контроллер ресурсного пустотного бура Tier 6
recipes.remove(<environmentaltech:void_res_miner_cont_6>);
recipes.addShaped("nexus_exp_et_res_miner_t6", <environmentaltech:void_res_miner_cont_6>, [
    [<environmentaltech:aethium_crystal>, <minecraft:emerald_block>, <environmentaltech:aethium_crystal>],
    [<environmentaltech:aethium_crystal>, <environmentaltech:void_res_miner_cont_5>, <environmentaltech:aethium_crystal>],
    [<environmentaltech:aethium_crystal>, <environmentaltech:laser_core>, <environmentaltech:aethium_crystal>]
]);

// Контроллер солнечной панели Tier 6
recipes.remove(<environmentaltech:solar_cont_6>);
recipes.addShaped("nexus_exp_et_solar_cont_t6", <environmentaltech:solar_cont_6>, [
    [<environmentaltech:aethium_crystal>, <minecraft:daylight_detector>, <environmentaltech:aethium_crystal>],
    [<environmentaltech:aethium_crystal>, <minecraft:glowstone>, <environmentaltech:aethium_crystal>],
    [<environmentaltech:aethium_crystal>, <environmentaltech:structure_frame_6>, <environmentaltech:aethium_crystal>]
]);

// Структурный каркас Environmental Tech Tier 6
recipes.remove(<environmentaltech:structure_frame_6>);
recipes.addShaped("nexus_exp_et_frame_t6", <environmentaltech:structure_frame_6> * 4, [
    [<environmentaltech:aethium_crystal>, <thermalfoundation:material:352>, <environmentaltech:aethium_crystal>],
    [<thermalfoundation:material:352>, null, <thermalfoundation:material:352>],
    [<environmentaltech:aethium_crystal>, <thermalfoundation:material:352>, <environmentaltech:aethium_crystal>]
]);

// Нано-маяк Environmental Tech Tier 6
recipes.remove(<environmentaltech:nano_cont_6>);
recipes.addShaped("nexus_exp_et_beacon_t6", <environmentaltech:nano_cont_6>, [
    [<environmentaltech:aethium_crystal>, <minecraft:beacon>, <environmentaltech:aethium_crystal>],
    [<environmentaltech:aethium_crystal>, <environmentaltech:structure_frame_6>, <environmentaltech:aethium_crystal>],
    [<environmentaltech:aethium_crystal>, <minecraft:nether_star>, <environmentaltech:aethium_crystal>]
]);

// Громоотводный генератор Environmental Tech Tier 6
recipes.remove(<environmentaltech:lightning_cont_6>);
recipes.addShaped("nexus_exp_et_lightning_t6", <environmentaltech:lightning_cont_6>, [
    [<environmentaltech:aethium_crystal>, <minecraft:iron_bars>, <environmentaltech:aethium_crystal>],
    [<environmentaltech:aethium_crystal>, <environmentaltech:structure_frame_6>, <environmentaltech:aethium_crystal>],
    [<environmentaltech:aethium_crystal>, <thermalfoundation:material:352>, <environmentaltech:aethium_crystal>]
]);

// Модификатор скорости ET
recipes.remove(<environmentaltech:modifier_speed>);
recipes.addShaped("nexus_exp_et_mod_speed", <environmentaltech:modifier_speed>, [
    [<environmentaltech:litherite_crystal>, <minecraft:sugar>, <environmentaltech:litherite_crystal>],
    [<minecraft:sugar>, <environmentaltech:modifier_null>, <minecraft:sugar>],
    [<environmentaltech:litherite_crystal>, <minecraft:sugar>, <environmentaltech:litherite_crystal>]
]);

// Модификатор точности ET
recipes.remove(<environmentaltech:modifier_accuracy>);
recipes.addShaped("nexus_exp_et_mod_accuracy", <environmentaltech:modifier_accuracy>, [
    [<environmentaltech:litherite_crystal>, <minecraft:compass>, <environmentaltech:litherite_crystal>],
    [<minecraft:compass>, <environmentaltech:modifier_null>, <minecraft:compass>],
    [<environmentaltech:litherite_crystal>, <minecraft:compass>, <environmentaltech:litherite_crystal>]
]);

// Пьезо-модификатор ET
recipes.remove(<environmentaltech:modifier_piezo>);
recipes.addShaped("nexus_exp_et_mod_piezo", <environmentaltech:modifier_piezo>, [
    [<environmentaltech:litherite_crystal>, <minecraft:piston>, <environmentaltech:litherite_crystal>],
    [<minecraft:piston>, <environmentaltech:modifier_null>, <minecraft:piston>],
    [<environmentaltech:litherite_crystal>, <minecraft:piston>, <environmentaltech:litherite_crystal>]
]);

// Дракониевое ядро (Draconic Core)
recipes.remove(<draconicevolution:draconic_core>);
recipes.addShaped("nexus_exp_de_core_draconic", <draconicevolution:draconic_core>, [
    [<draconicevolution:draconium_ingot>, <minecraft:gold_ingot>, <draconicevolution:draconium_ingot>],
    [<minecraft:diamond>, <minecraft:nether_star>, <minecraft:diamond>],
    [<draconicevolution:draconium_ingot>, <minecraft:gold_ingot>, <draconicevolution:draconium_ingot>]
]);

// Виверн ядро (Wyvern Core)
recipes.remove(<draconicevolution:wyvern_core>);
recipes.addShaped("nexus_exp_de_core_wyvern", <draconicevolution:wyvern_core>, [
    [<draconicevolution:draconium_block>, <draconicevolution:draconic_core>, <draconicevolution:draconium_block>],
    [<minecraft:nether_star>, <contenttweaker:celestial_binding_matrix>, <minecraft:nether_star>],
    [<draconicevolution:draconium_block>, <draconicevolution:draconic_core>, <draconicevolution:draconium_block>]
]);

// Пробужденное ядро (Awakened Core)
recipes.remove(<draconicevolution:awakened_core>);
recipes.addShaped("nexus_exp_de_core_awakened", <draconicevolution:awakened_core>, [
    [<draconicevolution:draconic_block>, <draconicevolution:wyvern_core>, <draconicevolution:draconic_block>],
    [<minecraft:nether_star>, <draconicevolution:dragon_heart>, <minecraft:nether_star>],
    [<draconicevolution:draconic_block>, <draconicevolution:wyvern_core>, <draconicevolution:draconic_block>]
]);

// Хаотическое ядро (Chaotic Core)
recipes.remove(<draconicevolution:chaotic_core>);
recipes.addShaped("nexus_exp_de_core_chaotic", <draconicevolution:chaotic_core>, [
    [<draconicevolution:chaos_shard:0>, <draconicevolution:awakened_core>, <draconicevolution:chaos_shard:0>],
    [<contenttweaker:nexus_singularity>, <draconicevolution:dragon_heart>, <contenttweaker:nexus_singularity>],
    [<draconicevolution:chaos_shard:0>, <draconicevolution:awakened_core>, <draconicevolution:chaos_shard:0>]
]);

// Базовый инжектор крафта
recipes.remove(<draconicevolution:crafting_injector:0>);
recipes.addShaped("nexus_exp_de_injector_basic", <draconicevolution:crafting_injector:0>, [
    [<draconicevolution:draconium_ingot>, <minecraft:diamond>, <draconicevolution:draconium_ingot>],
    [<minecraft:diamond>, <draconicevolution:draconic_core>, <minecraft:diamond>],
    [<draconicevolution:draconium_ingot>, <minecraft:stone>, <draconicevolution:draconium_ingot>]
]);

// Виверн инжектор крафта
recipes.remove(<draconicevolution:crafting_injector:1>);
recipes.addShaped("nexus_exp_de_injector_wyvern", <draconicevolution:crafting_injector:1>, [
    [<draconicevolution:draconium_ingot>, <minecraft:diamond>, <draconicevolution:draconium_ingot>],
    [<minecraft:diamond>, <draconicevolution:wyvern_core>, <minecraft:diamond>],
    [<draconicevolution:draconium_ingot>, <minecraft:stone>, <draconicevolution:draconium_ingot>]
]);

// Дракониевый инжектор крафта
recipes.remove(<draconicevolution:crafting_injector:2>);
recipes.addShaped("nexus_exp_de_injector_draconic", <draconicevolution:crafting_injector:2>, [
    [<draconicevolution:draconium_ingot>, <minecraft:diamond>, <draconicevolution:draconium_ingot>],
    [<minecraft:diamond>, <draconicevolution:awakened_core>, <minecraft:diamond>],
    [<draconicevolution:draconium_ingot>, <minecraft:stone>, <draconicevolution:draconium_ingot>]
]);

// Хаотический инжектор крафта
recipes.remove(<draconicevolution:crafting_injector:3>);
recipes.addShaped("nexus_exp_de_injector_chaotic", <draconicevolution:crafting_injector:3>, [
    [<draconicevolution:draconium_ingot>, <minecraft:diamond>, <draconicevolution:draconium_ingot>],
    [<minecraft:diamond>, <draconicevolution:chaotic_core>, <minecraft:diamond>],
    [<draconicevolution:draconium_ingot>, <minecraft:stone>, <draconicevolution:draconium_ingot>]
]);

// Меч виверны Draconic Evolution
recipes.remove(<draconicevolution:wyvern_sword>);
recipes.addShaped("nexus_exp_de_wyvern_sword", <draconicevolution:wyvern_sword>, [
    [<draconicevolution:draconium_ingot>],
    [<draconicevolution:draconium_ingot>],
    [<draconicevolution:wyvern_core>]
]);

// Кирка виверны Draconic Evolution
recipes.remove(<draconicevolution:wyvern_pick>);
recipes.addShaped("nexus_exp_de_wyvern_pick", <draconicevolution:wyvern_pick>, [
    [<draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>],
    [null, <draconicevolution:wyvern_core>, null],
    [null, <draconicevolution:draconium_block>, null]
]);

// Лук виверны Draconic Evolution
recipes.remove(<draconicevolution:wyvern_bow>);
recipes.addShaped("nexus_exp_de_wyvern_bow", <draconicevolution:wyvern_bow>, [
    [null, <draconicevolution:draconium_ingot>, <minecraft:string>],
    [<draconicevolution:wyvern_core>, null, <minecraft:string>],
    [null, <draconicevolution:draconium_ingot>, <minecraft:string>]
]);

// Ядро реактора Draconic Evolution
recipes.remove(<draconicevolution:reactor_core>);
recipes.addShaped("nexus_exp_de_core", <draconicevolution:reactor_core>, [
    [<draconicevolution:awakened_core>, <draconicevolution:dragon_heart>, <draconicevolution:awakened_core>],
    [<draconicevolution:dragon_heart>, <contenttweaker:convergence_core>, <draconicevolution:dragon_heart>],
    [<draconicevolution:awakened_core>, <draconicevolution:dragon_heart>, <draconicevolution:awakened_core>]
]);

// Стабилизатор реактора дракона
recipes.remove(<draconicevolution:reactor_component:0>);
recipes.addShaped("nexus_exp_de_stabilizer", <draconicevolution:reactor_component:0>, [
    [<draconicevolution:draconium_ingot>, <draconicevolution:awakened_core>, <draconicevolution:draconium_ingot>],
    [<draconicevolution:awakened_core>, <contenttweaker:celestial_binding_matrix>, <draconicevolution:awakened_core>],
    [<draconicevolution:draconium_ingot>, <draconicevolution:awakened_core>, <draconicevolution:draconium_ingot>]
]);

// Флаксовый вентиль (Flux Gate)
recipes.remove(<draconicevolution:flow_gate:0>);
recipes.addShaped("nexus_exp_de_flux_gate", <draconicevolution:flow_gate:0>, [
    [<draconicevolution:draconium_ingot>, <minecraft:comparator>, <draconicevolution:draconium_ingot>],
    [<minecraft:redstone>, <draconicevolution:draconic_core>, <minecraft:redstone>],
    [<draconicevolution:draconium_ingot>, <minecraft:comparator>, <draconicevolution:draconium_ingot>]
]);

// Энергетический пилон
recipes.remove(<draconicevolution:energy_pylon>);
recipes.addShaped("nexus_exp_de_energy_pylon", <draconicevolution:energy_pylon>, [
    [<draconicevolution:draconium_ingot>, <minecraft:glass>, <draconicevolution:draconium_ingot>],
    [<minecraft:glass>, <draconicevolution:draconic_core>, <minecraft:glass>],
    [<draconicevolution:draconium_ingot>, <minecraft:glass>, <draconicevolution:draconium_ingot>]
]);

// Генератор частиц Draconic Evolution
recipes.remove(<draconicevolution:particle_generator>);
recipes.addShaped("nexus_exp_de_particle_generator", <draconicevolution:particle_generator>, [
    [<draconicevolution:draconium_ingot>, <minecraft:blaze_rod>, <draconicevolution:draconium_ingot>],
    [<minecraft:blaze_rod>, <draconicevolution:draconic_core>, <minecraft:blaze_rod>],
    [<draconicevolution:draconium_ingot>, <minecraft:blaze_rod>, <draconicevolution:draconium_ingot>]
]);
