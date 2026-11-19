// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Immersive Engineering & Heavy Industrial Infrastructure
// Generated Recipes: 83
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Деревянные строительные леса
recipes.remove(<immersiveengineering:wooden_decoration:1>);
recipes.addShaped("nexus_exp_ie_scaffolding_wood", <immersiveengineering:wooden_decoration:1> * 6, [
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
    [null, <immersiveengineering:material:3>, null],
    [<immersiveengineering:material:3>, null, <immersiveengineering:material:3>]
]);

// Стальные строительные леса
recipes.remove(<immersiveengineering:metal_decoration1:1>);
recipes.addShaped("nexus_exp_ie_scaffolding_steel", <immersiveengineering:metal_decoration1:1> * 6, [
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
    [null, <immersiveengineering:material:3>, null],
    [<immersiveengineering:material:3>, null, <immersiveengineering:material:3>]
]);

// Алюминиевые строительные леса
recipes.remove(<immersiveengineering:metal_decoration1:5>);
recipes.addShaped("nexus_exp_ie_scaffolding_aluminum", <immersiveengineering:metal_decoration1:5> * 6, [
    [<thermalfoundation:material:324>, <thermalfoundation:material:324>, <thermalfoundation:material:324>],
    [null, <immersiveengineering:material:1>, null],
    [<immersiveengineering:material:1>, null, <immersiveengineering:material:1>]
]);

// Деревянный столб IE
recipes.remove(<immersiveengineering:wooden_decoration:0>);
recipes.addShaped("nexus_exp_ie_post_wood", <immersiveengineering:wooden_decoration:0> * 4, [
    [<immersiveengineering:treated_wood>],
    [<immersiveengineering:treated_wood>],
    [<immersiveengineering:treated_wood>]
]);

// Стальной столб IE
recipes.remove(<immersiveengineering:metal_decoration2:4>);
recipes.addShaped("nexus_exp_ie_post_steel", <immersiveengineering:metal_decoration2:4> * 4, [
    [<thermalfoundation:material:352>],
    [<thermalfoundation:material:352>],
    [<thermalfoundation:material:352>]
]);

// Алюминиевый столб IE
recipes.remove(<immersiveengineering:metal_decoration2:5>);
recipes.addShaped("nexus_exp_ie_post_aluminum", <immersiveengineering:metal_decoration2:5> * 4, [
    [<thermalfoundation:material:324>],
    [<thermalfoundation:material:324>],
    [<thermalfoundation:material:324>]
]);

// Стальная лестница IE
recipes.remove(<immersiveengineering:metal_decoration2:0>);
recipes.addShaped("nexus_exp_ie_ladder_steel", <immersiveengineering:metal_decoration2:0> * 3, [
    [<immersiveengineering:material:3>, null, <immersiveengineering:material:3>],
    [<immersiveengineering:material:3>, <immersiveengineering:material:3>, <immersiveengineering:material:3>],
    [<immersiveengineering:material:3>, null, <immersiveengineering:material:3>]
]);

// Фонарь инженера
recipes.remove(<immersiveengineering:metal_decoration2:2>);
recipes.addShaped("nexus_exp_ie_lantern", <immersiveengineering:metal_decoration2:2>, [
    [null, <thermalfoundation:material:32>, null],
    [<minecraft:glass_pane>, <minecraft:torch>, <minecraft:glass_pane>],
    [null, <thermalfoundation:material:32>, null]
]);

// Электрический фонарь
recipes.remove(<immersiveengineering:metal_device1:4>);
recipes.addShaped("nexus_exp_ie_powered_lantern", <immersiveengineering:metal_device1:4>, [
    [null, <thermalfoundation:material:32>, null],
    [<minecraft:glass_pane>, <minecraft:glowstone_dust>, <minecraft:glass_pane>],
    [null, <immersiveengineering:material:1>, null]
]);

