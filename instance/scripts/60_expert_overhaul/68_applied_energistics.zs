// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Applied Energistics 2 Digital Storage & Processing
// Generated Recipes: 111
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// МЭ Контроллер сети
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped("nexus_exp_ae2_controller", <appliedenergistics2:controller>, [
    [<appliedenergistics2:material:12>, <appliedenergistics2:material:10>, <appliedenergistics2:material:12>],
    [<appliedenergistics2:material:24>, <thermalexpansion:frame:0>, <appliedenergistics2:material:24>],
    [<appliedenergistics2:material:12>, <appliedenergistics2:material:10>, <appliedenergistics2:material:12>]
]);

// МЭ Накопитель дисков
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped("nexus_exp_ae2_drive", <appliedenergistics2:drive>, [
    [<thermalfoundation:material:32>, <appliedenergistics2:material:24>, <thermalfoundation:material:32>],
    [<appliedenergistics2:part:16>, <thermalexpansion:frame:0>, <appliedenergistics2:part:16>],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:24>, <thermalfoundation:material:32>]
]);

// МЭ Сундук
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped("nexus_exp_ae2_chest", <appliedenergistics2:chest>, [
    [<minecraft:glass>, <appliedenergistics2:part:380>, <minecraft:glass>],
    [<appliedenergistics2:part:16>, <minecraft:chest>, <appliedenergistics2:part:16>],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:7>, <thermalfoundation:material:32>]
]);

// МЭ Обычный терминал
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShaped("nexus_exp_ae2_term_terminal", <appliedenergistics2:part:380>, [
    [<minecraft:glowstone_dust>, <appliedenergistics2:material:22>, <minecraft:glowstone_dust>],
    [<thermalfoundation:material:32>, <appliedenergistics2:part:140>, <thermalfoundation:material:32>],
    [null, <appliedenergistics2:material:7>, null]
]);

// МЭ Терминал создания
recipes.remove(<appliedenergistics2:part:360>);
recipes.addShaped("nexus_exp_ae2_term_crafting", <appliedenergistics2:part:360>, [
    [null, <minecraft:crafting_table>, null],
    [null, <appliedenergistics2:part:380>, null],
    [<appliedenergistics2:material:23>, null, <appliedenergistics2:material:23>]
]);

// МЭ Терминал шаблонов
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShaped("nexus_exp_ae2_term_pattern", <appliedenergistics2:part:340>, [
    [null, <thermalfoundation:material:32>, null],
    [<appliedenergistics2:material:23>, <appliedenergistics2:part:360>, <appliedenergistics2:material:23>],
    [null, <thermalfoundation:material:32>, null]
]);

// МЭ Терминал интерфейсов
recipes.remove(<appliedenergistics2:part:480>);
recipes.addShaped("nexus_exp_ae2_term_interface", <appliedenergistics2:part:480>, [
    [null, <appliedenergistics2:interface>, null],
    [<appliedenergistics2:material:24>, <appliedenergistics2:part:380>, <appliedenergistics2:material:24>],
    [null, null, null]
]);

