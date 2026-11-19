// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: NuclearCraft Complex Fission, Coolers & Isotopes
// Generated Recipes: 53
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Корпус реактора деления NuclearCraft
recipes.remove(<nuclearcraft:fission_block:0>);
recipes.addShaped("nexus_exp_nc_fission_casing", <nuclearcraft:fission_block:0> * 4, [
    [<thermalfoundation:material:323>, <thermalfoundation:material:352>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:323>, <thermalfoundation:material:352>, <thermalfoundation:material:323>]
]);

// Прозрачный корпус реактора
recipes.remove(<nuclearcraft:reactor_casing_transparent:0>);
recipes.addShaped("nexus_exp_nc_fission_glass", <nuclearcraft:reactor_casing_transparent:0> * 4, [
    [<thermalfoundation:material:323>, <minecraft:glass>, <thermalfoundation:material:323>],
    [<minecraft:glass>, <nuclearcraft:fission_block:0>, <minecraft:glass>],
    [<thermalfoundation:material:323>, <minecraft:glass>, <thermalfoundation:material:323>]
]);

// Контроллер реактора деления
recipes.addShaped("nexus_exp_nc_fission_controller", <nuclearcraft:fission_controller_new_fixed>, [
    [<thermalfoundation:material:323>, <appliedenergistics2:material:24>, <thermalfoundation:material:323>],
    [<minecraft:comparator>, <nuclearcraft:fission_block:0>, <minecraft:comparator>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:1>, <thermalfoundation:material:352>]
]);

// Топливная ячейка реактора деления
recipes.addShaped("nexus_exp_nc_fission_cell", <nuclearcraft:solid_fission_cell>, [
    [<thermalfoundation:material:323>, <minecraft:glass>, <thermalfoundation:material:323>],
    [<minecraft:glass>, <nuclearcraft:part:0>, <minecraft:glass>],
    [<thermalfoundation:material:323>, <minecraft:glass>, <thermalfoundation:material:323>]
]);

// Пустой охлаждающий блок
recipes.remove(<nuclearcraft:cooler:0>);
recipes.addShaped("nexus_exp_nc_cooler_empty", <nuclearcraft:cooler:0> * 2, [
    [<thermalfoundation:material:352>, <thermalfoundation:material:320>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:320>, <minecraft:ice>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:320>, <thermalfoundation:material:352>]
]);