// Прожектор
recipes.remove(<immersiveengineering:metal_device1:9>);
recipes.addShaped("nexus_exp_ie_floodlight", <immersiveengineering:metal_device1:9>, [
    [<thermalfoundation:material:352>, <minecraft:glowstone>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <minecraft:glass>, <thermalfoundation:material:352>],
    [null, <immersiveengineering:material:3>, null]
]);

// Низковольтный коннектор (LV)
recipes.remove(<immersiveengineering:metal_device0:0>);
recipes.addShaped("nexus_exp_ie_lv_conn", <immersiveengineering:metal_device0:0> * 4, [
    [null, <minecraft:hardened_clay>, null],
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:320>],
    [null, <minecraft:hardened_clay>, null]
]);

// Низковольтное реле (LV)
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.addShaped("nexus_exp_ie_lv_relay", <immersiveengineering:metal_device0:1> * 4, [
    [null, <minecraft:hardened_clay>, null],
    [<thermalfoundation:material:32>, <thermalfoundation:material:320>, <thermalfoundation:material:32>],
    [null, <minecraft:hardened_clay>, null]
]);

// Средневольтный коннектор (MV)
recipes.remove(<immersiveengineering:metal_device0:2>);
recipes.addShaped("nexus_exp_ie_mv_conn", <immersiveengineering:metal_device0:2> * 4, [
    [null, <minecraft:hardened_clay>, null],
    [<thermalfoundation:material:353>, <thermalfoundation:material:353>, <thermalfoundation:material:353>],
    [null, <minecraft:hardened_clay>, null]
]);

// Средневольтное реле (MV)
recipes.remove(<immersiveengineering:metal_device0:3>);
recipes.addShaped("nexus_exp_ie_mv_relay", <immersiveengineering:metal_device0:3> * 4, [
    [null, <minecraft:hardened_clay>, null],
    [<thermalfoundation:material:32>, <thermalfoundation:material:353>, <thermalfoundation:material:32>],
    [null, <minecraft:hardened_clay>, null]
]);

// Высоковольтный коннектор (HV)
recipes.remove(<immersiveengineering:metal_device0:4>);
recipes.addShaped("nexus_exp_ie_hv_conn", <immersiveengineering:metal_device0:4> * 4, [
    [null, <minecraft:hardened_clay>, null],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
    [null, <minecraft:hardened_clay>, null]
]);

// Высоковольтное реле (HV)
recipes.remove(<immersiveengineering:metal_device0:5>);
recipes.addShaped("nexus_exp_ie_hv_relay", <immersiveengineering:metal_device0:5> * 4, [
    [null, <minecraft:hardened_clay>, null],
    [<thermalfoundation:material:32>, <thermalfoundation:material:352>, <thermalfoundation:material:32>],
    [null, <minecraft:hardened_clay>, null]
]);

// Проходной изолятор
recipes.remove(<immersiveengineering:metal_device0:6>);
recipes.addShaped("nexus_exp_ie_feedthrough", <immersiveengineering:metal_device0:6> * 2, [
    [<immersiveengineering:material:3>, <minecraft:hardened_clay>, <immersiveengineering:material:3>],
    [<minecraft:hardened_clay>, <thermalfoundation:material:352>, <minecraft:hardened_clay>],
    [<immersiveengineering:material:3>, <minecraft:hardened_clay>, <immersiveengineering:material:3>]
]);

// Редстоун коннектор
recipes.remove(<immersiveengineering:connector:0>);
recipes.addShaped("nexus_exp_ie_redstone_conn", <immersiveengineering:connector:0> * 4, [
    [null, <minecraft:redstone>, null],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
    [null, <minecraft:hardened_clay>, null]
]);

// Редстоун реле
recipes.remove(<immersiveengineering:connector:1>);
recipes.addShaped("nexus_exp_ie_redstone_relay", <immersiveengineering:connector:1> * 4, [
    [null, <minecraft:redstone>, null],
    [<thermalfoundation:material:32>, <minecraft:stone>, <thermalfoundation:material:32>],
    [null, <minecraft:hardened_clay>, null]
]);