// Корпус ячейки хранения МЭ
recipes.remove(<appliedenergistics2:material:39>);
recipes.addShaped("nexus_exp_ae2_cell_housing", <appliedenergistics2:material:39>, [
    [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>],
    [<minecraft:redstone>, null, <minecraft:redstone>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Компонент хранения 1к
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped("nexus_exp_ae2_comp_1k", <appliedenergistics2:material:35>, [
    [<minecraft:redstone>, <appliedenergistics2:material:10>, <minecraft:redstone>],
    [<appliedenergistics2:material:22>, <minecraft:redstone>, <appliedenergistics2:material:22>],
    [<minecraft:redstone>, <appliedenergistics2:material:10>, <minecraft:redstone>]
]);

// Ячейка хранения 1к
recipes.remove(<appliedenergistics2:storage_cell_1k>);
recipes.addShaped("nexus_exp_ae2_cell_1k", <appliedenergistics2:storage_cell_1k>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:35>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Компонент хранения 4к
recipes.remove(<appliedenergistics2:material:36>);
recipes.addShaped("nexus_exp_ae2_comp_4k", <appliedenergistics2:material:36>, [
    [<minecraft:redstone>, <appliedenergistics2:material:10>, <minecraft:redstone>],
    [<appliedenergistics2:material:23>, <appliedenergistics2:material:35>, <appliedenergistics2:material:23>],
    [<minecraft:redstone>, <appliedenergistics2:material:23>, <minecraft:redstone>]
]);

// Ячейка хранения 4к
recipes.remove(<appliedenergistics2:storage_cell_4k>);
recipes.addShaped("nexus_exp_ae2_cell_4k", <appliedenergistics2:storage_cell_4k>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:36>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Компонент хранения 16к
recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped("nexus_exp_ae2_comp_16k", <appliedenergistics2:material:37>, [
    [<minecraft:redstone>, <appliedenergistics2:material:10>, <minecraft:redstone>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:material:36>, <appliedenergistics2:material:24>],
    [<minecraft:redstone>, <appliedenergistics2:material:24>, <minecraft:redstone>]
]);

// Ячейка хранения 16к
recipes.remove(<appliedenergistics2:storage_cell_16k>);
recipes.addShaped("nexus_exp_ae2_cell_16k", <appliedenergistics2:storage_cell_16k>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:37>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Компонент хранения 64к
recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped("nexus_exp_ae2_comp_64k", <appliedenergistics2:material:38>, [
    [<minecraft:redstone>, <appliedenergistics2:material:10>, <minecraft:redstone>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:material:37>, <appliedenergistics2:material:24>],
    [<minecraft:redstone>, <contenttweaker:runic_logic_core>, <minecraft:redstone>]
]);

// Ячейка хранения 64к
recipes.remove(<appliedenergistics2:storage_cell_64k>);
recipes.addShaped("nexus_exp_ae2_cell_64k", <appliedenergistics2:storage_cell_64k>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:38>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Жидкостный компонент 1к
recipes.remove(<appliedenergistics2:material:54>);
recipes.addShaped("nexus_exp_ae2_comp_fluid_1k", <appliedenergistics2:material:54>, [
    [<minecraft:redstone>, <minecraft:bucket>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <appliedenergistics2:material:35>, <thermalfoundation:material:320>],
    [<minecraft:redstone>, <minecraft:bucket>, <minecraft:redstone>]
]);

// Жидкостная ячейка хранения 1к
recipes.remove(<appliedenergistics2:fluid_storage_cell_1k>);
recipes.addShaped("nexus_exp_ae2_cell_fluid_1k", <appliedenergistics2:fluid_storage_cell_1k>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <appliedenergistics2:material:54>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Жидкостный компонент 4к
recipes.remove(<appliedenergistics2:material:55>);
recipes.addShaped("nexus_exp_ae2_comp_fluid_4k", <appliedenergistics2:material:55>, [
    [<minecraft:redstone>, <minecraft:bucket>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <appliedenergistics2:material:36>, <thermalfoundation:material:320>],
    [<minecraft:redstone>, <minecraft:bucket>, <minecraft:redstone>]
]);

// Жидкостная ячейка хранения 4к
recipes.remove(<appliedenergistics2:fluid_storage_cell_4k>);
recipes.addShaped("nexus_exp_ae2_cell_fluid_4k", <appliedenergistics2:fluid_storage_cell_4k>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <appliedenergistics2:material:55>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Жидкостный компонент 16к
recipes.remove(<appliedenergistics2:material:56>);
recipes.addShaped("nexus_exp_ae2_comp_fluid_16k", <appliedenergistics2:material:56>, [
    [<minecraft:redstone>, <minecraft:bucket>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <appliedenergistics2:material:37>, <thermalfoundation:material:320>],
    [<minecraft:redstone>, <minecraft:bucket>, <minecraft:redstone>]
]);

// Жидкостная ячейка хранения 16к
recipes.remove(<appliedenergistics2:fluid_storage_cell_16k>);
recipes.addShaped("nexus_exp_ae2_cell_fluid_16k", <appliedenergistics2:fluid_storage_cell_16k>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <appliedenergistics2:material:56>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Жидкостный компонент 64к
recipes.remove(<appliedenergistics2:material:57>);
recipes.addShaped("nexus_exp_ae2_comp_fluid_64k", <appliedenergistics2:material:57>, [
    [<minecraft:redstone>, <minecraft:bucket>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <appliedenergistics2:material:38>, <thermalfoundation:material:320>],
    [<minecraft:redstone>, <minecraft:bucket>, <minecraft:redstone>]
]);

// Жидкостная ячейка хранения 64к
recipes.remove(<appliedenergistics2:fluid_storage_cell_64k>);
recipes.addShaped("nexus_exp_ae2_cell_fluid_64k", <appliedenergistics2:fluid_storage_cell_64k>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <appliedenergistics2:material:57>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Пространственный компонент хранения 2³
recipes.remove(<appliedenergistics2:material:32>);
recipes.addShaped("nexus_exp_ae2_spatial_comp_2s", <appliedenergistics2:material:32>, [
    [<minecraft:glowstone_dust>, <appliedenergistics2:material:10>, <minecraft:glowstone_dust>],
    [<appliedenergistics2:material:24>, <minecraft:ender_pearl>, <appliedenergistics2:material:24>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:material:10>, <minecraft:glowstone_dust>]
]);

// Пространственная ячейка 2³
recipes.remove(<appliedenergistics2:spatial_storage_cell_2_cubed>);
recipes.addShaped("nexus_exp_ae2_spatial_cell_2s", <appliedenergistics2:spatial_storage_cell_2_cubed>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:32>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Пространственный компонент хранения 16³
recipes.remove(<appliedenergistics2:material:33>);
recipes.addShaped("nexus_exp_ae2_spatial_comp_16s", <appliedenergistics2:material:33>, [
    [<minecraft:glowstone_dust>, <appliedenergistics2:material:10>, <minecraft:glowstone_dust>],
    [<appliedenergistics2:material:24>, <minecraft:ender_pearl>, <appliedenergistics2:material:24>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:material:10>, <minecraft:glowstone_dust>]
]);

// Пространственная ячейка 16³
recipes.remove(<appliedenergistics2:spatial_storage_cell_16_cubed>);
recipes.addShaped("nexus_exp_ae2_spatial_cell_16s", <appliedenergistics2:spatial_storage_cell_16_cubed>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:33>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Пространственный компонент хранения 128³
recipes.remove(<appliedenergistics2:material:34>);
recipes.addShaped("nexus_exp_ae2_spatial_comp_128s", <appliedenergistics2:material:34>, [
    [<minecraft:glowstone_dust>, <appliedenergistics2:material:10>, <minecraft:glowstone_dust>],
    [<appliedenergistics2:material:24>, <minecraft:ender_pearl>, <appliedenergistics2:material:24>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:material:10>, <minecraft:glowstone_dust>]
]);

// Пространственная ячейка 128³
recipes.remove(<appliedenergistics2:spatial_storage_cell_128_cubed>);
recipes.addShaped("nexus_exp_ae2_spatial_cell_128s", <appliedenergistics2:spatial_storage_cell_128_cubed>, [
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:34>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Стеклянный МЭ кабель из изменчивого кристалла
recipes.remove(<appliedenergistics2:part:16>);
recipes.addShaped("nexus_exp_ae2_cable_fluix_base", <appliedenergistics2:part:16> * 4, [
    [<minecraft:glass>, <appliedenergistics2:material:7>, <minecraft:glass>]
]);

// Стеклянный МЭ кабель (white)
recipes.remove(<appliedenergistics2:part:0>);
recipes.addShaped("nexus_exp_ae2_cable_glass_white", <appliedenergistics2:part:0> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:15>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (white)
recipes.remove(<appliedenergistics2:part:20>);
recipes.addShaped("nexus_exp_ae2_cable_covered_white", <appliedenergistics2:part:20> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:0>, <minecraft:wool>]
]);

// Умный МЭ кабель (white)
recipes.remove(<appliedenergistics2:part:40>);
recipes.addShaped("nexus_exp_ae2_cable_smart_white", <appliedenergistics2:part:40> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:0>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:0>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (white) 32 канала
recipes.remove(<appliedenergistics2:part:60>);
recipes.addShaped("nexus_exp_ae2_cable_dense_white", <appliedenergistics2:part:60> * 2, [
    [<appliedenergistics2:part:40>, <appliedenergistics2:part:40>],
    [<appliedenergistics2:part:40>, <appliedenergistics2:part:40>]
]);

// Стеклянный МЭ кабель (orange)
recipes.remove(<appliedenergistics2:part:1>);
recipes.addShaped("nexus_exp_ae2_cable_glass_orange", <appliedenergistics2:part:1> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:14>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (orange)
recipes.remove(<appliedenergistics2:part:21>);
recipes.addShaped("nexus_exp_ae2_cable_covered_orange", <appliedenergistics2:part:21> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:1>, <minecraft:wool>]
]);

// Умный МЭ кабель (orange)
recipes.remove(<appliedenergistics2:part:41>);
recipes.addShaped("nexus_exp_ae2_cable_smart_orange", <appliedenergistics2:part:41> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:1>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:1>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (orange) 32 канала
recipes.remove(<appliedenergistics2:part:61>);
recipes.addShaped("nexus_exp_ae2_cable_dense_orange", <appliedenergistics2:part:61> * 2, [
    [<appliedenergistics2:part:41>, <appliedenergistics2:part:41>],
    [<appliedenergistics2:part:41>, <appliedenergistics2:part:41>]
]);

// Стеклянный МЭ кабель (magenta)
recipes.remove(<appliedenergistics2:part:2>);
recipes.addShaped("nexus_exp_ae2_cable_glass_magenta", <appliedenergistics2:part:2> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:13>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (magenta)
recipes.remove(<appliedenergistics2:part:22>);
recipes.addShaped("nexus_exp_ae2_cable_covered_magenta", <appliedenergistics2:part:22> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:2>, <minecraft:wool>]
]);

// Умный МЭ кабель (magenta)
recipes.remove(<appliedenergistics2:part:42>);
recipes.addShaped("nexus_exp_ae2_cable_smart_magenta", <appliedenergistics2:part:42> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:2>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:2>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (magenta) 32 канала
recipes.remove(<appliedenergistics2:part:62>);
recipes.addShaped("nexus_exp_ae2_cable_dense_magenta", <appliedenergistics2:part:62> * 2, [
    [<appliedenergistics2:part:42>, <appliedenergistics2:part:42>],
    [<appliedenergistics2:part:42>, <appliedenergistics2:part:42>]
]);

// Стеклянный МЭ кабель (light_blue)
recipes.remove(<appliedenergistics2:part:3>);
recipes.addShaped("nexus_exp_ae2_cable_glass_light_blue", <appliedenergistics2:part:3> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:12>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (light_blue)
recipes.remove(<appliedenergistics2:part:23>);
recipes.addShaped("nexus_exp_ae2_cable_covered_light_blue", <appliedenergistics2:part:23> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:3>, <minecraft:wool>]
]);

// Умный МЭ кабель (light_blue)
recipes.remove(<appliedenergistics2:part:43>);
recipes.addShaped("nexus_exp_ae2_cable_smart_light_blue", <appliedenergistics2:part:43> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:3>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:3>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (light_blue) 32 канала
recipes.remove(<appliedenergistics2:part:63>);
recipes.addShaped("nexus_exp_ae2_cable_dense_light_blue", <appliedenergistics2:part:63> * 2, [
    [<appliedenergistics2:part:43>, <appliedenergistics2:part:43>],
    [<appliedenergistics2:part:43>, <appliedenergistics2:part:43>]
]);

// Стеклянный МЭ кабель (yellow)
recipes.remove(<appliedenergistics2:part:4>);
recipes.addShaped("nexus_exp_ae2_cable_glass_yellow", <appliedenergistics2:part:4> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:11>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (yellow)
recipes.remove(<appliedenergistics2:part:24>);
recipes.addShaped("nexus_exp_ae2_cable_covered_yellow", <appliedenergistics2:part:24> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:4>, <minecraft:wool>]
]);

// Умный МЭ кабель (yellow)
recipes.remove(<appliedenergistics2:part:44>);
recipes.addShaped("nexus_exp_ae2_cable_smart_yellow", <appliedenergistics2:part:44> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:4>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:4>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (yellow) 32 канала
recipes.remove(<appliedenergistics2:part:64>);
recipes.addShaped("nexus_exp_ae2_cable_dense_yellow", <appliedenergistics2:part:64> * 2, [
    [<appliedenergistics2:part:44>, <appliedenergistics2:part:44>],
    [<appliedenergistics2:part:44>, <appliedenergistics2:part:44>]
]);

// Стеклянный МЭ кабель (lime)
recipes.remove(<appliedenergistics2:part:5>);
recipes.addShaped("nexus_exp_ae2_cable_glass_lime", <appliedenergistics2:part:5> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:10>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (lime)
recipes.remove(<appliedenergistics2:part:25>);
recipes.addShaped("nexus_exp_ae2_cable_covered_lime", <appliedenergistics2:part:25> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:5>, <minecraft:wool>]
]);

// Умный МЭ кабель (lime)
recipes.remove(<appliedenergistics2:part:45>);
recipes.addShaped("nexus_exp_ae2_cable_smart_lime", <appliedenergistics2:part:45> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:5>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:5>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (lime) 32 канала
recipes.remove(<appliedenergistics2:part:65>);
recipes.addShaped("nexus_exp_ae2_cable_dense_lime", <appliedenergistics2:part:65> * 2, [
    [<appliedenergistics2:part:45>, <appliedenergistics2:part:45>],
    [<appliedenergistics2:part:45>, <appliedenergistics2:part:45>]
]);

// Стеклянный МЭ кабель (pink)
recipes.remove(<appliedenergistics2:part:6>);
recipes.addShaped("nexus_exp_ae2_cable_glass_pink", <appliedenergistics2:part:6> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:9>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (pink)
recipes.remove(<appliedenergistics2:part:26>);
recipes.addShaped("nexus_exp_ae2_cable_covered_pink", <appliedenergistics2:part:26> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:6>, <minecraft:wool>]
]);

// Умный МЭ кабель (pink)
recipes.remove(<appliedenergistics2:part:46>);
recipes.addShaped("nexus_exp_ae2_cable_smart_pink", <appliedenergistics2:part:46> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:6>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:6>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (pink) 32 канала
recipes.remove(<appliedenergistics2:part:66>);
recipes.addShaped("nexus_exp_ae2_cable_dense_pink", <appliedenergistics2:part:66> * 2, [
    [<appliedenergistics2:part:46>, <appliedenergistics2:part:46>],
    [<appliedenergistics2:part:46>, <appliedenergistics2:part:46>]
]);

// Стеклянный МЭ кабель (gray)
recipes.remove(<appliedenergistics2:part:7>);
recipes.addShaped("nexus_exp_ae2_cable_glass_gray", <appliedenergistics2:part:7> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:8>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (gray)
recipes.remove(<appliedenergistics2:part:27>);
recipes.addShaped("nexus_exp_ae2_cable_covered_gray", <appliedenergistics2:part:27> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:7>, <minecraft:wool>]
]);

// Умный МЭ кабель (gray)
recipes.remove(<appliedenergistics2:part:47>);
recipes.addShaped("nexus_exp_ae2_cable_smart_gray", <appliedenergistics2:part:47> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:7>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:7>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (gray) 32 канала
recipes.remove(<appliedenergistics2:part:67>);
recipes.addShaped("nexus_exp_ae2_cable_dense_gray", <appliedenergistics2:part:67> * 2, [
    [<appliedenergistics2:part:47>, <appliedenergistics2:part:47>],
    [<appliedenergistics2:part:47>, <appliedenergistics2:part:47>]
]);

// Стеклянный МЭ кабель (light_gray)
recipes.remove(<appliedenergistics2:part:8>);
recipes.addShaped("nexus_exp_ae2_cable_glass_light_gray", <appliedenergistics2:part:8> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:7>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (light_gray)
recipes.remove(<appliedenergistics2:part:28>);
recipes.addShaped("nexus_exp_ae2_cable_covered_light_gray", <appliedenergistics2:part:28> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:8>, <minecraft:wool>]
]);

// Умный МЭ кабель (light_gray)
recipes.remove(<appliedenergistics2:part:48>);
recipes.addShaped("nexus_exp_ae2_cable_smart_light_gray", <appliedenergistics2:part:48> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:8>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:8>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (light_gray) 32 канала
recipes.remove(<appliedenergistics2:part:68>);
recipes.addShaped("nexus_exp_ae2_cable_dense_light_gray", <appliedenergistics2:part:68> * 2, [
    [<appliedenergistics2:part:48>, <appliedenergistics2:part:48>],
    [<appliedenergistics2:part:48>, <appliedenergistics2:part:48>]
]);

// Стеклянный МЭ кабель (cyan)
recipes.remove(<appliedenergistics2:part:9>);
recipes.addShaped("nexus_exp_ae2_cable_glass_cyan", <appliedenergistics2:part:9> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:6>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (cyan)
recipes.remove(<appliedenergistics2:part:29>);
recipes.addShaped("nexus_exp_ae2_cable_covered_cyan", <appliedenergistics2:part:29> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:9>, <minecraft:wool>]
]);

// Умный МЭ кабель (cyan)
recipes.remove(<appliedenergistics2:part:49>);
recipes.addShaped("nexus_exp_ae2_cable_smart_cyan", <appliedenergistics2:part:49> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:9>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:9>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (cyan) 32 канала
recipes.remove(<appliedenergistics2:part:69>);
recipes.addShaped("nexus_exp_ae2_cable_dense_cyan", <appliedenergistics2:part:69> * 2, [
    [<appliedenergistics2:part:49>, <appliedenergistics2:part:49>],
    [<appliedenergistics2:part:49>, <appliedenergistics2:part:49>]
]);

// Стеклянный МЭ кабель (purple)
recipes.remove(<appliedenergistics2:part:10>);
recipes.addShaped("nexus_exp_ae2_cable_glass_purple", <appliedenergistics2:part:10> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:5>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (purple)
recipes.remove(<appliedenergistics2:part:30>);
recipes.addShaped("nexus_exp_ae2_cable_covered_purple", <appliedenergistics2:part:30> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:10>, <minecraft:wool>]
]);

// Умный МЭ кабель (purple)
recipes.remove(<appliedenergistics2:part:50>);
recipes.addShaped("nexus_exp_ae2_cable_smart_purple", <appliedenergistics2:part:50> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:10>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:10>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (purple) 32 канала
recipes.remove(<appliedenergistics2:part:70>);
recipes.addShaped("nexus_exp_ae2_cable_dense_purple", <appliedenergistics2:part:70> * 2, [
    [<appliedenergistics2:part:50>, <appliedenergistics2:part:50>],
    [<appliedenergistics2:part:50>, <appliedenergistics2:part:50>]
]);

// Стеклянный МЭ кабель (blue)
recipes.remove(<appliedenergistics2:part:11>);
recipes.addShaped("nexus_exp_ae2_cable_glass_blue", <appliedenergistics2:part:11> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:4>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (blue)
recipes.remove(<appliedenergistics2:part:31>);
recipes.addShaped("nexus_exp_ae2_cable_covered_blue", <appliedenergistics2:part:31> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:11>, <minecraft:wool>]
]);

// Умный МЭ кабель (blue)
recipes.remove(<appliedenergistics2:part:51>);
recipes.addShaped("nexus_exp_ae2_cable_smart_blue", <appliedenergistics2:part:51> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:11>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:11>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (blue) 32 канала
recipes.remove(<appliedenergistics2:part:71>);
recipes.addShaped("nexus_exp_ae2_cable_dense_blue", <appliedenergistics2:part:71> * 2, [
    [<appliedenergistics2:part:51>, <appliedenergistics2:part:51>],
    [<appliedenergistics2:part:51>, <appliedenergistics2:part:51>]
]);

// Стеклянный МЭ кабель (brown)
recipes.remove(<appliedenergistics2:part:12>);
recipes.addShaped("nexus_exp_ae2_cable_glass_brown", <appliedenergistics2:part:12> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:3>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (brown)
recipes.remove(<appliedenergistics2:part:32>);
recipes.addShaped("nexus_exp_ae2_cable_covered_brown", <appliedenergistics2:part:32> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:12>, <minecraft:wool>]
]);

// Умный МЭ кабель (brown)
recipes.remove(<appliedenergistics2:part:52>);
recipes.addShaped("nexus_exp_ae2_cable_smart_brown", <appliedenergistics2:part:52> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:12>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:12>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (brown) 32 канала
recipes.remove(<appliedenergistics2:part:72>);
recipes.addShaped("nexus_exp_ae2_cable_dense_brown", <appliedenergistics2:part:72> * 2, [
    [<appliedenergistics2:part:52>, <appliedenergistics2:part:52>],
    [<appliedenergistics2:part:52>, <appliedenergistics2:part:52>]
]);

// Стеклянный МЭ кабель (green)
recipes.remove(<appliedenergistics2:part:13>);
recipes.addShaped("nexus_exp_ae2_cable_glass_green", <appliedenergistics2:part:13> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:2>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (green)
recipes.remove(<appliedenergistics2:part:33>);
recipes.addShaped("nexus_exp_ae2_cable_covered_green", <appliedenergistics2:part:33> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:13>, <minecraft:wool>]
]);

// Умный МЭ кабель (green)
recipes.remove(<appliedenergistics2:part:53>);
recipes.addShaped("nexus_exp_ae2_cable_smart_green", <appliedenergistics2:part:53> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:13>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:13>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (green) 32 канала
recipes.remove(<appliedenergistics2:part:73>);
recipes.addShaped("nexus_exp_ae2_cable_dense_green", <appliedenergistics2:part:73> * 2, [
    [<appliedenergistics2:part:53>, <appliedenergistics2:part:53>],
    [<appliedenergistics2:part:53>, <appliedenergistics2:part:53>]
]);

// Стеклянный МЭ кабель (red)
recipes.remove(<appliedenergistics2:part:14>);
recipes.addShaped("nexus_exp_ae2_cable_glass_red", <appliedenergistics2:part:14> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:1>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (red)
recipes.remove(<appliedenergistics2:part:34>);
recipes.addShaped("nexus_exp_ae2_cable_covered_red", <appliedenergistics2:part:34> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:14>, <minecraft:wool>]
]);

// Умный МЭ кабель (red)
recipes.remove(<appliedenergistics2:part:54>);
recipes.addShaped("nexus_exp_ae2_cable_smart_red", <appliedenergistics2:part:54> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:14>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:14>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (red) 32 канала
recipes.remove(<appliedenergistics2:part:74>);
recipes.addShaped("nexus_exp_ae2_cable_dense_red", <appliedenergistics2:part:74> * 2, [
    [<appliedenergistics2:part:54>, <appliedenergistics2:part:54>],
    [<appliedenergistics2:part:54>, <appliedenergistics2:part:54>]
]);

// Стеклянный МЭ кабель (black)
recipes.remove(<appliedenergistics2:part:15>);
recipes.addShaped("nexus_exp_ae2_cable_glass_black", <appliedenergistics2:part:15> * 8, [
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <minecraft:dye:0>, <appliedenergistics2:part:16>],
    [<appliedenergistics2:part:16>, <appliedenergistics2:part:16>, <appliedenergistics2:part:16>]
]);

// Закрытый МЭ кабель (black)
recipes.remove(<appliedenergistics2:part:35>);
recipes.addShaped("nexus_exp_ae2_cable_covered_black", <appliedenergistics2:part:35> * 4, [
    [<minecraft:wool>, <appliedenergistics2:part:15>, <minecraft:wool>]
]);

// Умный МЭ кабель (black)
recipes.remove(<appliedenergistics2:part:55>);
recipes.addShaped("nexus_exp_ae2_cable_smart_black", <appliedenergistics2:part:55> * 4, [
    [<minecraft:redstone>, <appliedenergistics2:part:15>, <minecraft:redstone>],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:15>, <minecraft:glowstone_dust>]
]);

// Плотный МЭ кабель (black) 32 канала
recipes.remove(<appliedenergistics2:part:75>);
recipes.addShaped("nexus_exp_ae2_cable_dense_black", <appliedenergistics2:part:75> * 2, [
    [<appliedenergistics2:part:55>, <appliedenergistics2:part:55>],
    [<appliedenergistics2:part:55>, <appliedenergistics2:part:55>]
]);

// Карта емкости
recipes.remove(<appliedenergistics2:material:27>);
recipes.addShaped("nexus_exp_ae2_card_capacity", <appliedenergistics2:material:27>, [
    [null, <minecraft:hopper>, null],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:25>, <thermalfoundation:material:32>],
    [null, null, null]
]);

// Редстоун карта
recipes.remove(<appliedenergistics2:material:26>);
recipes.addShaped("nexus_exp_ae2_card_redstone", <appliedenergistics2:material:26>, [
    [null, <minecraft:redstone_torch>, null],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:25>, <thermalfoundation:material:32>],
    [null, null, null]
]);

// Карта ускорения
recipes.remove(<appliedenergistics2:material:28>);
recipes.addShaped("nexus_exp_ae2_card_acceleration", <appliedenergistics2:material:28>, [
    [null, <appliedenergistics2:material:12>, null],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:25>, <thermalfoundation:material:32>],
    [null, null, null]
]);

// Карта инвертора
recipes.remove(<appliedenergistics2:material:29>);
recipes.addShaped("nexus_exp_ae2_card_inverter", <appliedenergistics2:material:29>, [
    [null, <minecraft:lever>, null],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:25>, <thermalfoundation:material:32>],
    [null, null, null]
]);

// Карта нечеткости (Fuzzy)
recipes.remove(<appliedenergistics2:material:30>);
recipes.addShaped("nexus_exp_ae2_card_fuzzy", <appliedenergistics2:material:30>, [
    [null, <minecraft:wool>, null],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:25>, <thermalfoundation:material:32>],
    [null, null, null]
]);

// Карта создания
recipes.remove(<appliedenergistics2:material:53>);
recipes.addShaped("nexus_exp_ae2_card_crafting", <appliedenergistics2:material:53>, [
    [null, <minecraft:crafting_table>, null],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:25>, <thermalfoundation:material:32>],
    [null, null, null]
]);

// МЭ Шина импорта
recipes.remove(<appliedenergistics2:part:240>);
recipes.addShaped("nexus_exp_ae2_import_bus", <appliedenergistics2:part:240>, [
    [null, <thermalfoundation:material:32>, null],
    [<appliedenergistics2:material:44>, <minecraft:piston>, <appliedenergistics2:material:44>],
    [null, <appliedenergistics2:part:16>, null]
]);

// МЭ Шина экспорта
recipes.remove(<appliedenergistics2:part:260>);
recipes.addShaped("nexus_exp_ae2_export_bus", <appliedenergistics2:part:260>, [
    [null, <thermalfoundation:material:32>, null],
    [<appliedenergistics2:material:43>, <minecraft:piston>, <appliedenergistics2:material:43>],
    [null, <appliedenergistics2:part:16>, null]
]);

// МЭ Шина хранения
recipes.remove(<appliedenergistics2:part:220>);
recipes.addShaped("nexus_exp_ae2_storage_bus", <appliedenergistics2:part:220>, [
    [null, <thermalfoundation:material:32>, null],
    [<appliedenergistics2:part:380>, <minecraft:piston>, <appliedenergistics2:part:380>],
    [null, <appliedenergistics2:part:16>, null]
]);

// МЭ Интерфейс
recipes.remove(<appliedenergistics2:interface>);
recipes.addShaped("nexus_exp_ae2_interface", <appliedenergistics2:interface>, [
    [<thermalfoundation:material:32>, <minecraft:glass>, <thermalfoundation:material:32>],
    [<appliedenergistics2:material:44>, null, <appliedenergistics2:material:43>],
    [<thermalfoundation:material:32>, <minecraft:glass>, <thermalfoundation:material:32>]
]);

// Молекулярный сборщик
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped("nexus_exp_ae2_molecular_assembler", <appliedenergistics2:molecular_assembler>, [
    [<thermalfoundation:material:32>, <minecraft:glass>, <thermalfoundation:material:32>],
    [<appliedenergistics2:material:44>, <minecraft:crafting_table>, <appliedenergistics2:material:43>],
    [<thermalfoundation:material:32>, <minecraft:glass>, <thermalfoundation:material:32>]
]);

// Упаковочный сборщик PackagedAuto
recipes.addShaped("nexus_exp_ae2_package_crafter", <packagedauto:package_crafter>, [
    [<thermalfoundation:material:32>, <appliedenergistics2:molecular_assembler>, <thermalfoundation:material:32>],
    [<appliedenergistics2:material:23>, <appliedenergistics2:interface>, <appliedenergistics2:material:23>],
    [<thermalfoundation:material:352>, <appliedenergistics2:material:24>, <thermalfoundation:material:352>]
]);

// Упаковщик шаблонов PackagedAuto
recipes.addShaped("nexus_exp_ae2_packager", <packagedauto:packager>, [
    [<thermalfoundation:material:32>, <minecraft:chest>, <thermalfoundation:material:32>],
    [<appliedenergistics2:material:23>, <appliedenergistics2:interface>, <appliedenergistics2:material:23>],
    [<thermalfoundation:material:352>, <appliedenergistics2:material:24>, <thermalfoundation:material:352>]
]);

// Распаковщик PackagedAuto
recipes.addShaped("nexus_exp_ae2_unpackager", <packagedauto:unpackager>, [
    [<thermalfoundation:material:32>, <minecraft:hopper>, <thermalfoundation:material:32>],
    [<appliedenergistics2:material:23>, <appliedenergistics2:interface>, <appliedenergistics2:material:23>],
    [<thermalfoundation:material:352>, <appliedenergistics2:material:24>, <thermalfoundation:material:352>]
]);

// Камера выращивания кристаллов AE2 Stuff
recipes.addShaped("nexus_exp_ae2_growth_chamber", <ae2stuff:grower>, [
    [<thermalfoundation:material:32>, <minecraft:water_bucket>, <thermalfoundation:material:32>],
    [<appliedenergistics2:quartz_growth_accelerator>, <thermalexpansion:frame:0>, <appliedenergistics2:quartz_growth_accelerator>],
    [<thermalfoundation:material:32>, <appliedenergistics2:material:24>, <thermalfoundation:material:32>]
]);

// Продвинутый высекатель AE2 Stuff
recipes.addShaped("nexus_exp_ae2_adv_inscriber", <ae2stuff:inscriber>, [
    [<thermalfoundation:material:32>, <minecraft:piston>, <thermalfoundation:material:32>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:inscriber>, <appliedenergistics2:material:24>],
    [<thermalfoundation:material:352>, <minecraft:hopper>, <thermalfoundation:material:352>]
]);