// Водяной охладитель
recipes.remove(<nuclearcraft:cooler:1>);
recipes.addShaped("nexus_exp_nc_cooler_water", <nuclearcraft:cooler:1>, [
    [null, <minecraft:water_bucket>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Редстоун охладитель
recipes.remove(<nuclearcraft:cooler:2>);
recipes.addShaped("nexus_exp_nc_cooler_redstone", <nuclearcraft:cooler:2>, [
    [null, <minecraft:redstone_block>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Кварцевый охладитель
recipes.remove(<nuclearcraft:cooler:3>);
recipes.addShaped("nexus_exp_nc_cooler_quartz", <nuclearcraft:cooler:3>, [
    [null, <minecraft:quartz_block>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Золотой охладитель
recipes.remove(<nuclearcraft:cooler:4>);
recipes.addShaped("nexus_exp_nc_cooler_gold", <nuclearcraft:cooler:4>, [
    [null, <minecraft:gold_block>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Светокаменный охладитель
recipes.remove(<nuclearcraft:cooler:5>);
recipes.addShaped("nexus_exp_nc_cooler_glowstone", <nuclearcraft:cooler:5>, [
    [null, <minecraft:glowstone>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Лазуритовый охладитель
recipes.remove(<nuclearcraft:cooler:6>);
recipes.addShaped("nexus_exp_nc_cooler_lapis", <nuclearcraft:cooler:6>, [
    [null, <minecraft:lapis_block>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Алмазный охладитель
recipes.remove(<nuclearcraft:cooler:7>);
recipes.addShaped("nexus_exp_nc_cooler_diamond", <nuclearcraft:cooler:7>, [
    [null, <minecraft:diamond_block>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Гелиевый охладитель
recipes.remove(<nuclearcraft:cooler:8>);
recipes.addShaped("nexus_exp_nc_cooler_helium", <nuclearcraft:cooler:8>, [
    [null, <nuclearcraft:liquid_helium_bucket>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Эндериумовый охладитель
recipes.remove(<nuclearcraft:cooler:9>);
recipes.addShaped("nexus_exp_nc_cooler_enderium", <nuclearcraft:cooler:9>, [
    [null, <thermalfoundation:storage_alloy:7>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Криотеумовый охладитель
recipes.remove(<nuclearcraft:cooler:10>);
recipes.addShaped("nexus_exp_nc_cooler_cryotheum", <nuclearcraft:cooler:10>, [
    [null, <thermalfoundation:material:1025>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Железный охладитель
recipes.remove(<nuclearcraft:cooler:11>);
recipes.addShaped("nexus_exp_nc_cooler_iron", <nuclearcraft:cooler:11>, [
    [null, <minecraft:iron_block>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Изумрудный охладитель
recipes.remove(<nuclearcraft:cooler:12>);
recipes.addShaped("nexus_exp_nc_cooler_emerald", <nuclearcraft:cooler:12>, [
    [null, <minecraft:emerald_block>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Медный охладитель
recipes.remove(<nuclearcraft:cooler:13>);
recipes.addShaped("nexus_exp_nc_cooler_copper", <nuclearcraft:cooler:13>, [
    [null, <thermalfoundation:storage:0>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Оловянный охладитель
recipes.remove(<nuclearcraft:cooler:14>);
recipes.addShaped("nexus_exp_nc_cooler_tin", <nuclearcraft:cooler:14>, [
    [null, <thermalfoundation:storage:1>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Магниевый охладитель
recipes.remove(<nuclearcraft:cooler:15>);
recipes.addShaped("nexus_exp_nc_cooler_magnesium", <nuclearcraft:cooler:15>, [
    [null, <nuclearcraft:block_depleted_thorium>, null],
    [<thermalfoundation:material:352>, <nuclearcraft:cooler:0>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:320>, null]
]);

// Мануфактория (Manufactory)
recipes.remove(<nuclearcraft:manufactory>);
recipes.addShaped("nexus_exp_nc_mach_manufactory", <nuclearcraft:manufactory>, [
    [<thermalfoundation:material:32>, <minecraft:piston>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>]
]);

// Изотопный сепаратор
recipes.remove(<nuclearcraft:separator>);
recipes.addShaped("nexus_exp_nc_mach_isotope_separator", <nuclearcraft:separator>, [
    [<thermalfoundation:material:352>, <minecraft:hopper>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <minecraft:redstone>, <thermalfoundation:material:352>]
]);

// Ускоритель распада
recipes.remove(<nuclearcraft:decay_hastener>);
recipes.addShaped("nexus_exp_nc_mach_decay_hastener", <nuclearcraft:decay_hastener>, [
    [<thermalfoundation:material:323>, <minecraft:end_stone>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:323>, <minecraft:redstone>, <thermalfoundation:material:323>]
]);

// Переработчик ядерного топлива
recipes.remove(<nuclearcraft:fuel_reprocessor>);
recipes.addShaped("nexus_exp_nc_mach_fuel_reprocessor", <nuclearcraft:fuel_reprocessor>, [
    [<thermalfoundation:material:323>, <minecraft:brewing_stand>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:323>, <minecraft:redstone>, <thermalfoundation:material:323>]
]);

// Сплавная печь NuclearCraft
recipes.remove(<nuclearcraft:alloy_furnace>);
recipes.addShaped("nexus_exp_nc_mach_alloy_furnace", <nuclearcraft:alloy_furnace>, [
    [<thermalfoundation:material:354>, <minecraft:furnace>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:354>, <minecraft:redstone>, <thermalfoundation:material:354>]
]);

// Жидкостный инфузер
recipes.remove(<nuclearcraft:infuser>);
recipes.addShaped("nexus_exp_nc_mach_infuser", <nuclearcraft:infuser>, [
    [<thermalfoundation:material:320>, <minecraft:cauldron>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:320>, <minecraft:redstone>, <thermalfoundation:material:320>]
]);

// Плавитель
recipes.remove(<nuclearcraft:melter>);
recipes.addShaped("nexus_exp_nc_mach_melter", <nuclearcraft:melter>, [
    [<thermalfoundation:material:354>, <minecraft:lava_bucket>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:354>, <minecraft:redstone>, <thermalfoundation:material:354>]
]);

// Суперохладитель
recipes.remove(<nuclearcraft:supercooler>);
recipes.addShaped("nexus_exp_nc_mach_supercooler", <nuclearcraft:supercooler>, [
    [<thermalfoundation:material:321>, <minecraft:packed_ice>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:321>, <minecraft:redstone>, <thermalfoundation:material:321>]
]);

// Кристаллизатор ядерных солей
recipes.remove(<nuclearcraft:crystallizer>);
recipes.addShaped("nexus_exp_nc_mach_crystallizer", <nuclearcraft:crystallizer>, [
    [<thermalfoundation:material:322>, <minecraft:quartz>, <thermalfoundation:material:322>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:322>, <minecraft:redstone>, <thermalfoundation:material:322>]
]);

// Высокоскоростная центрифуга
recipes.remove(<nuclearcraft:centrifuge>);
recipes.addShaped("nexus_exp_nc_mach_centrifuge", <nuclearcraft:centrifuge>, [
    [<thermalfoundation:material:352>, <minecraft:compass>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <minecraft:redstone>, <thermalfoundation:material:352>]
]);

// Химический реактор
recipes.remove(<nuclearcraft:chemical_reactor>);
recipes.addShaped("nexus_exp_nc_mach_chemical_reactor", <nuclearcraft:chemical_reactor>, [
    [<thermalfoundation:material:323>, <minecraft:glass_bottle>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:352>, <nuclearcraft:part:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:323>, <minecraft:redstone>, <thermalfoundation:material:323>]
]);

// Ториевое топливо TBU
recipes.addShaped("nexus_exp_nc_fuel_tbu", <nuclearcraft:fuel_thorium:0> * 4, [
    [<nuclearcraft:thorium:0>, <nuclearcraft:ingot:8>, <nuclearcraft:thorium:0>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:thorium:0>, <nuclearcraft:ingot:8>, <nuclearcraft:thorium:0>]
]);

// Низкообогащенный уран LEU-233
recipes.addShaped("nexus_exp_nc_fuel_leu_233", <nuclearcraft:fuel_uranium:0> * 4, [
    [<nuclearcraft:uranium:5>, <nuclearcraft:ingot:8>, <nuclearcraft:uranium:5>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:uranium:5>, <nuclearcraft:ingot:8>, <nuclearcraft:uranium:5>]
]);

// Высокообогащенный уран HEU-233
recipes.addShaped("nexus_exp_nc_fuel_heu_233", <nuclearcraft:fuel_uranium:1> * 4, [
    [<nuclearcraft:uranium:4>, <nuclearcraft:ingot:8>, <nuclearcraft:uranium:4>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:uranium:4>, <nuclearcraft:ingot:8>, <nuclearcraft:uranium:4>]
]);

// Низкообогащенный уран LEU-235
recipes.addShaped("nexus_exp_nc_fuel_leu_235", <nuclearcraft:fuel_uranium:2> * 4, [
    [<nuclearcraft:uranium:9>, <nuclearcraft:ingot:8>, <nuclearcraft:uranium:9>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:uranium:9>, <nuclearcraft:ingot:8>, <nuclearcraft:uranium:9>]
]);

// Высокообогащенный уран HEU-235
recipes.addShaped("nexus_exp_nc_fuel_heu_235", <nuclearcraft:fuel_uranium:3> * 4, [
    [<nuclearcraft:uranium:8>, <nuclearcraft:ingot:8>, <nuclearcraft:uranium:8>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:uranium:8>, <nuclearcraft:ingot:8>, <nuclearcraft:uranium:8>]
]);

// Низкообогащенный плутоний LEP-239
recipes.addShaped("nexus_exp_nc_fuel_lep_239", <nuclearcraft:fuel_plutonium:0> * 4, [
    [<nuclearcraft:plutonium:5>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:5>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:plutonium:5>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:5>]
]);

// Высокообогащенный плутоний HEP-239
recipes.addShaped("nexus_exp_nc_fuel_hep_239", <nuclearcraft:fuel_plutonium:1> * 4, [
    [<nuclearcraft:plutonium:4>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:4>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:plutonium:4>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:4>]
]);

// Низкообогащенный плутоний LEP-241
recipes.addShaped("nexus_exp_nc_fuel_lep_241", <nuclearcraft:fuel_plutonium:2> * 4, [
    [<nuclearcraft:plutonium:9>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:9>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:plutonium:9>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:9>]
]);

// Высокообогащенный плутоний HEP-241
recipes.addShaped("nexus_exp_nc_fuel_hep_241", <nuclearcraft:fuel_plutonium:3> * 4, [
    [<nuclearcraft:plutonium:8>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:8>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:plutonium:8>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:8>]
]);

// MOX-239 топливо
recipes.addShaped("nexus_exp_nc_fuel_mox_239", <nuclearcraft:fuel_uranium:4> * 4, [
    [<nuclearcraft:plutonium:0>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:0>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:plutonium:0>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:0>]
]);

// MOX-241 топливо
recipes.addShaped("nexus_exp_nc_fuel_mox_241", <nuclearcraft:fuel_uranium:5> * 4, [
    [<nuclearcraft:plutonium:1>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:1>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:plutonium:1>, <nuclearcraft:ingot:8>, <nuclearcraft:plutonium:1>]
]);

// Америциевое ядерное топливо
recipes.addShaped("nexus_exp_nc_fuel_americium_242", <nuclearcraft:fuel_americium:0> * 4, [
    [<nuclearcraft:americium:0>, <nuclearcraft:ingot:8>, <nuclearcraft:americium:0>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:americium:0>, <nuclearcraft:ingot:8>, <nuclearcraft:americium:0>]
]);

// Кюриевое ядерное топливо
recipes.addShaped("nexus_exp_nc_fuel_curium_243", <nuclearcraft:fuel_curium:0> * 4, [
    [<nuclearcraft:curium:0>, <nuclearcraft:ingot:8>, <nuclearcraft:curium:0>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:curium:0>, <nuclearcraft:ingot:8>, <nuclearcraft:curium:0>]
]);

// Калифорниевое ядерное топливо
recipes.addShaped("nexus_exp_nc_fuel_californium_249", <nuclearcraft:fuel_californium:0> * 4, [
    [<nuclearcraft:californium:0>, <nuclearcraft:ingot:8>, <nuclearcraft:californium:0>],
    [<nuclearcraft:ingot:8>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:8>],
    [<nuclearcraft:californium:0>, <nuclearcraft:ingot:8>, <nuclearcraft:californium:0>]
]);

// Защитный шлем HAZMAT
recipes.remove(<nuclearcraft:helm_hazmat>);
recipes.addShaped("nexus_exp_nc_hazmat_helm", <nuclearcraft:helm_hazmat>, [
    [<nuclearcraft:part:0>, <thermalfoundation:material:323>, <nuclearcraft:part:0>],
    [<thermalfoundation:material:323>, <minecraft:glass_pane>, <thermalfoundation:material:323>]
]);

// Защитный костюм HAZMAT
recipes.remove(<nuclearcraft:chest_hazmat>);
recipes.addShaped("nexus_exp_nc_hazmat_chest", <nuclearcraft:chest_hazmat>, [
    [<thermalfoundation:material:323>, <minecraft:leather>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:323>, <nuclearcraft:part:0>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:323>, <thermalfoundation:material:323>, <thermalfoundation:material:323>]
]);

// Защитные штаны HAZMAT
recipes.remove(<nuclearcraft:legs_hazmat>);
recipes.addShaped("nexus_exp_nc_hazmat_legs", <nuclearcraft:legs_hazmat>, [
    [<thermalfoundation:material:323>, <nuclearcraft:part:0>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:323>, null, <thermalfoundation:material:323>],
    [<thermalfoundation:material:323>, null, <thermalfoundation:material:323>]
]);

// Защитные сапоги HAZMAT
recipes.remove(<nuclearcraft:boots_hazmat>);
recipes.addShaped("nexus_exp_nc_hazmat_boots", <nuclearcraft:boots_hazmat>, [
    [<thermalfoundation:material:323>, null, <thermalfoundation:material:323>],
    [<thermalfoundation:material:323>, <minecraft:leather>, <thermalfoundation:material:323>]
]);

// Урановый РИТЭГ
recipes.remove(<nuclearcraft:rtg_uranium>);
recipes.addShaped("nexus_exp_nc_rtg_basic", <nuclearcraft:rtg_uranium>, [
    [<thermalfoundation:material:323>, <thermalfoundation:material:320>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:320>, <nuclearcraft:uranium:0>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:323>, <thermalfoundation:material:320>, <thermalfoundation:material:323>]
]);

// Плутониевый РИТЭГ
recipes.remove(<nuclearcraft:rtg_plutonium>);
recipes.addShaped("nexus_exp_nc_rtg_plutonium", <nuclearcraft:rtg_plutonium>, [
    [<thermalfoundation:material:323>, <thermalfoundation:material:320>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:320>, <nuclearcraft:plutonium:0>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:323>, <thermalfoundation:material:320>, <thermalfoundation:material:323>]
]);

// Америциевый РИТЭГ
recipes.remove(<nuclearcraft:rtg_americium>);
recipes.addShaped("nexus_exp_nc_rtg_americium", <nuclearcraft:rtg_americium>, [
    [<thermalfoundation:material:323>, <thermalfoundation:material:320>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:320>, <nuclearcraft:americium:0>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:323>, <thermalfoundation:material:320>, <thermalfoundation:material:323>]
]);

// Калифорниевый РИТЭГ
recipes.remove(<nuclearcraft:rtg_californium>);
recipes.addShaped("nexus_exp_nc_rtg_californium", <nuclearcraft:rtg_californium>, [
    [<thermalfoundation:material:323>, <thermalfoundation:material:320>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:320>, <nuclearcraft:californium:0>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:323>, <thermalfoundation:material:320>, <thermalfoundation:material:323>]
]);