// Коннектор зонда
recipes.remove(<immersiveengineering:connector:2>);
recipes.addShaped("nexus_exp_ie_probe_conn", <immersiveengineering:connector:2> * 2, [
    [null, <minecraft:comparator>, null],
    [<thermalfoundation:material:32>, <thermalfoundation:material:352>, <thermalfoundation:material:32>],
    [null, <minecraft:hardened_clay>, null]
]);

// Трансформатор LV-MV
recipes.remove(<immersiveengineering:metal_device0:7>);
recipes.addShaped("nexus_exp_ie_transformer_lv_mv", <immersiveengineering:metal_device0:7>, [
    [<immersiveengineering:metal_device0:0>, null, <immersiveengineering:metal_device0:2>],
    [<thermalfoundation:material:32>, <immersiveengineering:metal_decoration0:4>, <thermalfoundation:material:32>],
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:32>, <immersiveengineering:treated_wood>]
]);

// Трансформатор MV-HV
recipes.remove(<immersiveengineering:metal_device0:8>);
recipes.addShaped("nexus_exp_ie_transformer_mv_hv", <immersiveengineering:metal_device0:8>, [
    [<immersiveengineering:metal_device0:2>, null, <immersiveengineering:metal_device0:4>],
    [<thermalfoundation:material:352>, <immersiveengineering:metal_decoration0:5>, <thermalfoundation:material:352>],
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:352>, <immersiveengineering:treated_wood>]
]);

// LV Конденсатор инженера
recipes.remove(<immersiveengineering:metal_device0:10>);
recipes.addShaped("nexus_exp_ie_capacitor_lv", <immersiveengineering:metal_device0:10>, [
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:320>, <immersiveengineering:treated_wood>],
    [<thermalfoundation:material:320>, <minecraft:redstone_block>, <thermalfoundation:material:320>],
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:323>, <immersiveengineering:treated_wood>]
]);

// MV Конденсатор инженера
recipes.remove(<immersiveengineering:metal_device0:11>);
recipes.addShaped("nexus_exp_ie_capacitor_mv", <immersiveengineering:metal_device0:11>, [
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:353>, <immersiveengineering:treated_wood>],
    [<thermalfoundation:material:353>, <immersiveengineering:metal_device0:10>, <thermalfoundation:material:353>],
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:323>, <immersiveengineering:treated_wood>]
]);

// HV Конденсатор инженера
recipes.remove(<immersiveengineering:metal_device0:12>);
recipes.addShaped("nexus_exp_ie_capacitor_hv", <immersiveengineering:metal_device0:12>, [
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:352>, <immersiveengineering:treated_wood>],
    [<thermalfoundation:material:352>, <immersiveengineering:metal_device0:11>, <thermalfoundation:material:352>],
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:323>, <immersiveengineering:treated_wood>]
]);

// Конвейерная лента IE
recipes.remove(<immersiveengineering:conveyor:0>);
recipes.addShaped("nexus_exp_ie_conv_basic", <immersiveengineering:conveyor:0> * 8, [
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
    [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>]
]);

// Сбрасывающий конвейер
recipes.remove(<immersiveengineering:conveyor:1>);
recipes.addShaped("nexus_exp_ie_conv_dropper", <immersiveengineering:conveyor:1> * 4, [
    [<minecraft:leather>, <minecraft:hopper>, <minecraft:leather>],
    [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>]
]);

// Вертикальный конвейер
recipes.remove(<immersiveengineering:conveyor:2>);
recipes.addShaped("nexus_exp_ie_conv_vertical", <immersiveengineering:conveyor:2> * 4, [
    [<minecraft:leather>, <thermalfoundation:material:32>, <minecraft:leather>],
    [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>]
]);

// Разделительный конвейер
recipes.remove(<immersiveengineering:conveyor:3>);
recipes.addShaped("nexus_exp_ie_conv_splitter", <immersiveengineering:conveyor:3> * 2, [
    [<minecraft:leather>, <minecraft:iron_ingot>, <minecraft:leather>],
    [<thermalfoundation:material:32>, <minecraft:comparator>, <thermalfoundation:material:32>]
]);

// Извлекающий конвейер
recipes.remove(<immersiveengineering:conveyor:4>);
recipes.addShaped("nexus_exp_ie_conv_extract", <immersiveengineering:conveyor:4> * 4, [
    [<minecraft:leather>, <minecraft:piston>, <minecraft:leather>],
    [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>]
]);

// Кирпич коксовой печи
recipes.remove(<immersiveengineering:stone_decoration:0>);
recipes.addShaped("nexus_exp_ie_coke_brick", <immersiveengineering:stone_decoration:0> * 3, [
    [<minecraft:clay_ball>, <minecraft:brick>, <minecraft:clay_ball>],
    [<minecraft:brick>, <minecraft:sandstone>, <minecraft:brick>],
    [<minecraft:clay_ball>, <minecraft:brick>, <minecraft:clay_ball>]
]);

// Кирпич доменной печи
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped("nexus_exp_ie_blast_brick", <immersiveengineering:stone_decoration:1> * 3, [
    [<minecraft:nether_brick>, <minecraft:brick>, <minecraft:nether_brick>],
    [<minecraft:brick>, <minecraft:magma>, <minecraft:brick>],
    [<minecraft:nether_brick>, <minecraft:brick>, <minecraft:nether_brick>]
]);

// Укрепленный кирпич доменной печи
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.addShaped("nexus_exp_ie_blast_brick_reinforced", <immersiveengineering:stone_decoration:2> * 2, [
    [<thermalfoundation:material:352>, <immersiveengineering:stone_decoration:1>, <thermalfoundation:material:352>],
    [<immersiveengineering:stone_decoration:1>, <minecraft:obsidian>, <immersiveengineering:stone_decoration:1>],
    [<thermalfoundation:material:352>, <immersiveengineering:stone_decoration:1>, <thermalfoundation:material:352>]
]);

// Кирпич плавильной печи сплавов
recipes.remove(<immersiveengineering:stone_decoration:10>);
recipes.addShaped("nexus_exp_ie_alloy_brick", <immersiveengineering:stone_decoration:10> * 2, [
    [<minecraft:brick>, <minecraft:sandstone>, <minecraft:brick>],
    [<minecraft:sandstone>, <thermalfoundation:material:320>, <minecraft:sandstone>],
    [<minecraft:brick>, <minecraft:sandstone>, <minecraft:brick>]
]);

// Блок легкой инженерии
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped("nexus_exp_ie_light_engineering", <immersiveengineering:metal_decoration0:4> * 2, [
    [<thermalfoundation:material:32>, <immersiveengineering:material:1>, <thermalfoundation:material:32>],
    [<immersiveengineering:material:1>, <thermalfoundation:material:320>, <immersiveengineering:material:1>],
    [<thermalfoundation:material:32>, <immersiveengineering:material:1>, <thermalfoundation:material:32>]
]);

// Блок тяжелой инженерии
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped("nexus_exp_ie_heavy_engineering", <immersiveengineering:metal_decoration0:5> * 2, [
    [<thermalfoundation:material:352>, <immersiveengineering:material:3>, <thermalfoundation:material:352>],
    [<immersiveengineering:material:3>, <minecraft:piston>, <immersiveengineering:material:3>],
    [<thermalfoundation:material:352>, <immersiveengineering:material:3>, <thermalfoundation:material:352>]
]);

// Блок электрогенератора
recipes.remove(<immersiveengineering:metal_decoration0:6>);
recipes.addShaped("nexus_exp_ie_generator_block", <immersiveengineering:metal_decoration0:6> * 2, [
    [<thermalfoundation:material:352>, <thermalfoundation:material:353>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:353>, <minecraft:iron_block>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:353>, <thermalfoundation:material:352>]
]);

// Блок радиатора охлаждения
recipes.remove(<immersiveengineering:metal_decoration0:7>);
recipes.addShaped("nexus_exp_ie_radiator_block", <immersiveengineering:metal_decoration0:7> * 2, [
    [<thermalfoundation:material:352>, <thermalfoundation:material:320>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:320>, <minecraft:water_bucket>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:320>, <thermalfoundation:material:352>]
]);

// Блок редстоун инженерии
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped("nexus_exp_ie_redstone_engineering", <immersiveengineering:metal_decoration0:3> * 2, [
    [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>],
    [<minecraft:redstone>, <minecraft:redstone_block>, <minecraft:redstone>],
    [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>]
]);

// Жидкостная труба инженера
recipes.remove(<immersiveengineering:metal_device1:6>);
recipes.addShaped("nexus_exp_ie_fluid_pipe", <immersiveengineering:metal_device1:6> * 8, [
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
    [null, null, null],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]
]);

// Жидкостная помпа инженера
recipes.remove(<immersiveengineering:metal_device0:13>);
recipes.addShaped("nexus_exp_ie_fluid_pump", <immersiveengineering:metal_device0:13>, [
    [<thermalfoundation:material:32>, <minecraft:piston>, <thermalfoundation:material:32>],
    [<immersiveengineering:material:1>, <immersiveengineering:metal_device1:6>, <immersiveengineering:material:1>],
    [<thermalfoundation:material:352>, <immersiveengineering:metal_decoration0:4>, <thermalfoundation:material:352>]
]);

// Железный бур для буровой установки
recipes.remove(<immersiveengineering:drillhead:1>);
recipes.addShaped("nexus_exp_ie_drillhead_iron", <immersiveengineering:drillhead:1>, [
    [null, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:32>, <minecraft:iron_block>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, null]
]);

// Стальной бур для буровой установки
recipes.remove(<immersiveengineering:drillhead:0>);
recipes.addShaped("nexus_exp_ie_drillhead_steel", <immersiveengineering:drillhead:0>, [
    [null, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <thermalfoundation:storage_alloy:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, null]
]);

// Шахтерский механический бур
recipes.remove(<immersiveengineering:drill:0>);
recipes.addShaped("nexus_exp_ie_mining_drill", <immersiveengineering:drill:0>, [
    [<thermalfoundation:material:352>, <immersiveengineering:metal_decoration0:4>, null],
    [null, <immersiveengineering:material:3>, <immersiveengineering:metal_decoration0:5>],
    [null, null, <thermalfoundation:material:352>]
]);

// Инженерный револьвер
recipes.remove(<immersiveengineering:revolver:0>);
recipes.addShaped("nexus_exp_ie_revolver", <immersiveengineering:revolver:0>, [
    [<immersiveengineering:material:3>, <thermalfoundation:material:352>, <minecraft:iron_ingot>],
    [<immersiveengineering:treated_wood>, <minecraft:lever>, null],
    [<immersiveengineering:treated_wood>, null, null]
]);

// Листовой металл: copper
recipes.remove(<immersiveengineering:sheetmetal:0>);
recipes.addShaped("nexus_exp_ie_sheetmetal_copper", <immersiveengineering:sheetmetal:0> * 4, [
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>]
]);

// Листовая полуплита: copper
recipes.remove(<immersiveengineering:sheetmetal_slab:0>);
recipes.addShaped("nexus_exp_ie_sheetmetal_slab_copper", <immersiveengineering:sheetmetal_slab:0> * 6, [
    [<immersiveengineering:sheetmetal:0>, <immersiveengineering:sheetmetal:0>, <immersiveengineering:sheetmetal:0>]
]);

// Листовой металл: aluminum
recipes.remove(<immersiveengineering:sheetmetal:1>);
recipes.addShaped("nexus_exp_ie_sheetmetal_aluminum", <immersiveengineering:sheetmetal:1> * 4, [
    [<thermalfoundation:material:324>, <thermalfoundation:material:324>],
    [<thermalfoundation:material:324>, <thermalfoundation:material:324>]
]);

// Листовая полуплита: aluminum
recipes.remove(<immersiveengineering:sheetmetal_slab:1>);
recipes.addShaped("nexus_exp_ie_sheetmetal_slab_aluminum", <immersiveengineering:sheetmetal_slab:1> * 6, [
    [<immersiveengineering:sheetmetal:1>, <immersiveengineering:sheetmetal:1>, <immersiveengineering:sheetmetal:1>]
]);

// Листовой металл: lead
recipes.remove(<immersiveengineering:sheetmetal:2>);
recipes.addShaped("nexus_exp_ie_sheetmetal_lead", <immersiveengineering:sheetmetal:2> * 4, [
    [<thermalfoundation:material:323>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:323>, <thermalfoundation:material:323>]
]);

// Листовая полуплита: lead
recipes.remove(<immersiveengineering:sheetmetal_slab:2>);
recipes.addShaped("nexus_exp_ie_sheetmetal_slab_lead", <immersiveengineering:sheetmetal_slab:2> * 6, [
    [<immersiveengineering:sheetmetal:2>, <immersiveengineering:sheetmetal:2>, <immersiveengineering:sheetmetal:2>]
]);

// Листовой металл: silver
recipes.remove(<immersiveengineering:sheetmetal:3>);
recipes.addShaped("nexus_exp_ie_sheetmetal_silver", <immersiveengineering:sheetmetal:3> * 4, [
    [<thermalfoundation:material:322>, <thermalfoundation:material:322>],
    [<thermalfoundation:material:322>, <thermalfoundation:material:322>]
]);

// Листовая полуплита: silver
recipes.remove(<immersiveengineering:sheetmetal_slab:3>);
recipes.addShaped("nexus_exp_ie_sheetmetal_slab_silver", <immersiveengineering:sheetmetal_slab:3> * 6, [
    [<immersiveengineering:sheetmetal:3>, <immersiveengineering:sheetmetal:3>, <immersiveengineering:sheetmetal:3>]
]);

// Листовой металл: nickel
recipes.remove(<immersiveengineering:sheetmetal:4>);
recipes.addShaped("nexus_exp_ie_sheetmetal_nickel", <immersiveengineering:sheetmetal:4> * 4, [
    [<thermalfoundation:material:325>, <thermalfoundation:material:325>],
    [<thermalfoundation:material:325>, <thermalfoundation:material:325>]
]);

// Листовая полуплита: nickel
recipes.remove(<immersiveengineering:sheetmetal_slab:4>);
recipes.addShaped("nexus_exp_ie_sheetmetal_slab_nickel", <immersiveengineering:sheetmetal_slab:4> * 6, [
    [<immersiveengineering:sheetmetal:4>, <immersiveengineering:sheetmetal:4>, <immersiveengineering:sheetmetal:4>]
]);

// Листовой металл: constantan
recipes.remove(<immersiveengineering:sheetmetal:6>);
recipes.addShaped("nexus_exp_ie_sheetmetal_constantan", <immersiveengineering:sheetmetal:6> * 4, [
    [<thermalfoundation:material:356>, <thermalfoundation:material:356>],
    [<thermalfoundation:material:356>, <thermalfoundation:material:356>]
]);

// Листовая полуплита: constantan
recipes.remove(<immersiveengineering:sheetmetal_slab:6>);
recipes.addShaped("nexus_exp_ie_sheetmetal_slab_constantan", <immersiveengineering:sheetmetal_slab:6> * 6, [
    [<immersiveengineering:sheetmetal:6>, <immersiveengineering:sheetmetal:6>, <immersiveengineering:sheetmetal:6>]
]);

// Листовой металл: electrum
recipes.remove(<immersiveengineering:sheetmetal:7>);
recipes.addShaped("nexus_exp_ie_sheetmetal_electrum", <immersiveengineering:sheetmetal:7> * 4, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:353>]
]);

// Листовая полуплита: electrum
recipes.remove(<immersiveengineering:sheetmetal_slab:7>);
recipes.addShaped("nexus_exp_ie_sheetmetal_slab_electrum", <immersiveengineering:sheetmetal_slab:7> * 6, [
    [<immersiveengineering:sheetmetal:7>, <immersiveengineering:sheetmetal:7>, <immersiveengineering:sheetmetal:7>]
]);

// Листовой металл: steel
recipes.remove(<immersiveengineering:sheetmetal:8>);
recipes.addShaped("nexus_exp_ie_sheetmetal_steel", <immersiveengineering:sheetmetal:8> * 4, [
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Листовая полуплита: steel
recipes.remove(<immersiveengineering:sheetmetal_slab:8>);
recipes.addShaped("nexus_exp_ie_sheetmetal_slab_steel", <immersiveengineering:sheetmetal_slab:8> * 6, [
    [<immersiveengineering:sheetmetal:8>, <immersiveengineering:sheetmetal:8>, <immersiveengineering:sheetmetal:8>]
]);

// Листовой металл: iron
recipes.remove(<immersiveengineering:sheetmetal:9>);
recipes.addShaped("nexus_exp_ie_sheetmetal_iron", <immersiveengineering:sheetmetal:9> * 4, [
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>]
]);

// Листовая полуплита: iron
recipes.remove(<immersiveengineering:sheetmetal_slab:9>);
recipes.addShaped("nexus_exp_ie_sheetmetal_slab_iron", <immersiveengineering:sheetmetal_slab:9> * 6, [
    [<immersiveengineering:sheetmetal:9>, <immersiveengineering:sheetmetal:9>, <immersiveengineering:sheetmetal:9>]
]);

// Листовой металл: gold
recipes.remove(<immersiveengineering:sheetmetal:10>);
recipes.addShaped("nexus_exp_ie_sheetmetal_gold", <immersiveengineering:sheetmetal:10> * 4, [
    [<thermalfoundation:material:33>, <thermalfoundation:material:33>],
    [<thermalfoundation:material:33>, <thermalfoundation:material:33>]
]);

// Листовая полуплита: gold
recipes.remove(<immersiveengineering:sheetmetal_slab:10>);
recipes.addShaped("nexus_exp_ie_sheetmetal_slab_gold", <immersiveengineering:sheetmetal_slab:10> * 6, [
    [<immersiveengineering:sheetmetal:10>, <immersiveengineering:sheetmetal:10>, <immersiveengineering:sheetmetal:10>]
]);

// Стандартный патрон
recipes.addShaped("nexus_exp_ie_ammo_regular", <immersiveengineering:bullet:0> * 8, [
    [<minecraft:iron_ingot>],
    [<minecraft:gunpowder>],
    [<thermalfoundation:material:32>]
]);

// Бронебойный патрон
recipes.addShaped("nexus_exp_ie_ammo_armor_piercing", <immersiveengineering:bullet:1> * 8, [
    [<thermalfoundation:material:352>],
    [<minecraft:gunpowder>],
    [<thermalfoundation:material:32>]
]);

// Картечный патрон
recipes.addShaped("nexus_exp_ie_ammo_buckshot", <immersiveengineering:bullet:2> * 8, [
    [<thermalfoundation:material:323>],
    [<minecraft:gunpowder>],
    [<thermalfoundation:material:32>]
]);

// Разрывной фугасный патрон
recipes.addShaped("nexus_exp_ie_ammo_he", <immersiveengineering:bullet:3> * 8, [
    [<minecraft:tnt>],
    [<minecraft:gunpowder>],
    [<thermalfoundation:material:32>]
]);

// Сигнальный патрон
recipes.addShaped("nexus_exp_ie_ammo_flare", <immersiveengineering:bullet:4> * 8, [
    [<minecraft:glowstone_dust>],
    [<minecraft:gunpowder>],
    [<thermalfoundation:material:32>]
]);

// Серебряный патрон против нежити
recipes.addShaped("nexus_exp_ie_ammo_silver", <immersiveengineering:bullet:7> * 8, [
    [<thermalfoundation:material:322>],
    [<minecraft:gunpowder>],
    [<thermalfoundation:material:32>]
]);

// Патрон дыхания дракона
recipes.addShaped("nexus_exp_ie_ammo_dragons_breath", <immersiveengineering:bullet:8> * 4, [
    [<minecraft:dragon_breath>],
    [<minecraft:gunpowder>],
    [<thermalfoundation:material:32>]
]);

// Алхимический патрон
recipes.addShaped("nexus_exp_ie_ammo_potion", <immersiveengineering:bullet:9> * 4, [
    [<minecraft:glass_bottle>],
    [<minecraft:gunpowder>],
    [<thermalfoundation:material:32>]
]);

// Самонаводящийся патрон
recipes.addShaped("nexus_exp_ie_ammo_homing", <immersiveengineering:bullet:10> * 4, [
    [<minecraft:ender_pearl>],
    [<minecraft:gunpowder>],
    [<thermalfoundation:material:32>]
]);

// Кассетный патрон (Wolfpack)
recipes.addShaped("nexus_exp_ie_ammo_wolfpack", <immersiveengineering:bullet:11> * 4, [
    [<minecraft:firework_charge>],
    [<minecraft:gunpowder>],
    [<thermalfoundation:material:32>]
]);

// Забор из обработанной древесины
recipes.addShaped("nexus_exp_ie_block_fence", <immersiveengineering:wooden_decoration:0> * 6, [
    [<immersiveengineering:treated_wood>, <minecraft:stick>, <immersiveengineering:treated_wood>],
    [<immersiveengineering:treated_wood>, <minecraft:stick>, <immersiveengineering:treated_wood>]
]);

// Дверь из обработанной древесины
recipes.addShaped("nexus_exp_ie_block_door", <immersiveengineering:treated_wood_door> * 3, [
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]
]);

// Люк из обработанной древесины
recipes.addShaped("nexus_exp_ie_block_trapdoor", <immersiveengineering:treated_wood_trapdoor> * 2, [
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]
]);

// Ступени из обработанной древесины
recipes.addShaped("nexus_exp_ie_block_stairs", <immersiveengineering:treated_wood_stairs> * 4, [
    [<immersiveengineering:treated_wood>, null, null],
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, null],
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]
]);

// Деревянная бочка для жидкостей
recipes.addShaped("nexus_exp_ie_block_barrel", <immersiveengineering:wooden_device0:1>, [
    [<immersiveengineering:treated_wood>, null, <immersiveengineering:treated_wood>],
    [<immersiveengineering:treated_wood>, null, <immersiveengineering:treated_wood>],
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]
]);

// Усиленный деревянный ящик (Crate)
recipes.addShaped("nexus_exp_ie_block_crate", <immersiveengineering:wooden_device0:0>, [
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:32>, <immersiveengineering:treated_wood>],
    [<thermalfoundation:material:32>, <minecraft:chest>, <thermalfoundation:material:32>],
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:32>, <immersiveengineering:treated_wood>]
]);

// Чертеж качалки Immersive Petroleum
recipes.addShaped("nexus_exp_ie_pumpjack_part", <immersivepetroleum:schematic:0>, [
    [<thermalfoundation:material:352>, <minecraft:paper>, <thermalfoundation:material:352>],
    [<minecraft:paper>, <minecraft:compass>, <minecraft:paper>],
    [<thermalfoundation:material:352>, <minecraft:paper>, <thermalfoundation:material:352>]
]);

// Чертеж ректификационной колонны
recipes.addShaped("nexus_exp_ie_distillation_part", <immersivepetroleum:schematic:1>, [
    [<thermalfoundation:material:352>, <minecraft:paper>, <thermalfoundation:material:352>],
    [<minecraft:paper>, <minecraft:bucket>, <minecraft:paper>],
    [<thermalfoundation:material:352>, <minecraft:paper>, <thermalfoundation:material:352>]
]);
