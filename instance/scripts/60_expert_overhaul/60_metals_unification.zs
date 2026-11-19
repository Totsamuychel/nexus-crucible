// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Unified Metallurgy & Standardized Machine Components
// Generated Recipes: 781
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Ковка пластины: Железо
recipes.addShaped("nexus_exp_comp_plate_iron", <thermalfoundation:material:32>, [
    [<immersiveengineering:tool:0>, null, null],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, null],
    [null, null, null]
]);

// Сборка шестерни: Железо
recipes.remove(<thermalfoundation:material:24>);
recipes.addShaped("nexus_exp_comp_gear_iron", <thermalfoundation:material:24>, [
    [null, <thermalfoundation:material:32>, null],
    [<thermalfoundation:material:32>, <immersiveengineering:material:1>, <thermalfoundation:material:32>],
    [null, <thermalfoundation:material:32>, null]
]);

// Выточка стержня: Железо
recipes.addShaped("nexus_exp_comp_rod_iron", <immersiveengineering:material:1> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<minecraft:iron_ingot>, null],
    [<minecraft:iron_ingot>, null]
]);

// Сжатая бронеплита: Железо
recipes.addShaped("nexus_exp_comp_dense_iron", <thermalfoundation:material:32> * 1, [
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]
]);

// Нарезка проводки: Железо
recipes.addShaped("nexus_exp_comp_wire_iron", <immersiveengineering:material:1> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:32>]
]);

// Разделение слитка на самородки: Железо
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_iron", <minecraft:iron_nugget> * 9, [<minecraft:iron_ingot>]);

// Компактизация самородков в слиток: Железо
recipes.addShaped("nexus_exp_comp_nug_to_ingot_iron", <minecraft:iron_ingot>, [
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>],
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>],
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]
]);

// Блок металла: Железо
recipes.addShaped("nexus_exp_comp_ingot_to_blk_iron", <minecraft:iron_block>, [
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

// Распил блока на слитки: Железо
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_iron", <minecraft:iron_ingot> * 9, [<minecraft:iron_block>]);

// Ручное измельчение слитка в пыль молотом: Железо
recipes.addShaped("nexus_exp_comp_dust_hammer_iron", <thermalfoundation:material:0>, [
    [<immersiveengineering:tool:0>],
    [<minecraft:iron_ingot>]
]);

// Изолированный провод: Железо
recipes.addShaped("nexus_exp_comp_ins_wire_iron", <immersiveengineering:material:1> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:1>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Железо
recipes.addShaped("nexus_exp_comp_rotor_iron", <thermalfoundation:material:32> * 2, [
    [null, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:32>, <immersiveengineering:material:1>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, null]
]);

// Тяжелый конструкционный стержень: Железо
recipes.addShaped("nexus_exp_comp_heavy_rod_iron", <immersiveengineering:material:1> * 3, [
    [<immersiveengineering:material:1>, <thermalfoundation:material:32>, <immersiveengineering:material:1>]
]);

// Металлическое уплотнительное кольцо: Железо
recipes.addShaped("nexus_exp_comp_ring_iron", <minecraft:iron_nugget> * 4, [
    [null, <minecraft:iron_nugget>, null],
    [<minecraft:iron_nugget>, null, <minecraft:iron_nugget>],
    [null, <minecraft:iron_nugget>, null]
]);

// Решетка из прутьев: Железо
recipes.addShaped("nexus_exp_comp_bars_iron", <minecraft:iron_bars> * 16, [
    [<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>],
    [<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>]
]);

// Звенья цепи: Железо
recipes.addShaped("nexus_exp_comp_chain_iron", <minecraft:iron_nugget> * 3, [
    [<minecraft:iron_nugget>],
    [<immersiveengineering:material:1>],
    [<minecraft:iron_nugget>]
]);

// Тонкая фольга: Железо
recipes.addShaped("nexus_exp_comp_foil_iron", <minecraft:iron_nugget> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:1>]
]);

// Малая шестерня: Железо
recipes.addShaped("nexus_exp_comp_small_gear_iron", <thermalfoundation:material:24>, [
    [<thermalfoundation:material:32>, <minecraft:iron_nugget>],
    [<minecraft:iron_nugget>, <thermalfoundation:material:32>]
]);

// Двойной кованый слиток: Железо
recipes.addShaped("nexus_exp_comp_double_ingot_iron", <thermalfoundation:material:32> * 2, [
    [<immersiveengineering:tool:0>],
    [<minecraft:iron_ingot>],
    [<minecraft:iron_ingot>]
]);

// Ручное дробление руды молотом: Железо
recipes.addShaped("nexus_exp_comp_crushed_iron", <thermalfoundation:material:0> * 2, [
    [<immersiveengineering:tool:0>],
    [<minecraft:iron_block>]
]);

// Болт крепежный: Железо
recipes.addShaped("nexus_exp_comp_bolt_iron", <minecraft:iron_nugget> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:1>]
]);

// Винт резьбовой: Железо
recipes.addShaped("nexus_exp_comp_screw_iron", <minecraft:iron_nugget> * 2, [
    [<immersiveengineering:tool:0>],
    [<minecraft:iron_nugget>]
]);

// Тяжелый уплотненный слиток: Железо
recipes.addShaped("nexus_exp_comp_heavy_ingot_iron", <thermalfoundation:material:32>, [
    [<minecraft:iron_nugget>, null, <minecraft:iron_nugget>],
    [null, <minecraft:iron_ingot>, null],
    [<minecraft:iron_nugget>, null, <minecraft:iron_nugget>]
]);

// Армированная пластина на болтах: Железо
recipes.addShaped("nexus_exp_comp_reinf_plate_iron", <thermalfoundation:material:32>, [
    [<minecraft:iron_nugget>, null, <minecraft:iron_nugget>],
    [null, <thermalfoundation:material:32>, null],
    [<minecraft:iron_nugget>, null, <minecraft:iron_nugget>]
]);

// Разборка шестерни на пластины молотом: Железо
recipes.addShaped("nexus_exp_comp_salvage_gear_iron", <thermalfoundation:material:32> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:24>]
]);

// Расковка сжатой бронеплиты молотом: Железо
recipes.addShaped("nexus_exp_comp_salvage_dense_iron", <thermalfoundation:material:32> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:32>]
]);

// Переработка проводки в самородки: Железо
recipes.addShaped("nexus_exp_comp_salvage_wire_iron", <minecraft:iron_nugget> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:1>]
]);

// Перерубка стержня на самородки: Железо
recipes.addShaped("nexus_exp_comp_salvage_rod_iron", <minecraft:iron_nugget> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:1>]
]);

// Ковка пластины: Золото
recipes.addShaped("nexus_exp_comp_plate_gold", <thermalfoundation:material:33>, [
    [<immersiveengineering:tool:0>, null, null],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, null],
    [null, null, null]
]);

// Сборка шестерни: Золото
recipes.remove(<thermalfoundation:material:25>);
recipes.addShaped("nexus_exp_comp_gear_gold", <thermalfoundation:material:25>, [
    [null, <thermalfoundation:material:33>, null],
    [<thermalfoundation:material:33>, <immersiveengineering:material:2>, <thermalfoundation:material:33>],
    [null, <thermalfoundation:material:33>, null]
]);

// Выточка стержня: Золото
recipes.addShaped("nexus_exp_comp_rod_gold", <immersiveengineering:material:2> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<minecraft:gold_ingot>, null],
    [<minecraft:gold_ingot>, null]
]);

// Сжатая бронеплита: Золото
recipes.addShaped("nexus_exp_comp_dense_gold", <thermalfoundation:material:33> * 1, [
    [<thermalfoundation:material:33>, <thermalfoundation:material:33>, <thermalfoundation:material:33>],
    [<thermalfoundation:material:33>, <thermalfoundation:material:33>, <thermalfoundation:material:33>],
    [<thermalfoundation:material:33>, <thermalfoundation:material:33>, <thermalfoundation:material:33>]
]);

// Нарезка проводки: Золото
recipes.addShaped("nexus_exp_comp_wire_gold", <immersiveengineering:material:2> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:33>]
]);

// Разделение слитка на самородки: Золото
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_gold", <minecraft:gold_nugget> * 9, [<minecraft:gold_ingot>]);

// Компактизация самородков в слиток: Золото
recipes.addShaped("nexus_exp_comp_nug_to_ingot_gold", <minecraft:gold_ingot>, [
    [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>],
    [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>],
    [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>]
]);

// Блок металла: Золото
recipes.addShaped("nexus_exp_comp_ingot_to_blk_gold", <minecraft:gold_block>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Распил блока на слитки: Золото
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_gold", <minecraft:gold_ingot> * 9, [<minecraft:gold_block>]);

// Ручное измельчение слитка в пыль молотом: Золото
recipes.addShaped("nexus_exp_comp_dust_hammer_gold", <thermalfoundation:material:1>, [
    [<immersiveengineering:tool:0>],
    [<minecraft:gold_ingot>]
]);

// Изолированный провод: Золото
recipes.addShaped("nexus_exp_comp_ins_wire_gold", <immersiveengineering:material:2> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:2>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Золото
recipes.addShaped("nexus_exp_comp_rotor_gold", <thermalfoundation:material:33> * 2, [
    [null, <thermalfoundation:material:33>, <thermalfoundation:material:33>],
    [<thermalfoundation:material:33>, <immersiveengineering:material:2>, <thermalfoundation:material:33>],
    [<thermalfoundation:material:33>, <thermalfoundation:material:33>, null]
]);

// Тяжелый конструкционный стержень: Золото
recipes.addShaped("nexus_exp_comp_heavy_rod_gold", <immersiveengineering:material:2> * 3, [
    [<immersiveengineering:material:2>, <thermalfoundation:material:33>, <immersiveengineering:material:2>]
]);

// Металлическое уплотнительное кольцо: Золото
recipes.addShaped("nexus_exp_comp_ring_gold", <minecraft:gold_nugget> * 4, [
    [null, <minecraft:gold_nugget>, null],
    [<minecraft:gold_nugget>, null, <minecraft:gold_nugget>],
    [null, <minecraft:gold_nugget>, null]
]);

// Решетка из прутьев: Золото
recipes.addShaped("nexus_exp_comp_bars_gold", <immersiveengineering:material:2> * 8, [
    [<immersiveengineering:material:2>, <immersiveengineering:material:2>, <immersiveengineering:material:2>],
    [<immersiveengineering:material:2>, <immersiveengineering:material:2>, <immersiveengineering:material:2>]
]);

// Звенья цепи: Золото
recipes.addShaped("nexus_exp_comp_chain_gold", <minecraft:gold_nugget> * 3, [
    [<minecraft:gold_nugget>],
    [<immersiveengineering:material:2>],
    [<minecraft:gold_nugget>]
]);

// Тонкая фольга: Золото
recipes.addShaped("nexus_exp_comp_foil_gold", <minecraft:gold_nugget> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:2>]
]);

// Малая шестерня: Золото
recipes.addShaped("nexus_exp_comp_small_gear_gold", <thermalfoundation:material:25>, [
    [<thermalfoundation:material:33>, <minecraft:gold_nugget>],
    [<minecraft:gold_nugget>, <thermalfoundation:material:33>]
]);

// Двойной кованый слиток: Золото
recipes.addShaped("nexus_exp_comp_double_ingot_gold", <thermalfoundation:material:33> * 2, [
    [<immersiveengineering:tool:0>],
    [<minecraft:gold_ingot>],
    [<minecraft:gold_ingot>]
]);

// Ручное дробление руды молотом: Золото
recipes.addShaped("nexus_exp_comp_crushed_gold", <thermalfoundation:material:1> * 2, [
    [<immersiveengineering:tool:0>],
    [<minecraft:gold_block>]
]);

// Болт крепежный: Золото
recipes.addShaped("nexus_exp_comp_bolt_gold", <minecraft:gold_nugget> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:2>]
]);

// Винт резьбовой: Золото
recipes.addShaped("nexus_exp_comp_screw_gold", <minecraft:gold_nugget> * 2, [
    [<immersiveengineering:tool:0>],
    [<minecraft:gold_nugget>]
]);

// Тяжелый уплотненный слиток: Золото
recipes.addShaped("nexus_exp_comp_heavy_ingot_gold", <thermalfoundation:material:33>, [
    [<minecraft:gold_nugget>, null, <minecraft:gold_nugget>],
    [null, <minecraft:gold_ingot>, null],
    [<minecraft:gold_nugget>, null, <minecraft:gold_nugget>]
]);

// Армированная пластина на болтах: Золото
recipes.addShaped("nexus_exp_comp_reinf_plate_gold", <thermalfoundation:material:33>, [
    [<minecraft:gold_nugget>, null, <minecraft:gold_nugget>],
    [null, <thermalfoundation:material:33>, null],
    [<minecraft:gold_nugget>, null, <minecraft:gold_nugget>]
]);

// Разборка шестерни на пластины молотом: Золото
recipes.addShaped("nexus_exp_comp_salvage_gear_gold", <thermalfoundation:material:33> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:25>]
]);

// Расковка сжатой бронеплиты молотом: Золото
recipes.addShaped("nexus_exp_comp_salvage_dense_gold", <thermalfoundation:material:33> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:33>]
]);

// Переработка проводки в самородки: Золото
recipes.addShaped("nexus_exp_comp_salvage_wire_gold", <minecraft:gold_nugget> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:2>]
]);

// Перерубка стержня на самородки: Золото
recipes.addShaped("nexus_exp_comp_salvage_rod_gold", <minecraft:gold_nugget> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:2>]
]);

// Ковка пластины: Медь
recipes.addShaped("nexus_exp_comp_plate_copper", <thermalfoundation:material:320>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:128>, <thermalfoundation:material:128>, null],
    [null, null, null]
]);

// Сборка шестерни: Медь
recipes.remove(<thermalfoundation:material:256>);
recipes.addShaped("nexus_exp_comp_gear_copper", <thermalfoundation:material:256>, [
    [null, <thermalfoundation:material:320>, null],
    [<thermalfoundation:material:320>, <immersiveengineering:material:20>, <thermalfoundation:material:320>],
    [null, <thermalfoundation:material:320>, null]
]);

// Выточка стержня: Медь
recipes.addShaped("nexus_exp_comp_rod_copper", <immersiveengineering:material:20> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:128>, null],
    [<thermalfoundation:material:128>, null]
]);

// Сжатая бронеплита: Медь
recipes.addShaped("nexus_exp_comp_dense_copper", <thermalfoundation:material:320> * 1, [
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:320>]
]);

// Нарезка проводки: Медь
recipes.addShaped("nexus_exp_comp_wire_copper", <immersiveengineering:material:20> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:320>]
]);

// Разделение слитка на самородки: Медь
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_copper", <thermalfoundation:material:192> * 9, [<thermalfoundation:material:128>]);

// Компактизация самородков в слиток: Медь
recipes.addShaped("nexus_exp_comp_nug_to_ingot_copper", <thermalfoundation:material:128>, [
    [<thermalfoundation:material:192>, <thermalfoundation:material:192>, <thermalfoundation:material:192>],
    [<thermalfoundation:material:192>, <thermalfoundation:material:192>, <thermalfoundation:material:192>],
    [<thermalfoundation:material:192>, <thermalfoundation:material:192>, <thermalfoundation:material:192>]
]);

// Блок металла: Медь
recipes.addShaped("nexus_exp_comp_ingot_to_blk_copper", <thermalfoundation:storage:0>, [
    [<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>],
    [<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>],
    [<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>]
]);

// Распил блока на слитки: Медь
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_copper", <thermalfoundation:material:128> * 9, [<thermalfoundation:storage:0>]);

// Ручное измельчение слитка в пыль молотом: Медь
recipes.addShaped("nexus_exp_comp_dust_hammer_copper", <thermalfoundation:material:64>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:128>]
]);

// Изолированный провод: Медь
recipes.addShaped("nexus_exp_comp_ins_wire_copper", <immersiveengineering:material:20> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:20>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Медь
recipes.addShaped("nexus_exp_comp_rotor_copper", <thermalfoundation:material:320> * 2, [
    [null, <thermalfoundation:material:320>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:320>, <immersiveengineering:material:20>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, null]
]);

// Тяжелый конструкционный стержень: Медь
recipes.addShaped("nexus_exp_comp_heavy_rod_copper", <immersiveengineering:material:20> * 3, [
    [<immersiveengineering:material:20>, <thermalfoundation:material:320>, <immersiveengineering:material:20>]
]);

// Металлическое уплотнительное кольцо: Медь
recipes.addShaped("nexus_exp_comp_ring_copper", <thermalfoundation:material:192> * 4, [
    [null, <thermalfoundation:material:192>, null],
    [<thermalfoundation:material:192>, null, <thermalfoundation:material:192>],
    [null, <thermalfoundation:material:192>, null]
]);

// Решетка из прутьев: Медь
recipes.addShaped("nexus_exp_comp_bars_copper", <immersiveengineering:material:20> * 8, [
    [<immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>],
    [<immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>]
]);

// Звенья цепи: Медь
recipes.addShaped("nexus_exp_comp_chain_copper", <thermalfoundation:material:192> * 3, [
    [<thermalfoundation:material:192>],
    [<immersiveengineering:material:20>],
    [<thermalfoundation:material:192>]
]);

// Тонкая фольга: Медь
recipes.addShaped("nexus_exp_comp_foil_copper", <thermalfoundation:material:192> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:20>]
]);

// Малая шестерня: Медь
recipes.addShaped("nexus_exp_comp_small_gear_copper", <thermalfoundation:material:256>, [
    [<thermalfoundation:material:320>, <thermalfoundation:material:192>],
    [<thermalfoundation:material:192>, <thermalfoundation:material:320>]
]);

// Двойной кованый слиток: Медь
recipes.addShaped("nexus_exp_comp_double_ingot_copper", <thermalfoundation:material:320> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:128>],
    [<thermalfoundation:material:128>]
]);

// Ручное дробление руды молотом: Медь
recipes.addShaped("nexus_exp_comp_crushed_copper", <thermalfoundation:material:64> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage:0>]
]);

// Болт крепежный: Медь
recipes.addShaped("nexus_exp_comp_bolt_copper", <thermalfoundation:material:192> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:20>]
]);

// Винт резьбовой: Медь
recipes.addShaped("nexus_exp_comp_screw_copper", <thermalfoundation:material:192> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:192>]
]);

// Тяжелый уплотненный слиток: Медь
recipes.addShaped("nexus_exp_comp_heavy_ingot_copper", <thermalfoundation:material:320>, [
    [<thermalfoundation:material:192>, null, <thermalfoundation:material:192>],
    [null, <thermalfoundation:material:128>, null],
    [<thermalfoundation:material:192>, null, <thermalfoundation:material:192>]
]);

// Армированная пластина на болтах: Медь
recipes.addShaped("nexus_exp_comp_reinf_plate_copper", <thermalfoundation:material:320>, [
    [<thermalfoundation:material:192>, null, <thermalfoundation:material:192>],
    [null, <thermalfoundation:material:320>, null],
    [<thermalfoundation:material:192>, null, <thermalfoundation:material:192>]
]);

// Разборка шестерни на пластины молотом: Медь
recipes.addShaped("nexus_exp_comp_salvage_gear_copper", <thermalfoundation:material:320> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:256>]
]);

// Расковка сжатой бронеплиты молотом: Медь
recipes.addShaped("nexus_exp_comp_salvage_dense_copper", <thermalfoundation:material:320> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:320>]
]);

// Переработка проводки в самородки: Медь
recipes.addShaped("nexus_exp_comp_salvage_wire_copper", <thermalfoundation:material:192> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:20>]
]);

// Перерубка стержня на самородки: Медь
recipes.addShaped("nexus_exp_comp_salvage_rod_copper", <thermalfoundation:material:192> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:20>]
]);

// Ковка пластины: Олово
recipes.addShaped("nexus_exp_comp_plate_tin", <thermalfoundation:material:321>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:129>, <thermalfoundation:material:129>, null],
    [null, null, null]
]);

// Сборка шестерни: Олово
recipes.remove(<thermalfoundation:material:257>);
recipes.addShaped("nexus_exp_comp_gear_tin", <thermalfoundation:material:257>, [
    [null, <thermalfoundation:material:321>, null],
    [<thermalfoundation:material:321>, <immersiveengineering:material:21>, <thermalfoundation:material:321>],
    [null, <thermalfoundation:material:321>, null]
]);

// Выточка стержня: Олово
recipes.addShaped("nexus_exp_comp_rod_tin", <immersiveengineering:material:21> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:129>, null],
    [<thermalfoundation:material:129>, null]
]);

// Сжатая бронеплита: Олово
recipes.addShaped("nexus_exp_comp_dense_tin", <thermalfoundation:material:321> * 1, [
    [<thermalfoundation:material:321>, <thermalfoundation:material:321>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:321>, <thermalfoundation:material:321>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:321>, <thermalfoundation:material:321>, <thermalfoundation:material:321>]
]);

// Нарезка проводки: Олово
recipes.addShaped("nexus_exp_comp_wire_tin", <immersiveengineering:material:21> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:321>]
]);

// Разделение слитка на самородки: Олово
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_tin", <thermalfoundation:material:193> * 9, [<thermalfoundation:material:129>]);

// Компактизация самородков в слиток: Олово
recipes.addShaped("nexus_exp_comp_nug_to_ingot_tin", <thermalfoundation:material:129>, [
    [<thermalfoundation:material:193>, <thermalfoundation:material:193>, <thermalfoundation:material:193>],
    [<thermalfoundation:material:193>, <thermalfoundation:material:193>, <thermalfoundation:material:193>],
    [<thermalfoundation:material:193>, <thermalfoundation:material:193>, <thermalfoundation:material:193>]
]);

// Блок металла: Олово
recipes.addShaped("nexus_exp_comp_ingot_to_blk_tin", <thermalfoundation:storage:1>, [
    [<thermalfoundation:material:129>, <thermalfoundation:material:129>, <thermalfoundation:material:129>],
    [<thermalfoundation:material:129>, <thermalfoundation:material:129>, <thermalfoundation:material:129>],
    [<thermalfoundation:material:129>, <thermalfoundation:material:129>, <thermalfoundation:material:129>]
]);

// Распил блока на слитки: Олово
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_tin", <thermalfoundation:material:129> * 9, [<thermalfoundation:storage:1>]);

// Ручное измельчение слитка в пыль молотом: Олово
recipes.addShaped("nexus_exp_comp_dust_hammer_tin", <thermalfoundation:material:65>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:129>]
]);

// Изолированный провод: Олово
recipes.addShaped("nexus_exp_comp_ins_wire_tin", <immersiveengineering:material:21> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:21>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Олово
recipes.addShaped("nexus_exp_comp_rotor_tin", <thermalfoundation:material:321> * 2, [
    [null, <thermalfoundation:material:321>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:321>, <immersiveengineering:material:21>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:321>, <thermalfoundation:material:321>, null]
]);

// Тяжелый конструкционный стержень: Олово
recipes.addShaped("nexus_exp_comp_heavy_rod_tin", <immersiveengineering:material:21> * 3, [
    [<immersiveengineering:material:21>, <thermalfoundation:material:321>, <immersiveengineering:material:21>]
]);

// Металлическое уплотнительное кольцо: Олово
recipes.addShaped("nexus_exp_comp_ring_tin", <thermalfoundation:material:193> * 4, [
    [null, <thermalfoundation:material:193>, null],
    [<thermalfoundation:material:193>, null, <thermalfoundation:material:193>],
    [null, <thermalfoundation:material:193>, null]
]);

// Решетка из прутьев: Олово
recipes.addShaped("nexus_exp_comp_bars_tin", <immersiveengineering:material:21> * 8, [
    [<immersiveengineering:material:21>, <immersiveengineering:material:21>, <immersiveengineering:material:21>],
    [<immersiveengineering:material:21>, <immersiveengineering:material:21>, <immersiveengineering:material:21>]
]);

// Звенья цепи: Олово
recipes.addShaped("nexus_exp_comp_chain_tin", <thermalfoundation:material:193> * 3, [
    [<thermalfoundation:material:193>],
    [<immersiveengineering:material:21>],
    [<thermalfoundation:material:193>]
]);

// Тонкая фольга: Олово
recipes.addShaped("nexus_exp_comp_foil_tin", <thermalfoundation:material:193> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:21>]
]);

// Малая шестерня: Олово
recipes.addShaped("nexus_exp_comp_small_gear_tin", <thermalfoundation:material:257>, [
    [<thermalfoundation:material:321>, <thermalfoundation:material:193>],
    [<thermalfoundation:material:193>, <thermalfoundation:material:321>]
]);

// Двойной кованый слиток: Олово
recipes.addShaped("nexus_exp_comp_double_ingot_tin", <thermalfoundation:material:321> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:129>],
    [<thermalfoundation:material:129>]
]);

// Ручное дробление руды молотом: Олово
recipes.addShaped("nexus_exp_comp_crushed_tin", <thermalfoundation:material:65> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage:1>]
]);

// Болт крепежный: Олово
recipes.addShaped("nexus_exp_comp_bolt_tin", <thermalfoundation:material:193> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:21>]
]);

// Винт резьбовой: Олово
recipes.addShaped("nexus_exp_comp_screw_tin", <thermalfoundation:material:193> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:193>]
]);

// Тяжелый уплотненный слиток: Олово
recipes.addShaped("nexus_exp_comp_heavy_ingot_tin", <thermalfoundation:material:321>, [
    [<thermalfoundation:material:193>, null, <thermalfoundation:material:193>],
    [null, <thermalfoundation:material:129>, null],
    [<thermalfoundation:material:193>, null, <thermalfoundation:material:193>]
]);

// Армированная пластина на болтах: Олово
recipes.addShaped("nexus_exp_comp_reinf_plate_tin", <thermalfoundation:material:321>, [
    [<thermalfoundation:material:193>, null, <thermalfoundation:material:193>],
    [null, <thermalfoundation:material:321>, null],
    [<thermalfoundation:material:193>, null, <thermalfoundation:material:193>]
]);

// Разборка шестерни на пластины молотом: Олово
recipes.addShaped("nexus_exp_comp_salvage_gear_tin", <thermalfoundation:material:321> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:257>]
]);

// Расковка сжатой бронеплиты молотом: Олово
recipes.addShaped("nexus_exp_comp_salvage_dense_tin", <thermalfoundation:material:321> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:321>]
]);

// Переработка проводки в самородки: Олово
recipes.addShaped("nexus_exp_comp_salvage_wire_tin", <thermalfoundation:material:193> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:21>]
]);

// Перерубка стержня на самородки: Олово
recipes.addShaped("nexus_exp_comp_salvage_rod_tin", <thermalfoundation:material:193> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:21>]
]);

// Ковка пластины: Серебро
recipes.addShaped("nexus_exp_comp_plate_silver", <thermalfoundation:material:322>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:130>, <thermalfoundation:material:130>, null],
    [null, null, null]
]);

// Сборка шестерни: Серебро
recipes.remove(<thermalfoundation:material:258>);
recipes.addShaped("nexus_exp_comp_gear_silver", <thermalfoundation:material:258>, [
    [null, <thermalfoundation:material:322>, null],
    [<thermalfoundation:material:322>, <immersiveengineering:material:22>, <thermalfoundation:material:322>],
    [null, <thermalfoundation:material:322>, null]
]);

// Выточка стержня: Серебро
recipes.addShaped("nexus_exp_comp_rod_silver", <immersiveengineering:material:22> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:130>, null],
    [<thermalfoundation:material:130>, null]
]);

// Сжатая бронеплита: Серебро
recipes.addShaped("nexus_exp_comp_dense_silver", <thermalfoundation:material:322> * 1, [
    [<thermalfoundation:material:322>, <thermalfoundation:material:322>, <thermalfoundation:material:322>],
    [<thermalfoundation:material:322>, <thermalfoundation:material:322>, <thermalfoundation:material:322>],
    [<thermalfoundation:material:322>, <thermalfoundation:material:322>, <thermalfoundation:material:322>]
]);

// Нарезка проводки: Серебро
recipes.addShaped("nexus_exp_comp_wire_silver", <immersiveengineering:material:22> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:322>]
]);

// Разделение слитка на самородки: Серебро
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_silver", <thermalfoundation:material:194> * 9, [<thermalfoundation:material:130>]);

// Компактизация самородков в слиток: Серебро
recipes.addShaped("nexus_exp_comp_nug_to_ingot_silver", <thermalfoundation:material:130>, [
    [<thermalfoundation:material:194>, <thermalfoundation:material:194>, <thermalfoundation:material:194>],
    [<thermalfoundation:material:194>, <thermalfoundation:material:194>, <thermalfoundation:material:194>],
    [<thermalfoundation:material:194>, <thermalfoundation:material:194>, <thermalfoundation:material:194>]
]);

// Блок металла: Серебро
recipes.addShaped("nexus_exp_comp_ingot_to_blk_silver", <thermalfoundation:storage:2>, [
    [<thermalfoundation:material:130>, <thermalfoundation:material:130>, <thermalfoundation:material:130>],
    [<thermalfoundation:material:130>, <thermalfoundation:material:130>, <thermalfoundation:material:130>],
    [<thermalfoundation:material:130>, <thermalfoundation:material:130>, <thermalfoundation:material:130>]
]);

// Распил блока на слитки: Серебро
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_silver", <thermalfoundation:material:130> * 9, [<thermalfoundation:storage:2>]);

// Ручное измельчение слитка в пыль молотом: Серебро
recipes.addShaped("nexus_exp_comp_dust_hammer_silver", <thermalfoundation:material:66>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:130>]
]);

// Изолированный провод: Серебро
recipes.addShaped("nexus_exp_comp_ins_wire_silver", <immersiveengineering:material:22> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:22>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Серебро
recipes.addShaped("nexus_exp_comp_rotor_silver", <thermalfoundation:material:322> * 2, [
    [null, <thermalfoundation:material:322>, <thermalfoundation:material:322>],
    [<thermalfoundation:material:322>, <immersiveengineering:material:22>, <thermalfoundation:material:322>],
    [<thermalfoundation:material:322>, <thermalfoundation:material:322>, null]
]);

// Тяжелый конструкционный стержень: Серебро
recipes.addShaped("nexus_exp_comp_heavy_rod_silver", <immersiveengineering:material:22> * 3, [
    [<immersiveengineering:material:22>, <thermalfoundation:material:322>, <immersiveengineering:material:22>]
]);

// Металлическое уплотнительное кольцо: Серебро
recipes.addShaped("nexus_exp_comp_ring_silver", <thermalfoundation:material:194> * 4, [
    [null, <thermalfoundation:material:194>, null],
    [<thermalfoundation:material:194>, null, <thermalfoundation:material:194>],
    [null, <thermalfoundation:material:194>, null]
]);

// Решетка из прутьев: Серебро
recipes.addShaped("nexus_exp_comp_bars_silver", <immersiveengineering:material:22> * 8, [
    [<immersiveengineering:material:22>, <immersiveengineering:material:22>, <immersiveengineering:material:22>],
    [<immersiveengineering:material:22>, <immersiveengineering:material:22>, <immersiveengineering:material:22>]
]);

// Звенья цепи: Серебро
recipes.addShaped("nexus_exp_comp_chain_silver", <thermalfoundation:material:194> * 3, [
    [<thermalfoundation:material:194>],
    [<immersiveengineering:material:22>],
    [<thermalfoundation:material:194>]
]);

// Тонкая фольга: Серебро
recipes.addShaped("nexus_exp_comp_foil_silver", <thermalfoundation:material:194> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:22>]
]);

// Малая шестерня: Серебро
recipes.addShaped("nexus_exp_comp_small_gear_silver", <thermalfoundation:material:258>, [
    [<thermalfoundation:material:322>, <thermalfoundation:material:194>],
    [<thermalfoundation:material:194>, <thermalfoundation:material:322>]
]);

// Двойной кованый слиток: Серебро
recipes.addShaped("nexus_exp_comp_double_ingot_silver", <thermalfoundation:material:322> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:130>],
    [<thermalfoundation:material:130>]
]);

// Ручное дробление руды молотом: Серебро
recipes.addShaped("nexus_exp_comp_crushed_silver", <thermalfoundation:material:66> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage:2>]
]);

// Болт крепежный: Серебро
recipes.addShaped("nexus_exp_comp_bolt_silver", <thermalfoundation:material:194> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:22>]
]);

// Винт резьбовой: Серебро
recipes.addShaped("nexus_exp_comp_screw_silver", <thermalfoundation:material:194> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:194>]
]);

// Тяжелый уплотненный слиток: Серебро
recipes.addShaped("nexus_exp_comp_heavy_ingot_silver", <thermalfoundation:material:322>, [
    [<thermalfoundation:material:194>, null, <thermalfoundation:material:194>],
    [null, <thermalfoundation:material:130>, null],
    [<thermalfoundation:material:194>, null, <thermalfoundation:material:194>]
]);

// Армированная пластина на болтах: Серебро
recipes.addShaped("nexus_exp_comp_reinf_plate_silver", <thermalfoundation:material:322>, [
    [<thermalfoundation:material:194>, null, <thermalfoundation:material:194>],
    [null, <thermalfoundation:material:322>, null],
    [<thermalfoundation:material:194>, null, <thermalfoundation:material:194>]
]);

// Разборка шестерни на пластины молотом: Серебро
recipes.addShaped("nexus_exp_comp_salvage_gear_silver", <thermalfoundation:material:322> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:258>]
]);

// Расковка сжатой бронеплиты молотом: Серебро
recipes.addShaped("nexus_exp_comp_salvage_dense_silver", <thermalfoundation:material:322> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:322>]
]);

// Переработка проводки в самородки: Серебро
recipes.addShaped("nexus_exp_comp_salvage_wire_silver", <thermalfoundation:material:194> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:22>]
]);

// Перерубка стержня на самородки: Серебро
recipes.addShaped("nexus_exp_comp_salvage_rod_silver", <thermalfoundation:material:194> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:22>]
]);

// Ковка пластины: Свинец
recipes.addShaped("nexus_exp_comp_plate_lead", <thermalfoundation:material:323>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:131>, <thermalfoundation:material:131>, null],
    [null, null, null]
]);

// Сборка шестерни: Свинец
recipes.remove(<thermalfoundation:material:259>);
recipes.addShaped("nexus_exp_comp_gear_lead", <thermalfoundation:material:259>, [
    [null, <thermalfoundation:material:323>, null],
    [<thermalfoundation:material:323>, <immersiveengineering:material:23>, <thermalfoundation:material:323>],
    [null, <thermalfoundation:material:323>, null]
]);

// Выточка стержня: Свинец
recipes.addShaped("nexus_exp_comp_rod_lead", <immersiveengineering:material:23> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:131>, null],
    [<thermalfoundation:material:131>, null]
]);

// Сжатая бронеплита: Свинец
recipes.addShaped("nexus_exp_comp_dense_lead", <thermalfoundation:material:323> * 1, [
    [<thermalfoundation:material:323>, <thermalfoundation:material:323>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:323>, <thermalfoundation:material:323>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:323>, <thermalfoundation:material:323>, <thermalfoundation:material:323>]
]);

// Нарезка проводки: Свинец
recipes.addShaped("nexus_exp_comp_wire_lead", <immersiveengineering:material:23> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:323>]
]);

// Разделение слитка на самородки: Свинец
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_lead", <thermalfoundation:material:195> * 9, [<thermalfoundation:material:131>]);

// Компактизация самородков в слиток: Свинец
recipes.addShaped("nexus_exp_comp_nug_to_ingot_lead", <thermalfoundation:material:131>, [
    [<thermalfoundation:material:195>, <thermalfoundation:material:195>, <thermalfoundation:material:195>],
    [<thermalfoundation:material:195>, <thermalfoundation:material:195>, <thermalfoundation:material:195>],
    [<thermalfoundation:material:195>, <thermalfoundation:material:195>, <thermalfoundation:material:195>]
]);

// Блок металла: Свинец
recipes.addShaped("nexus_exp_comp_ingot_to_blk_lead", <thermalfoundation:storage:3>, [
    [<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>],
    [<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>],
    [<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>]
]);

// Распил блока на слитки: Свинец
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_lead", <thermalfoundation:material:131> * 9, [<thermalfoundation:storage:3>]);

// Ручное измельчение слитка в пыль молотом: Свинец
recipes.addShaped("nexus_exp_comp_dust_hammer_lead", <thermalfoundation:material:67>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:131>]
]);

// Изолированный провод: Свинец
recipes.addShaped("nexus_exp_comp_ins_wire_lead", <immersiveengineering:material:23> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:23>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Свинец
recipes.addShaped("nexus_exp_comp_rotor_lead", <thermalfoundation:material:323> * 2, [
    [null, <thermalfoundation:material:323>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:323>, <immersiveengineering:material:23>, <thermalfoundation:material:323>],
    [<thermalfoundation:material:323>, <thermalfoundation:material:323>, null]
]);

// Тяжелый конструкционный стержень: Свинец
recipes.addShaped("nexus_exp_comp_heavy_rod_lead", <immersiveengineering:material:23> * 3, [
    [<immersiveengineering:material:23>, <thermalfoundation:material:323>, <immersiveengineering:material:23>]
]);

// Металлическое уплотнительное кольцо: Свинец
recipes.addShaped("nexus_exp_comp_ring_lead", <thermalfoundation:material:195> * 4, [
    [null, <thermalfoundation:material:195>, null],
    [<thermalfoundation:material:195>, null, <thermalfoundation:material:195>],
    [null, <thermalfoundation:material:195>, null]
]);

// Решетка из прутьев: Свинец
recipes.addShaped("nexus_exp_comp_bars_lead", <immersiveengineering:material:23> * 8, [
    [<immersiveengineering:material:23>, <immersiveengineering:material:23>, <immersiveengineering:material:23>],
    [<immersiveengineering:material:23>, <immersiveengineering:material:23>, <immersiveengineering:material:23>]
]);

// Звенья цепи: Свинец
recipes.addShaped("nexus_exp_comp_chain_lead", <thermalfoundation:material:195> * 3, [
    [<thermalfoundation:material:195>],
    [<immersiveengineering:material:23>],
    [<thermalfoundation:material:195>]
]);

// Тонкая фольга: Свинец
recipes.addShaped("nexus_exp_comp_foil_lead", <thermalfoundation:material:195> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:23>]
]);

// Малая шестерня: Свинец
recipes.addShaped("nexus_exp_comp_small_gear_lead", <thermalfoundation:material:259>, [
    [<thermalfoundation:material:323>, <thermalfoundation:material:195>],
    [<thermalfoundation:material:195>, <thermalfoundation:material:323>]
]);

// Двойной кованый слиток: Свинец
recipes.addShaped("nexus_exp_comp_double_ingot_lead", <thermalfoundation:material:323> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:131>],
    [<thermalfoundation:material:131>]
]);

// Ручное дробление руды молотом: Свинец
recipes.addShaped("nexus_exp_comp_crushed_lead", <thermalfoundation:material:67> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage:3>]
]);

// Болт крепежный: Свинец
recipes.addShaped("nexus_exp_comp_bolt_lead", <thermalfoundation:material:195> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:23>]
]);

// Винт резьбовой: Свинец
recipes.addShaped("nexus_exp_comp_screw_lead", <thermalfoundation:material:195> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:195>]
]);

// Тяжелый уплотненный слиток: Свинец
recipes.addShaped("nexus_exp_comp_heavy_ingot_lead", <thermalfoundation:material:323>, [
    [<thermalfoundation:material:195>, null, <thermalfoundation:material:195>],
    [null, <thermalfoundation:material:131>, null],
    [<thermalfoundation:material:195>, null, <thermalfoundation:material:195>]
]);

// Армированная пластина на болтах: Свинец
recipes.addShaped("nexus_exp_comp_reinf_plate_lead", <thermalfoundation:material:323>, [
    [<thermalfoundation:material:195>, null, <thermalfoundation:material:195>],
    [null, <thermalfoundation:material:323>, null],
    [<thermalfoundation:material:195>, null, <thermalfoundation:material:195>]
]);

// Разборка шестерни на пластины молотом: Свинец
recipes.addShaped("nexus_exp_comp_salvage_gear_lead", <thermalfoundation:material:323> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:259>]
]);

// Расковка сжатой бронеплиты молотом: Свинец
recipes.addShaped("nexus_exp_comp_salvage_dense_lead", <thermalfoundation:material:323> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:323>]
]);

// Переработка проводки в самородки: Свинец
recipes.addShaped("nexus_exp_comp_salvage_wire_lead", <thermalfoundation:material:195> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:23>]
]);

// Перерубка стержня на самородки: Свинец
recipes.addShaped("nexus_exp_comp_salvage_rod_lead", <thermalfoundation:material:195> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:23>]
]);

// Ковка пластины: Алюминий
recipes.addShaped("nexus_exp_comp_plate_aluminum", <thermalfoundation:material:324>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:132>, <thermalfoundation:material:132>, null],
    [null, null, null]
]);

// Сборка шестерни: Алюминий
recipes.remove(<thermalfoundation:material:260>);
recipes.addShaped("nexus_exp_comp_gear_aluminum", <thermalfoundation:material:260>, [
    [null, <thermalfoundation:material:324>, null],
    [<thermalfoundation:material:324>, <immersiveengineering:material:24>, <thermalfoundation:material:324>],
    [null, <thermalfoundation:material:324>, null]
]);

// Выточка стержня: Алюминий
recipes.addShaped("nexus_exp_comp_rod_aluminum", <immersiveengineering:material:24> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:132>, null],
    [<thermalfoundation:material:132>, null]
]);

// Сжатая бронеплита: Алюминий
recipes.addShaped("nexus_exp_comp_dense_aluminum", <thermalfoundation:material:324> * 1, [
    [<thermalfoundation:material:324>, <thermalfoundation:material:324>, <thermalfoundation:material:324>],
    [<thermalfoundation:material:324>, <thermalfoundation:material:324>, <thermalfoundation:material:324>],
    [<thermalfoundation:material:324>, <thermalfoundation:material:324>, <thermalfoundation:material:324>]
]);

// Нарезка проводки: Алюминий
recipes.addShaped("nexus_exp_comp_wire_aluminum", <immersiveengineering:material:24> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:324>]
]);

// Разделение слитка на самородки: Алюминий
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_aluminum", <thermalfoundation:material:196> * 9, [<thermalfoundation:material:132>]);

// Компактизация самородков в слиток: Алюминий
recipes.addShaped("nexus_exp_comp_nug_to_ingot_aluminum", <thermalfoundation:material:132>, [
    [<thermalfoundation:material:196>, <thermalfoundation:material:196>, <thermalfoundation:material:196>],
    [<thermalfoundation:material:196>, <thermalfoundation:material:196>, <thermalfoundation:material:196>],
    [<thermalfoundation:material:196>, <thermalfoundation:material:196>, <thermalfoundation:material:196>]
]);

// Блок металла: Алюминий
recipes.addShaped("nexus_exp_comp_ingot_to_blk_aluminum", <thermalfoundation:storage:4>, [
    [<thermalfoundation:material:132>, <thermalfoundation:material:132>, <thermalfoundation:material:132>],
    [<thermalfoundation:material:132>, <thermalfoundation:material:132>, <thermalfoundation:material:132>],
    [<thermalfoundation:material:132>, <thermalfoundation:material:132>, <thermalfoundation:material:132>]
]);

// Распил блока на слитки: Алюминий
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_aluminum", <thermalfoundation:material:132> * 9, [<thermalfoundation:storage:4>]);

// Ручное измельчение слитка в пыль молотом: Алюминий
recipes.addShaped("nexus_exp_comp_dust_hammer_aluminum", <thermalfoundation:material:68>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:132>]
]);

// Изолированный провод: Алюминий
recipes.addShaped("nexus_exp_comp_ins_wire_aluminum", <immersiveengineering:material:24> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:24>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Алюминий
recipes.addShaped("nexus_exp_comp_rotor_aluminum", <thermalfoundation:material:324> * 2, [
    [null, <thermalfoundation:material:324>, <thermalfoundation:material:324>],
    [<thermalfoundation:material:324>, <immersiveengineering:material:24>, <thermalfoundation:material:324>],
    [<thermalfoundation:material:324>, <thermalfoundation:material:324>, null]
]);

// Тяжелый конструкционный стержень: Алюминий
recipes.addShaped("nexus_exp_comp_heavy_rod_aluminum", <immersiveengineering:material:24> * 3, [
    [<immersiveengineering:material:24>, <thermalfoundation:material:324>, <immersiveengineering:material:24>]
]);

// Металлическое уплотнительное кольцо: Алюминий
recipes.addShaped("nexus_exp_comp_ring_aluminum", <thermalfoundation:material:196> * 4, [
    [null, <thermalfoundation:material:196>, null],
    [<thermalfoundation:material:196>, null, <thermalfoundation:material:196>],
    [null, <thermalfoundation:material:196>, null]
]);

// Решетка из прутьев: Алюминий
recipes.addShaped("nexus_exp_comp_bars_aluminum", <immersiveengineering:material:24> * 8, [
    [<immersiveengineering:material:24>, <immersiveengineering:material:24>, <immersiveengineering:material:24>],
    [<immersiveengineering:material:24>, <immersiveengineering:material:24>, <immersiveengineering:material:24>]
]);

// Звенья цепи: Алюминий
recipes.addShaped("nexus_exp_comp_chain_aluminum", <thermalfoundation:material:196> * 3, [
    [<thermalfoundation:material:196>],
    [<immersiveengineering:material:24>],
    [<thermalfoundation:material:196>]
]);

// Тонкая фольга: Алюминий
recipes.addShaped("nexus_exp_comp_foil_aluminum", <thermalfoundation:material:196> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:24>]
]);

// Малая шестерня: Алюминий
recipes.addShaped("nexus_exp_comp_small_gear_aluminum", <thermalfoundation:material:260>, [
    [<thermalfoundation:material:324>, <thermalfoundation:material:196>],
    [<thermalfoundation:material:196>, <thermalfoundation:material:324>]
]);

// Двойной кованый слиток: Алюминий
recipes.addShaped("nexus_exp_comp_double_ingot_aluminum", <thermalfoundation:material:324> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:132>],
    [<thermalfoundation:material:132>]
]);

// Ручное дробление руды молотом: Алюминий
recipes.addShaped("nexus_exp_comp_crushed_aluminum", <thermalfoundation:material:68> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage:4>]
]);

// Болт крепежный: Алюминий
recipes.addShaped("nexus_exp_comp_bolt_aluminum", <thermalfoundation:material:196> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:24>]
]);

// Винт резьбовой: Алюминий
recipes.addShaped("nexus_exp_comp_screw_aluminum", <thermalfoundation:material:196> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:196>]
]);

// Тяжелый уплотненный слиток: Алюминий
recipes.addShaped("nexus_exp_comp_heavy_ingot_aluminum", <thermalfoundation:material:324>, [
    [<thermalfoundation:material:196>, null, <thermalfoundation:material:196>],
    [null, <thermalfoundation:material:132>, null],
    [<thermalfoundation:material:196>, null, <thermalfoundation:material:196>]
]);

// Армированная пластина на болтах: Алюминий
recipes.addShaped("nexus_exp_comp_reinf_plate_aluminum", <thermalfoundation:material:324>, [
    [<thermalfoundation:material:196>, null, <thermalfoundation:material:196>],
    [null, <thermalfoundation:material:324>, null],
    [<thermalfoundation:material:196>, null, <thermalfoundation:material:196>]
]);

// Разборка шестерни на пластины молотом: Алюминий
recipes.addShaped("nexus_exp_comp_salvage_gear_aluminum", <thermalfoundation:material:324> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:260>]
]);

// Расковка сжатой бронеплиты молотом: Алюминий
recipes.addShaped("nexus_exp_comp_salvage_dense_aluminum", <thermalfoundation:material:324> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:324>]
]);

// Переработка проводки в самородки: Алюминий
recipes.addShaped("nexus_exp_comp_salvage_wire_aluminum", <thermalfoundation:material:196> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:24>]
]);

// Перерубка стержня на самородки: Алюминий
recipes.addShaped("nexus_exp_comp_salvage_rod_aluminum", <thermalfoundation:material:196> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:24>]
]);

// Ковка пластины: Никель
recipes.addShaped("nexus_exp_comp_plate_nickel", <thermalfoundation:material:325>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:133>, <thermalfoundation:material:133>, null],
    [null, null, null]
]);

// Сборка шестерни: Никель
recipes.remove(<thermalfoundation:material:261>);
recipes.addShaped("nexus_exp_comp_gear_nickel", <thermalfoundation:material:261>, [
    [null, <thermalfoundation:material:325>, null],
    [<thermalfoundation:material:325>, <immersiveengineering:material:25>, <thermalfoundation:material:325>],
    [null, <thermalfoundation:material:325>, null]
]);

// Выточка стержня: Никель
recipes.addShaped("nexus_exp_comp_rod_nickel", <immersiveengineering:material:25> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:133>, null],
    [<thermalfoundation:material:133>, null]
]);

// Сжатая бронеплита: Никель
recipes.addShaped("nexus_exp_comp_dense_nickel", <thermalfoundation:material:325> * 1, [
    [<thermalfoundation:material:325>, <thermalfoundation:material:325>, <thermalfoundation:material:325>],
    [<thermalfoundation:material:325>, <thermalfoundation:material:325>, <thermalfoundation:material:325>],
    [<thermalfoundation:material:325>, <thermalfoundation:material:325>, <thermalfoundation:material:325>]
]);

// Нарезка проводки: Никель
recipes.addShaped("nexus_exp_comp_wire_nickel", <immersiveengineering:material:25> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:325>]
]);

// Разделение слитка на самородки: Никель
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_nickel", <thermalfoundation:material:197> * 9, [<thermalfoundation:material:133>]);

// Компактизация самородков в слиток: Никель
recipes.addShaped("nexus_exp_comp_nug_to_ingot_nickel", <thermalfoundation:material:133>, [
    [<thermalfoundation:material:197>, <thermalfoundation:material:197>, <thermalfoundation:material:197>],
    [<thermalfoundation:material:197>, <thermalfoundation:material:197>, <thermalfoundation:material:197>],
    [<thermalfoundation:material:197>, <thermalfoundation:material:197>, <thermalfoundation:material:197>]
]);

// Блок металла: Никель
recipes.addShaped("nexus_exp_comp_ingot_to_blk_nickel", <thermalfoundation:storage:5>, [
    [<thermalfoundation:material:133>, <thermalfoundation:material:133>, <thermalfoundation:material:133>],
    [<thermalfoundation:material:133>, <thermalfoundation:material:133>, <thermalfoundation:material:133>],
    [<thermalfoundation:material:133>, <thermalfoundation:material:133>, <thermalfoundation:material:133>]
]);

// Распил блока на слитки: Никель
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_nickel", <thermalfoundation:material:133> * 9, [<thermalfoundation:storage:5>]);

// Ручное измельчение слитка в пыль молотом: Никель
recipes.addShaped("nexus_exp_comp_dust_hammer_nickel", <thermalfoundation:material:69>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:133>]
]);

// Изолированный провод: Никель
recipes.addShaped("nexus_exp_comp_ins_wire_nickel", <immersiveengineering:material:25> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:25>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Никель
recipes.addShaped("nexus_exp_comp_rotor_nickel", <thermalfoundation:material:325> * 2, [
    [null, <thermalfoundation:material:325>, <thermalfoundation:material:325>],
    [<thermalfoundation:material:325>, <immersiveengineering:material:25>, <thermalfoundation:material:325>],
    [<thermalfoundation:material:325>, <thermalfoundation:material:325>, null]
]);

// Тяжелый конструкционный стержень: Никель
recipes.addShaped("nexus_exp_comp_heavy_rod_nickel", <immersiveengineering:material:25> * 3, [
    [<immersiveengineering:material:25>, <thermalfoundation:material:325>, <immersiveengineering:material:25>]
]);

// Металлическое уплотнительное кольцо: Никель
recipes.addShaped("nexus_exp_comp_ring_nickel", <thermalfoundation:material:197> * 4, [
    [null, <thermalfoundation:material:197>, null],
    [<thermalfoundation:material:197>, null, <thermalfoundation:material:197>],
    [null, <thermalfoundation:material:197>, null]
]);

// Решетка из прутьев: Никель
recipes.addShaped("nexus_exp_comp_bars_nickel", <immersiveengineering:material:25> * 8, [
    [<immersiveengineering:material:25>, <immersiveengineering:material:25>, <immersiveengineering:material:25>],
    [<immersiveengineering:material:25>, <immersiveengineering:material:25>, <immersiveengineering:material:25>]
]);

// Звенья цепи: Никель
recipes.addShaped("nexus_exp_comp_chain_nickel", <thermalfoundation:material:197> * 3, [
    [<thermalfoundation:material:197>],
    [<immersiveengineering:material:25>],
    [<thermalfoundation:material:197>]
]);

// Тонкая фольга: Никель
recipes.addShaped("nexus_exp_comp_foil_nickel", <thermalfoundation:material:197> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:25>]
]);

// Малая шестерня: Никель
recipes.addShaped("nexus_exp_comp_small_gear_nickel", <thermalfoundation:material:261>, [
    [<thermalfoundation:material:325>, <thermalfoundation:material:197>],
    [<thermalfoundation:material:197>, <thermalfoundation:material:325>]
]);

// Двойной кованый слиток: Никель
recipes.addShaped("nexus_exp_comp_double_ingot_nickel", <thermalfoundation:material:325> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:133>],
    [<thermalfoundation:material:133>]
]);

// Ручное дробление руды молотом: Никель
recipes.addShaped("nexus_exp_comp_crushed_nickel", <thermalfoundation:material:69> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage:5>]
]);

// Болт крепежный: Никель
recipes.addShaped("nexus_exp_comp_bolt_nickel", <thermalfoundation:material:197> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:25>]
]);

// Винт резьбовой: Никель
recipes.addShaped("nexus_exp_comp_screw_nickel", <thermalfoundation:material:197> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:197>]
]);

// Тяжелый уплотненный слиток: Никель
recipes.addShaped("nexus_exp_comp_heavy_ingot_nickel", <thermalfoundation:material:325>, [
    [<thermalfoundation:material:197>, null, <thermalfoundation:material:197>],
    [null, <thermalfoundation:material:133>, null],
    [<thermalfoundation:material:197>, null, <thermalfoundation:material:197>]
]);

// Армированная пластина на болтах: Никель
recipes.addShaped("nexus_exp_comp_reinf_plate_nickel", <thermalfoundation:material:325>, [
    [<thermalfoundation:material:197>, null, <thermalfoundation:material:197>],
    [null, <thermalfoundation:material:325>, null],
    [<thermalfoundation:material:197>, null, <thermalfoundation:material:197>]
]);

// Разборка шестерни на пластины молотом: Никель
recipes.addShaped("nexus_exp_comp_salvage_gear_nickel", <thermalfoundation:material:325> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:261>]
]);

// Расковка сжатой бронеплиты молотом: Никель
recipes.addShaped("nexus_exp_comp_salvage_dense_nickel", <thermalfoundation:material:325> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:325>]
]);

// Переработка проводки в самородки: Никель
recipes.addShaped("nexus_exp_comp_salvage_wire_nickel", <thermalfoundation:material:197> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:25>]
]);

// Перерубка стержня на самородки: Никель
recipes.addShaped("nexus_exp_comp_salvage_rod_nickel", <thermalfoundation:material:197> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:25>]
]);

// Ковка пластины: Платина
recipes.addShaped("nexus_exp_comp_plate_platinum", <thermalfoundation:material:326>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:134>, <thermalfoundation:material:134>, null],
    [null, null, null]
]);

// Сборка шестерни: Платина
recipes.remove(<thermalfoundation:material:262>);
recipes.addShaped("nexus_exp_comp_gear_platinum", <thermalfoundation:material:262>, [
    [null, <thermalfoundation:material:326>, null],
    [<thermalfoundation:material:326>, <immersiveengineering:material:26>, <thermalfoundation:material:326>],
    [null, <thermalfoundation:material:326>, null]
]);

// Выточка стержня: Платина
recipes.addShaped("nexus_exp_comp_rod_platinum", <immersiveengineering:material:26> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:134>, null],
    [<thermalfoundation:material:134>, null]
]);

// Сжатая бронеплита: Платина
recipes.addShaped("nexus_exp_comp_dense_platinum", <thermalfoundation:material:326> * 1, [
    [<thermalfoundation:material:326>, <thermalfoundation:material:326>, <thermalfoundation:material:326>],
    [<thermalfoundation:material:326>, <thermalfoundation:material:326>, <thermalfoundation:material:326>],
    [<thermalfoundation:material:326>, <thermalfoundation:material:326>, <thermalfoundation:material:326>]
]);

// Нарезка проводки: Платина
recipes.addShaped("nexus_exp_comp_wire_platinum", <immersiveengineering:material:26> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:326>]
]);

// Разделение слитка на самородки: Платина
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_platinum", <thermalfoundation:material:198> * 9, [<thermalfoundation:material:134>]);

// Компактизация самородков в слиток: Платина
recipes.addShaped("nexus_exp_comp_nug_to_ingot_platinum", <thermalfoundation:material:134>, [
    [<thermalfoundation:material:198>, <thermalfoundation:material:198>, <thermalfoundation:material:198>],
    [<thermalfoundation:material:198>, <thermalfoundation:material:198>, <thermalfoundation:material:198>],
    [<thermalfoundation:material:198>, <thermalfoundation:material:198>, <thermalfoundation:material:198>]
]);

// Блок металла: Платина
recipes.addShaped("nexus_exp_comp_ingot_to_blk_platinum", <thermalfoundation:storage:6>, [
    [<thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>],
    [<thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>],
    [<thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>]
]);

// Распил блока на слитки: Платина
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_platinum", <thermalfoundation:material:134> * 9, [<thermalfoundation:storage:6>]);

// Ручное измельчение слитка в пыль молотом: Платина
recipes.addShaped("nexus_exp_comp_dust_hammer_platinum", <thermalfoundation:material:70>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:134>]
]);

// Изолированный провод: Платина
recipes.addShaped("nexus_exp_comp_ins_wire_platinum", <immersiveengineering:material:26> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:26>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Платина
recipes.addShaped("nexus_exp_comp_rotor_platinum", <thermalfoundation:material:326> * 2, [
    [null, <thermalfoundation:material:326>, <thermalfoundation:material:326>],
    [<thermalfoundation:material:326>, <immersiveengineering:material:26>, <thermalfoundation:material:326>],
    [<thermalfoundation:material:326>, <thermalfoundation:material:326>, null]
]);

// Тяжелый конструкционный стержень: Платина
recipes.addShaped("nexus_exp_comp_heavy_rod_platinum", <immersiveengineering:material:26> * 3, [
    [<immersiveengineering:material:26>, <thermalfoundation:material:326>, <immersiveengineering:material:26>]
]);

// Металлическое уплотнительное кольцо: Платина
recipes.addShaped("nexus_exp_comp_ring_platinum", <thermalfoundation:material:198> * 4, [
    [null, <thermalfoundation:material:198>, null],
    [<thermalfoundation:material:198>, null, <thermalfoundation:material:198>],
    [null, <thermalfoundation:material:198>, null]
]);

// Решетка из прутьев: Платина
recipes.addShaped("nexus_exp_comp_bars_platinum", <immersiveengineering:material:26> * 8, [
    [<immersiveengineering:material:26>, <immersiveengineering:material:26>, <immersiveengineering:material:26>],
    [<immersiveengineering:material:26>, <immersiveengineering:material:26>, <immersiveengineering:material:26>]
]);

// Звенья цепи: Платина
recipes.addShaped("nexus_exp_comp_chain_platinum", <thermalfoundation:material:198> * 3, [
    [<thermalfoundation:material:198>],
    [<immersiveengineering:material:26>],
    [<thermalfoundation:material:198>]
]);

// Тонкая фольга: Платина
recipes.addShaped("nexus_exp_comp_foil_platinum", <thermalfoundation:material:198> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:26>]
]);

// Малая шестерня: Платина
recipes.addShaped("nexus_exp_comp_small_gear_platinum", <thermalfoundation:material:262>, [
    [<thermalfoundation:material:326>, <thermalfoundation:material:198>],
    [<thermalfoundation:material:198>, <thermalfoundation:material:326>]
]);

// Двойной кованый слиток: Платина
recipes.addShaped("nexus_exp_comp_double_ingot_platinum", <thermalfoundation:material:326> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:134>],
    [<thermalfoundation:material:134>]
]);

// Ручное дробление руды молотом: Платина
recipes.addShaped("nexus_exp_comp_crushed_platinum", <thermalfoundation:material:70> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage:6>]
]);

// Болт крепежный: Платина
recipes.addShaped("nexus_exp_comp_bolt_platinum", <thermalfoundation:material:198> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:26>]
]);

// Винт резьбовой: Платина
recipes.addShaped("nexus_exp_comp_screw_platinum", <thermalfoundation:material:198> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:198>]
]);

// Тяжелый уплотненный слиток: Платина
recipes.addShaped("nexus_exp_comp_heavy_ingot_platinum", <thermalfoundation:material:326>, [
    [<thermalfoundation:material:198>, null, <thermalfoundation:material:198>],
    [null, <thermalfoundation:material:134>, null],
    [<thermalfoundation:material:198>, null, <thermalfoundation:material:198>]
]);

// Армированная пластина на болтах: Платина
recipes.addShaped("nexus_exp_comp_reinf_plate_platinum", <thermalfoundation:material:326>, [
    [<thermalfoundation:material:198>, null, <thermalfoundation:material:198>],
    [null, <thermalfoundation:material:326>, null],
    [<thermalfoundation:material:198>, null, <thermalfoundation:material:198>]
]);

// Разборка шестерни на пластины молотом: Платина
recipes.addShaped("nexus_exp_comp_salvage_gear_platinum", <thermalfoundation:material:326> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:262>]
]);

// Расковка сжатой бронеплиты молотом: Платина
recipes.addShaped("nexus_exp_comp_salvage_dense_platinum", <thermalfoundation:material:326> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:326>]
]);

// Переработка проводки в самородки: Платина
recipes.addShaped("nexus_exp_comp_salvage_wire_platinum", <thermalfoundation:material:198> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:26>]
]);

// Перерубка стержня на самородки: Платина
recipes.addShaped("nexus_exp_comp_salvage_rod_platinum", <thermalfoundation:material:198> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:26>]
]);

// Ковка пластины: Иридий
recipes.addShaped("nexus_exp_comp_plate_iridium", <thermalfoundation:material:327>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:135>, <thermalfoundation:material:135>, null],
    [null, null, null]
]);

// Сборка шестерни: Иридий
recipes.remove(<thermalfoundation:material:263>);
recipes.addShaped("nexus_exp_comp_gear_iridium", <thermalfoundation:material:263>, [
    [null, <thermalfoundation:material:327>, null],
    [<thermalfoundation:material:327>, <immersiveengineering:material:27>, <thermalfoundation:material:327>],
    [null, <thermalfoundation:material:327>, null]
]);

// Выточка стержня: Иридий
recipes.addShaped("nexus_exp_comp_rod_iridium", <immersiveengineering:material:27> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:135>, null],
    [<thermalfoundation:material:135>, null]
]);

// Сжатая бронеплита: Иридий
recipes.addShaped("nexus_exp_comp_dense_iridium", <thermalfoundation:material:327> * 1, [
    [<thermalfoundation:material:327>, <thermalfoundation:material:327>, <thermalfoundation:material:327>],
    [<thermalfoundation:material:327>, <thermalfoundation:material:327>, <thermalfoundation:material:327>],
    [<thermalfoundation:material:327>, <thermalfoundation:material:327>, <thermalfoundation:material:327>]
]);

// Нарезка проводки: Иридий
recipes.addShaped("nexus_exp_comp_wire_iridium", <immersiveengineering:material:27> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:327>]
]);

// Разделение слитка на самородки: Иридий
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_iridium", <thermalfoundation:material:199> * 9, [<thermalfoundation:material:135>]);

// Компактизация самородков в слиток: Иридий
recipes.addShaped("nexus_exp_comp_nug_to_ingot_iridium", <thermalfoundation:material:135>, [
    [<thermalfoundation:material:199>, <thermalfoundation:material:199>, <thermalfoundation:material:199>],
    [<thermalfoundation:material:199>, <thermalfoundation:material:199>, <thermalfoundation:material:199>],
    [<thermalfoundation:material:199>, <thermalfoundation:material:199>, <thermalfoundation:material:199>]
]);

// Блок металла: Иридий
recipes.addShaped("nexus_exp_comp_ingot_to_blk_iridium", <thermalfoundation:storage:7>, [
    [<thermalfoundation:material:135>, <thermalfoundation:material:135>, <thermalfoundation:material:135>],
    [<thermalfoundation:material:135>, <thermalfoundation:material:135>, <thermalfoundation:material:135>],
    [<thermalfoundation:material:135>, <thermalfoundation:material:135>, <thermalfoundation:material:135>]
]);

// Распил блока на слитки: Иридий
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_iridium", <thermalfoundation:material:135> * 9, [<thermalfoundation:storage:7>]);

// Ручное измельчение слитка в пыль молотом: Иридий
recipes.addShaped("nexus_exp_comp_dust_hammer_iridium", <thermalfoundation:material:71>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:135>]
]);

// Изолированный провод: Иридий
recipes.addShaped("nexus_exp_comp_ins_wire_iridium", <immersiveengineering:material:27> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:27>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Иридий
recipes.addShaped("nexus_exp_comp_rotor_iridium", <thermalfoundation:material:327> * 2, [
    [null, <thermalfoundation:material:327>, <thermalfoundation:material:327>],
    [<thermalfoundation:material:327>, <immersiveengineering:material:27>, <thermalfoundation:material:327>],
    [<thermalfoundation:material:327>, <thermalfoundation:material:327>, null]
]);

// Тяжелый конструкционный стержень: Иридий
recipes.addShaped("nexus_exp_comp_heavy_rod_iridium", <immersiveengineering:material:27> * 3, [
    [<immersiveengineering:material:27>, <thermalfoundation:material:327>, <immersiveengineering:material:27>]
]);

// Металлическое уплотнительное кольцо: Иридий
recipes.addShaped("nexus_exp_comp_ring_iridium", <thermalfoundation:material:199> * 4, [
    [null, <thermalfoundation:material:199>, null],
    [<thermalfoundation:material:199>, null, <thermalfoundation:material:199>],
    [null, <thermalfoundation:material:199>, null]
]);

// Решетка из прутьев: Иридий
recipes.addShaped("nexus_exp_comp_bars_iridium", <immersiveengineering:material:27> * 8, [
    [<immersiveengineering:material:27>, <immersiveengineering:material:27>, <immersiveengineering:material:27>],
    [<immersiveengineering:material:27>, <immersiveengineering:material:27>, <immersiveengineering:material:27>]
]);

// Звенья цепи: Иридий
recipes.addShaped("nexus_exp_comp_chain_iridium", <thermalfoundation:material:199> * 3, [
    [<thermalfoundation:material:199>],
    [<immersiveengineering:material:27>],
    [<thermalfoundation:material:199>]
]);

// Тонкая фольга: Иридий
recipes.addShaped("nexus_exp_comp_foil_iridium", <thermalfoundation:material:199> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:27>]
]);

// Малая шестерня: Иридий
recipes.addShaped("nexus_exp_comp_small_gear_iridium", <thermalfoundation:material:263>, [
    [<thermalfoundation:material:327>, <thermalfoundation:material:199>],
    [<thermalfoundation:material:199>, <thermalfoundation:material:327>]
]);

// Двойной кованый слиток: Иридий
recipes.addShaped("nexus_exp_comp_double_ingot_iridium", <thermalfoundation:material:327> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:135>],
    [<thermalfoundation:material:135>]
]);

// Ручное дробление руды молотом: Иридий
recipes.addShaped("nexus_exp_comp_crushed_iridium", <thermalfoundation:material:71> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage:7>]
]);

// Болт крепежный: Иридий
recipes.addShaped("nexus_exp_comp_bolt_iridium", <thermalfoundation:material:199> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:27>]
]);

// Винт резьбовой: Иридий
recipes.addShaped("nexus_exp_comp_screw_iridium", <thermalfoundation:material:199> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:199>]
]);

// Тяжелый уплотненный слиток: Иридий
recipes.addShaped("nexus_exp_comp_heavy_ingot_iridium", <thermalfoundation:material:327>, [
    [<thermalfoundation:material:199>, null, <thermalfoundation:material:199>],
    [null, <thermalfoundation:material:135>, null],
    [<thermalfoundation:material:199>, null, <thermalfoundation:material:199>]
]);

// Армированная пластина на болтах: Иридий
recipes.addShaped("nexus_exp_comp_reinf_plate_iridium", <thermalfoundation:material:327>, [
    [<thermalfoundation:material:199>, null, <thermalfoundation:material:199>],
    [null, <thermalfoundation:material:327>, null],
    [<thermalfoundation:material:199>, null, <thermalfoundation:material:199>]
]);

// Разборка шестерни на пластины молотом: Иридий
recipes.addShaped("nexus_exp_comp_salvage_gear_iridium", <thermalfoundation:material:327> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:263>]
]);

// Расковка сжатой бронеплиты молотом: Иридий
recipes.addShaped("nexus_exp_comp_salvage_dense_iridium", <thermalfoundation:material:327> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:327>]
]);

// Переработка проводки в самородки: Иридий
recipes.addShaped("nexus_exp_comp_salvage_wire_iridium", <thermalfoundation:material:199> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:27>]
]);

// Перерубка стержня на самородки: Иридий
recipes.addShaped("nexus_exp_comp_salvage_rod_iridium", <thermalfoundation:material:199> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:27>]
]);

// Ковка пластины: Сталь
recipes.addShaped("nexus_exp_comp_plate_steel", <thermalfoundation:material:352>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:160>, <thermalfoundation:material:160>, null],
    [null, null, null]
]);

// Сборка шестерни: Сталь
recipes.remove(<thermalfoundation:material:288>);
recipes.addShaped("nexus_exp_comp_gear_steel", <thermalfoundation:material:288>, [
    [null, <thermalfoundation:material:352>, null],
    [<thermalfoundation:material:352>, <immersiveengineering:material:3>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:352>, null]
]);

// Выточка стержня: Сталь
recipes.addShaped("nexus_exp_comp_rod_steel", <immersiveengineering:material:3> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:160>, null],
    [<thermalfoundation:material:160>, null]
]);

// Сжатая бронеплита: Сталь
recipes.addShaped("nexus_exp_comp_dense_steel", <thermalfoundation:material:352> * 1, [
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Нарезка проводки: Сталь
recipes.addShaped("nexus_exp_comp_wire_steel", <immersiveengineering:material:3> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:352>]
]);

// Разделение слитка на самородки: Сталь
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_steel", <thermalfoundation:material:224> * 9, [<thermalfoundation:material:160>]);

// Компактизация самородков в слиток: Сталь
recipes.addShaped("nexus_exp_comp_nug_to_ingot_steel", <thermalfoundation:material:160>, [
    [<thermalfoundation:material:224>, <thermalfoundation:material:224>, <thermalfoundation:material:224>],
    [<thermalfoundation:material:224>, <thermalfoundation:material:224>, <thermalfoundation:material:224>],
    [<thermalfoundation:material:224>, <thermalfoundation:material:224>, <thermalfoundation:material:224>]
]);

// Блок металла: Сталь
recipes.addShaped("nexus_exp_comp_ingot_to_blk_steel", <thermalfoundation:storage_alloy:0>, [
    [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],
    [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],
    [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>]
]);

// Распил блока на слитки: Сталь
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_steel", <thermalfoundation:material:160> * 9, [<thermalfoundation:storage_alloy:0>]);

// Ручное измельчение слитка в пыль молотом: Сталь
recipes.addShaped("nexus_exp_comp_dust_hammer_steel", <thermalfoundation:material:96>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:160>]
]);

// Изолированный провод: Сталь
recipes.addShaped("nexus_exp_comp_ins_wire_steel", <immersiveengineering:material:3> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:3>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Сталь
recipes.addShaped("nexus_exp_comp_rotor_steel", <thermalfoundation:material:352> * 2, [
    [null, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <immersiveengineering:material:3>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, null]
]);

// Тяжелый конструкционный стержень: Сталь
recipes.addShaped("nexus_exp_comp_heavy_rod_steel", <immersiveengineering:material:3> * 3, [
    [<immersiveengineering:material:3>, <thermalfoundation:material:352>, <immersiveengineering:material:3>]
]);

// Металлическое уплотнительное кольцо: Сталь
recipes.addShaped("nexus_exp_comp_ring_steel", <thermalfoundation:material:224> * 4, [
    [null, <thermalfoundation:material:224>, null],
    [<thermalfoundation:material:224>, null, <thermalfoundation:material:224>],
    [null, <thermalfoundation:material:224>, null]
]);

// Решетка из прутьев: Сталь
recipes.addShaped("nexus_exp_comp_bars_steel", <immersiveengineering:material:3> * 8, [
    [<immersiveengineering:material:3>, <immersiveengineering:material:3>, <immersiveengineering:material:3>],
    [<immersiveengineering:material:3>, <immersiveengineering:material:3>, <immersiveengineering:material:3>]
]);

// Звенья цепи: Сталь
recipes.addShaped("nexus_exp_comp_chain_steel", <thermalfoundation:material:224> * 3, [
    [<thermalfoundation:material:224>],
    [<immersiveengineering:material:3>],
    [<thermalfoundation:material:224>]
]);

// Тонкая фольга: Сталь
recipes.addShaped("nexus_exp_comp_foil_steel", <thermalfoundation:material:224> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:3>]
]);

// Малая шестерня: Сталь
recipes.addShaped("nexus_exp_comp_small_gear_steel", <thermalfoundation:material:288>, [
    [<thermalfoundation:material:352>, <thermalfoundation:material:224>],
    [<thermalfoundation:material:224>, <thermalfoundation:material:352>]
]);

// Двойной кованый слиток: Сталь
recipes.addShaped("nexus_exp_comp_double_ingot_steel", <thermalfoundation:material:352> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:160>],
    [<thermalfoundation:material:160>]
]);

// Ручное дробление руды молотом: Сталь
recipes.addShaped("nexus_exp_comp_crushed_steel", <thermalfoundation:material:96> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage_alloy:0>]
]);

// Болт крепежный: Сталь
recipes.addShaped("nexus_exp_comp_bolt_steel", <thermalfoundation:material:224> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:3>]
]);

// Винт резьбовой: Сталь
recipes.addShaped("nexus_exp_comp_screw_steel", <thermalfoundation:material:224> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:224>]
]);

// Тяжелый уплотненный слиток: Сталь
recipes.addShaped("nexus_exp_comp_heavy_ingot_steel", <thermalfoundation:material:352>, [
    [<thermalfoundation:material:224>, null, <thermalfoundation:material:224>],
    [null, <thermalfoundation:material:160>, null],
    [<thermalfoundation:material:224>, null, <thermalfoundation:material:224>]
]);

// Армированная пластина на болтах: Сталь
recipes.addShaped("nexus_exp_comp_reinf_plate_steel", <thermalfoundation:material:352>, [
    [<thermalfoundation:material:224>, null, <thermalfoundation:material:224>],
    [null, <thermalfoundation:material:352>, null],
    [<thermalfoundation:material:224>, null, <thermalfoundation:material:224>]
]);

// Разборка шестерни на пластины молотом: Сталь
recipes.addShaped("nexus_exp_comp_salvage_gear_steel", <thermalfoundation:material:352> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:288>]
]);

// Расковка сжатой бронеплиты молотом: Сталь
recipes.addShaped("nexus_exp_comp_salvage_dense_steel", <thermalfoundation:material:352> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:352>]
]);

// Переработка проводки в самородки: Сталь
recipes.addShaped("nexus_exp_comp_salvage_wire_steel", <thermalfoundation:material:224> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:3>]
]);

// Перерубка стержня на самородки: Сталь
recipes.addShaped("nexus_exp_comp_salvage_rod_steel", <thermalfoundation:material:224> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:3>]
]);

// Ковка пластины: Электрум
recipes.addShaped("nexus_exp_comp_plate_electrum", <thermalfoundation:material:353>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:161>, <thermalfoundation:material:161>, null],
    [null, null, null]
]);

// Сборка шестерни: Электрум
recipes.remove(<thermalfoundation:material:289>);
recipes.addShaped("nexus_exp_comp_gear_electrum", <thermalfoundation:material:289>, [
    [null, <thermalfoundation:material:353>, null],
    [<thermalfoundation:material:353>, <immersiveengineering:material:28>, <thermalfoundation:material:353>],
    [null, <thermalfoundation:material:353>, null]
]);

// Выточка стержня: Электрум
recipes.addShaped("nexus_exp_comp_rod_electrum", <immersiveengineering:material:28> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:161>, null],
    [<thermalfoundation:material:161>, null]
]);

// Сжатая бронеплита: Электрум
recipes.addShaped("nexus_exp_comp_dense_electrum", <thermalfoundation:material:353> * 1, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:353>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:353>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:353>, <thermalfoundation:material:353>]
]);

// Нарезка проводки: Электрум
recipes.addShaped("nexus_exp_comp_wire_electrum", <immersiveengineering:material:28> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:353>]
]);

// Разделение слитка на самородки: Электрум
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_electrum", <thermalfoundation:material:225> * 9, [<thermalfoundation:material:161>]);

// Компактизация самородков в слиток: Электрум
recipes.addShaped("nexus_exp_comp_nug_to_ingot_electrum", <thermalfoundation:material:161>, [
    [<thermalfoundation:material:225>, <thermalfoundation:material:225>, <thermalfoundation:material:225>],
    [<thermalfoundation:material:225>, <thermalfoundation:material:225>, <thermalfoundation:material:225>],
    [<thermalfoundation:material:225>, <thermalfoundation:material:225>, <thermalfoundation:material:225>]
]);

// Блок металла: Электрум
recipes.addShaped("nexus_exp_comp_ingot_to_blk_electrum", <thermalfoundation:storage_alloy:1>, [
    [<thermalfoundation:material:161>, <thermalfoundation:material:161>, <thermalfoundation:material:161>],
    [<thermalfoundation:material:161>, <thermalfoundation:material:161>, <thermalfoundation:material:161>],
    [<thermalfoundation:material:161>, <thermalfoundation:material:161>, <thermalfoundation:material:161>]
]);

// Распил блока на слитки: Электрум
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_electrum", <thermalfoundation:material:161> * 9, [<thermalfoundation:storage_alloy:1>]);

// Ручное измельчение слитка в пыль молотом: Электрум
recipes.addShaped("nexus_exp_comp_dust_hammer_electrum", <thermalfoundation:material:97>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:161>]
]);

// Изолированный провод: Электрум
recipes.addShaped("nexus_exp_comp_ins_wire_electrum", <immersiveengineering:material:28> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:28>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Электрум
recipes.addShaped("nexus_exp_comp_rotor_electrum", <thermalfoundation:material:353> * 2, [
    [null, <thermalfoundation:material:353>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <immersiveengineering:material:28>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:353>, null]
]);

// Тяжелый конструкционный стержень: Электрум
recipes.addShaped("nexus_exp_comp_heavy_rod_electrum", <immersiveengineering:material:28> * 3, [
    [<immersiveengineering:material:28>, <thermalfoundation:material:353>, <immersiveengineering:material:28>]
]);

// Металлическое уплотнительное кольцо: Электрум
recipes.addShaped("nexus_exp_comp_ring_electrum", <thermalfoundation:material:225> * 4, [
    [null, <thermalfoundation:material:225>, null],
    [<thermalfoundation:material:225>, null, <thermalfoundation:material:225>],
    [null, <thermalfoundation:material:225>, null]
]);

// Решетка из прутьев: Электрум
recipes.addShaped("nexus_exp_comp_bars_electrum", <immersiveengineering:material:28> * 8, [
    [<immersiveengineering:material:28>, <immersiveengineering:material:28>, <immersiveengineering:material:28>],
    [<immersiveengineering:material:28>, <immersiveengineering:material:28>, <immersiveengineering:material:28>]
]);

// Звенья цепи: Электрум
recipes.addShaped("nexus_exp_comp_chain_electrum", <thermalfoundation:material:225> * 3, [
    [<thermalfoundation:material:225>],
    [<immersiveengineering:material:28>],
    [<thermalfoundation:material:225>]
]);

// Тонкая фольга: Электрум
recipes.addShaped("nexus_exp_comp_foil_electrum", <thermalfoundation:material:225> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:28>]
]);

// Малая шестерня: Электрум
recipes.addShaped("nexus_exp_comp_small_gear_electrum", <thermalfoundation:material:289>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:225>],
    [<thermalfoundation:material:225>, <thermalfoundation:material:353>]
]);

// Двойной кованый слиток: Электрум
recipes.addShaped("nexus_exp_comp_double_ingot_electrum", <thermalfoundation:material:353> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:161>],
    [<thermalfoundation:material:161>]
]);

// Ручное дробление руды молотом: Электрум
recipes.addShaped("nexus_exp_comp_crushed_electrum", <thermalfoundation:material:97> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage_alloy:1>]
]);

// Болт крепежный: Электрум
recipes.addShaped("nexus_exp_comp_bolt_electrum", <thermalfoundation:material:225> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:28>]
]);

// Винт резьбовой: Электрум
recipes.addShaped("nexus_exp_comp_screw_electrum", <thermalfoundation:material:225> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:225>]
]);

// Тяжелый уплотненный слиток: Электрум
recipes.addShaped("nexus_exp_comp_heavy_ingot_electrum", <thermalfoundation:material:353>, [
    [<thermalfoundation:material:225>, null, <thermalfoundation:material:225>],
    [null, <thermalfoundation:material:161>, null],
    [<thermalfoundation:material:225>, null, <thermalfoundation:material:225>]
]);

// Армированная пластина на болтах: Электрум
recipes.addShaped("nexus_exp_comp_reinf_plate_electrum", <thermalfoundation:material:353>, [
    [<thermalfoundation:material:225>, null, <thermalfoundation:material:225>],
    [null, <thermalfoundation:material:353>, null],
    [<thermalfoundation:material:225>, null, <thermalfoundation:material:225>]
]);

// Разборка шестерни на пластины молотом: Электрум
recipes.addShaped("nexus_exp_comp_salvage_gear_electrum", <thermalfoundation:material:353> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:289>]
]);

// Расковка сжатой бронеплиты молотом: Электрум
recipes.addShaped("nexus_exp_comp_salvage_dense_electrum", <thermalfoundation:material:353> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:353>]
]);

// Переработка проводки в самородки: Электрум
recipes.addShaped("nexus_exp_comp_salvage_wire_electrum", <thermalfoundation:material:225> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:28>]
]);

// Перерубка стержня на самородки: Электрум
recipes.addShaped("nexus_exp_comp_salvage_rod_electrum", <thermalfoundation:material:225> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:28>]
]);

// Ковка пластины: Инвар
recipes.addShaped("nexus_exp_comp_plate_invar", <thermalfoundation:material:354>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:162>, <thermalfoundation:material:162>, null],
    [null, null, null]
]);

// Сборка шестерни: Инвар
recipes.remove(<thermalfoundation:material:290>);
recipes.addShaped("nexus_exp_comp_gear_invar", <thermalfoundation:material:290>, [
    [null, <thermalfoundation:material:354>, null],
    [<thermalfoundation:material:354>, <immersiveengineering:material:29>, <thermalfoundation:material:354>],
    [null, <thermalfoundation:material:354>, null]
]);

// Выточка стержня: Инвар
recipes.addShaped("nexus_exp_comp_rod_invar", <immersiveengineering:material:29> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:162>, null],
    [<thermalfoundation:material:162>, null]
]);

// Сжатая бронеплита: Инвар
recipes.addShaped("nexus_exp_comp_dense_invar", <thermalfoundation:material:354> * 1, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, <thermalfoundation:material:354>]
]);

// Нарезка проводки: Инвар
recipes.addShaped("nexus_exp_comp_wire_invar", <immersiveengineering:material:29> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:354>]
]);

// Разделение слитка на самородки: Инвар
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_invar", <thermalfoundation:material:226> * 9, [<thermalfoundation:material:162>]);

// Компактизация самородков в слиток: Инвар
recipes.addShaped("nexus_exp_comp_nug_to_ingot_invar", <thermalfoundation:material:162>, [
    [<thermalfoundation:material:226>, <thermalfoundation:material:226>, <thermalfoundation:material:226>],
    [<thermalfoundation:material:226>, <thermalfoundation:material:226>, <thermalfoundation:material:226>],
    [<thermalfoundation:material:226>, <thermalfoundation:material:226>, <thermalfoundation:material:226>]
]);

// Блок металла: Инвар
recipes.addShaped("nexus_exp_comp_ingot_to_blk_invar", <thermalfoundation:storage_alloy:2>, [
    [<thermalfoundation:material:162>, <thermalfoundation:material:162>, <thermalfoundation:material:162>],
    [<thermalfoundation:material:162>, <thermalfoundation:material:162>, <thermalfoundation:material:162>],
    [<thermalfoundation:material:162>, <thermalfoundation:material:162>, <thermalfoundation:material:162>]
]);

// Распил блока на слитки: Инвар
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_invar", <thermalfoundation:material:162> * 9, [<thermalfoundation:storage_alloy:2>]);

// Ручное измельчение слитка в пыль молотом: Инвар
recipes.addShaped("nexus_exp_comp_dust_hammer_invar", <thermalfoundation:material:98>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:162>]
]);

// Изолированный провод: Инвар
recipes.addShaped("nexus_exp_comp_ins_wire_invar", <immersiveengineering:material:29> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:29>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Инвар
recipes.addShaped("nexus_exp_comp_rotor_invar", <thermalfoundation:material:354> * 2, [
    [null, <thermalfoundation:material:354>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <immersiveengineering:material:29>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, null]
]);

// Тяжелый конструкционный стержень: Инвар
recipes.addShaped("nexus_exp_comp_heavy_rod_invar", <immersiveengineering:material:29> * 3, [
    [<immersiveengineering:material:29>, <thermalfoundation:material:354>, <immersiveengineering:material:29>]
]);

// Металлическое уплотнительное кольцо: Инвар
recipes.addShaped("nexus_exp_comp_ring_invar", <thermalfoundation:material:226> * 4, [
    [null, <thermalfoundation:material:226>, null],
    [<thermalfoundation:material:226>, null, <thermalfoundation:material:226>],
    [null, <thermalfoundation:material:226>, null]
]);

// Решетка из прутьев: Инвар
recipes.addShaped("nexus_exp_comp_bars_invar", <immersiveengineering:material:29> * 8, [
    [<immersiveengineering:material:29>, <immersiveengineering:material:29>, <immersiveengineering:material:29>],
    [<immersiveengineering:material:29>, <immersiveengineering:material:29>, <immersiveengineering:material:29>]
]);

// Звенья цепи: Инвар
recipes.addShaped("nexus_exp_comp_chain_invar", <thermalfoundation:material:226> * 3, [
    [<thermalfoundation:material:226>],
    [<immersiveengineering:material:29>],
    [<thermalfoundation:material:226>]
]);

// Тонкая фольга: Инвар
recipes.addShaped("nexus_exp_comp_foil_invar", <thermalfoundation:material:226> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:29>]
]);

// Малая шестерня: Инвар
recipes.addShaped("nexus_exp_comp_small_gear_invar", <thermalfoundation:material:290>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:226>],
    [<thermalfoundation:material:226>, <thermalfoundation:material:354>]
]);

// Двойной кованый слиток: Инвар
recipes.addShaped("nexus_exp_comp_double_ingot_invar", <thermalfoundation:material:354> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:162>],
    [<thermalfoundation:material:162>]
]);

// Ручное дробление руды молотом: Инвар
recipes.addShaped("nexus_exp_comp_crushed_invar", <thermalfoundation:material:98> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage_alloy:2>]
]);

// Болт крепежный: Инвар
recipes.addShaped("nexus_exp_comp_bolt_invar", <thermalfoundation:material:226> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:29>]
]);

// Винт резьбовой: Инвар
recipes.addShaped("nexus_exp_comp_screw_invar", <thermalfoundation:material:226> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:226>]
]);

// Тяжелый уплотненный слиток: Инвар
recipes.addShaped("nexus_exp_comp_heavy_ingot_invar", <thermalfoundation:material:354>, [
    [<thermalfoundation:material:226>, null, <thermalfoundation:material:226>],
    [null, <thermalfoundation:material:162>, null],
    [<thermalfoundation:material:226>, null, <thermalfoundation:material:226>]
]);

// Армированная пластина на болтах: Инвар
recipes.addShaped("nexus_exp_comp_reinf_plate_invar", <thermalfoundation:material:354>, [
    [<thermalfoundation:material:226>, null, <thermalfoundation:material:226>],
    [null, <thermalfoundation:material:354>, null],
    [<thermalfoundation:material:226>, null, <thermalfoundation:material:226>]
]);

// Разборка шестерни на пластины молотом: Инвар
recipes.addShaped("nexus_exp_comp_salvage_gear_invar", <thermalfoundation:material:354> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:290>]
]);

// Расковка сжатой бронеплиты молотом: Инвар
recipes.addShaped("nexus_exp_comp_salvage_dense_invar", <thermalfoundation:material:354> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:354>]
]);

// Переработка проводки в самородки: Инвар
recipes.addShaped("nexus_exp_comp_salvage_wire_invar", <thermalfoundation:material:226> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:29>]
]);

// Перерубка стержня на самородки: Инвар
recipes.addShaped("nexus_exp_comp_salvage_rod_invar", <thermalfoundation:material:226> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:29>]
]);

// Ковка пластины: Бронза
recipes.addShaped("nexus_exp_comp_plate_bronze", <thermalfoundation:material:355>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:163>, <thermalfoundation:material:163>, null],
    [null, null, null]
]);

// Сборка шестерни: Бронза
recipes.remove(<thermalfoundation:material:291>);
recipes.addShaped("nexus_exp_comp_gear_bronze", <thermalfoundation:material:291>, [
    [null, <thermalfoundation:material:355>, null],
    [<thermalfoundation:material:355>, <immersiveengineering:material:30>, <thermalfoundation:material:355>],
    [null, <thermalfoundation:material:355>, null]
]);

// Выточка стержня: Бронза
recipes.addShaped("nexus_exp_comp_rod_bronze", <immersiveengineering:material:30> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:163>, null],
    [<thermalfoundation:material:163>, null]
]);

// Сжатая бронеплита: Бронза
recipes.addShaped("nexus_exp_comp_dense_bronze", <thermalfoundation:material:355> * 1, [
    [<thermalfoundation:material:355>, <thermalfoundation:material:355>, <thermalfoundation:material:355>],
    [<thermalfoundation:material:355>, <thermalfoundation:material:355>, <thermalfoundation:material:355>],
    [<thermalfoundation:material:355>, <thermalfoundation:material:355>, <thermalfoundation:material:355>]
]);

// Нарезка проводки: Бронза
recipes.addShaped("nexus_exp_comp_wire_bronze", <immersiveengineering:material:30> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:355>]
]);

// Разделение слитка на самородки: Бронза
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_bronze", <thermalfoundation:material:227> * 9, [<thermalfoundation:material:163>]);

// Компактизация самородков в слиток: Бронза
recipes.addShaped("nexus_exp_comp_nug_to_ingot_bronze", <thermalfoundation:material:163>, [
    [<thermalfoundation:material:227>, <thermalfoundation:material:227>, <thermalfoundation:material:227>],
    [<thermalfoundation:material:227>, <thermalfoundation:material:227>, <thermalfoundation:material:227>],
    [<thermalfoundation:material:227>, <thermalfoundation:material:227>, <thermalfoundation:material:227>]
]);

// Блок металла: Бронза
recipes.addShaped("nexus_exp_comp_ingot_to_blk_bronze", <thermalfoundation:storage_alloy:3>, [
    [<thermalfoundation:material:163>, <thermalfoundation:material:163>, <thermalfoundation:material:163>],
    [<thermalfoundation:material:163>, <thermalfoundation:material:163>, <thermalfoundation:material:163>],
    [<thermalfoundation:material:163>, <thermalfoundation:material:163>, <thermalfoundation:material:163>]
]);

// Распил блока на слитки: Бронза
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_bronze", <thermalfoundation:material:163> * 9, [<thermalfoundation:storage_alloy:3>]);

// Ручное измельчение слитка в пыль молотом: Бронза
recipes.addShaped("nexus_exp_comp_dust_hammer_bronze", <thermalfoundation:material:99>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:163>]
]);

// Изолированный провод: Бронза
recipes.addShaped("nexus_exp_comp_ins_wire_bronze", <immersiveengineering:material:30> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:30>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Бронза
recipes.addShaped("nexus_exp_comp_rotor_bronze", <thermalfoundation:material:355> * 2, [
    [null, <thermalfoundation:material:355>, <thermalfoundation:material:355>],
    [<thermalfoundation:material:355>, <immersiveengineering:material:30>, <thermalfoundation:material:355>],
    [<thermalfoundation:material:355>, <thermalfoundation:material:355>, null]
]);

// Тяжелый конструкционный стержень: Бронза
recipes.addShaped("nexus_exp_comp_heavy_rod_bronze", <immersiveengineering:material:30> * 3, [
    [<immersiveengineering:material:30>, <thermalfoundation:material:355>, <immersiveengineering:material:30>]
]);

// Металлическое уплотнительное кольцо: Бронза
recipes.addShaped("nexus_exp_comp_ring_bronze", <thermalfoundation:material:227> * 4, [
    [null, <thermalfoundation:material:227>, null],
    [<thermalfoundation:material:227>, null, <thermalfoundation:material:227>],
    [null, <thermalfoundation:material:227>, null]
]);

// Решетка из прутьев: Бронза
recipes.addShaped("nexus_exp_comp_bars_bronze", <immersiveengineering:material:30> * 8, [
    [<immersiveengineering:material:30>, <immersiveengineering:material:30>, <immersiveengineering:material:30>],
    [<immersiveengineering:material:30>, <immersiveengineering:material:30>, <immersiveengineering:material:30>]
]);

// Звенья цепи: Бронза
recipes.addShaped("nexus_exp_comp_chain_bronze", <thermalfoundation:material:227> * 3, [
    [<thermalfoundation:material:227>],
    [<immersiveengineering:material:30>],
    [<thermalfoundation:material:227>]
]);

// Тонкая фольга: Бронза
recipes.addShaped("nexus_exp_comp_foil_bronze", <thermalfoundation:material:227> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:30>]
]);

// Малая шестерня: Бронза
recipes.addShaped("nexus_exp_comp_small_gear_bronze", <thermalfoundation:material:291>, [
    [<thermalfoundation:material:355>, <thermalfoundation:material:227>],
    [<thermalfoundation:material:227>, <thermalfoundation:material:355>]
]);

// Двойной кованый слиток: Бронза
recipes.addShaped("nexus_exp_comp_double_ingot_bronze", <thermalfoundation:material:355> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:163>],
    [<thermalfoundation:material:163>]
]);

// Ручное дробление руды молотом: Бронза
recipes.addShaped("nexus_exp_comp_crushed_bronze", <thermalfoundation:material:99> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage_alloy:3>]
]);

// Болт крепежный: Бронза
recipes.addShaped("nexus_exp_comp_bolt_bronze", <thermalfoundation:material:227> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:30>]
]);

// Винт резьбовой: Бронза
recipes.addShaped("nexus_exp_comp_screw_bronze", <thermalfoundation:material:227> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:227>]
]);

// Тяжелый уплотненный слиток: Бронза
recipes.addShaped("nexus_exp_comp_heavy_ingot_bronze", <thermalfoundation:material:355>, [
    [<thermalfoundation:material:227>, null, <thermalfoundation:material:227>],
    [null, <thermalfoundation:material:163>, null],
    [<thermalfoundation:material:227>, null, <thermalfoundation:material:227>]
]);

// Армированная пластина на болтах: Бронза
recipes.addShaped("nexus_exp_comp_reinf_plate_bronze", <thermalfoundation:material:355>, [
    [<thermalfoundation:material:227>, null, <thermalfoundation:material:227>],
    [null, <thermalfoundation:material:355>, null],
    [<thermalfoundation:material:227>, null, <thermalfoundation:material:227>]
]);

// Разборка шестерни на пластины молотом: Бронза
recipes.addShaped("nexus_exp_comp_salvage_gear_bronze", <thermalfoundation:material:355> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:291>]
]);

// Расковка сжатой бронеплиты молотом: Бронза
recipes.addShaped("nexus_exp_comp_salvage_dense_bronze", <thermalfoundation:material:355> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:355>]
]);

// Переработка проводки в самородки: Бронза
recipes.addShaped("nexus_exp_comp_salvage_wire_bronze", <thermalfoundation:material:227> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:30>]
]);

// Перерубка стержня на самородки: Бронза
recipes.addShaped("nexus_exp_comp_salvage_rod_bronze", <thermalfoundation:material:227> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:30>]
]);

// Ковка пластины: Константан
recipes.addShaped("nexus_exp_comp_plate_constantan", <thermalfoundation:material:356>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:164>, <thermalfoundation:material:164>, null],
    [null, null, null]
]);

// Сборка шестерни: Константан
recipes.remove(<thermalfoundation:material:292>);
recipes.addShaped("nexus_exp_comp_gear_constantan", <thermalfoundation:material:292>, [
    [null, <thermalfoundation:material:356>, null],
    [<thermalfoundation:material:356>, <immersiveengineering:material:31>, <thermalfoundation:material:356>],
    [null, <thermalfoundation:material:356>, null]
]);

// Выточка стержня: Константан
recipes.addShaped("nexus_exp_comp_rod_constantan", <immersiveengineering:material:31> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:164>, null],
    [<thermalfoundation:material:164>, null]
]);

// Сжатая бронеплита: Константан
recipes.addShaped("nexus_exp_comp_dense_constantan", <thermalfoundation:material:356> * 1, [
    [<thermalfoundation:material:356>, <thermalfoundation:material:356>, <thermalfoundation:material:356>],
    [<thermalfoundation:material:356>, <thermalfoundation:material:356>, <thermalfoundation:material:356>],
    [<thermalfoundation:material:356>, <thermalfoundation:material:356>, <thermalfoundation:material:356>]
]);

// Нарезка проводки: Константан
recipes.addShaped("nexus_exp_comp_wire_constantan", <immersiveengineering:material:31> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:356>]
]);

// Разделение слитка на самородки: Константан
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_constantan", <thermalfoundation:material:228> * 9, [<thermalfoundation:material:164>]);

// Компактизация самородков в слиток: Константан
recipes.addShaped("nexus_exp_comp_nug_to_ingot_constantan", <thermalfoundation:material:164>, [
    [<thermalfoundation:material:228>, <thermalfoundation:material:228>, <thermalfoundation:material:228>],
    [<thermalfoundation:material:228>, <thermalfoundation:material:228>, <thermalfoundation:material:228>],
    [<thermalfoundation:material:228>, <thermalfoundation:material:228>, <thermalfoundation:material:228>]
]);

// Блок металла: Константан
recipes.addShaped("nexus_exp_comp_ingot_to_blk_constantan", <thermalfoundation:storage_alloy:4>, [
    [<thermalfoundation:material:164>, <thermalfoundation:material:164>, <thermalfoundation:material:164>],
    [<thermalfoundation:material:164>, <thermalfoundation:material:164>, <thermalfoundation:material:164>],
    [<thermalfoundation:material:164>, <thermalfoundation:material:164>, <thermalfoundation:material:164>]
]);

// Распил блока на слитки: Константан
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_constantan", <thermalfoundation:material:164> * 9, [<thermalfoundation:storage_alloy:4>]);

// Ручное измельчение слитка в пыль молотом: Константан
recipes.addShaped("nexus_exp_comp_dust_hammer_constantan", <thermalfoundation:material:100>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:164>]
]);

// Изолированный провод: Константан
recipes.addShaped("nexus_exp_comp_ins_wire_constantan", <immersiveengineering:material:31> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:31>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Константан
recipes.addShaped("nexus_exp_comp_rotor_constantan", <thermalfoundation:material:356> * 2, [
    [null, <thermalfoundation:material:356>, <thermalfoundation:material:356>],
    [<thermalfoundation:material:356>, <immersiveengineering:material:31>, <thermalfoundation:material:356>],
    [<thermalfoundation:material:356>, <thermalfoundation:material:356>, null]
]);

// Тяжелый конструкционный стержень: Константан
recipes.addShaped("nexus_exp_comp_heavy_rod_constantan", <immersiveengineering:material:31> * 3, [
    [<immersiveengineering:material:31>, <thermalfoundation:material:356>, <immersiveengineering:material:31>]
]);

// Металлическое уплотнительное кольцо: Константан
recipes.addShaped("nexus_exp_comp_ring_constantan", <thermalfoundation:material:228> * 4, [
    [null, <thermalfoundation:material:228>, null],
    [<thermalfoundation:material:228>, null, <thermalfoundation:material:228>],
    [null, <thermalfoundation:material:228>, null]
]);

// Решетка из прутьев: Константан
recipes.addShaped("nexus_exp_comp_bars_constantan", <immersiveengineering:material:31> * 8, [
    [<immersiveengineering:material:31>, <immersiveengineering:material:31>, <immersiveengineering:material:31>],
    [<immersiveengineering:material:31>, <immersiveengineering:material:31>, <immersiveengineering:material:31>]
]);

// Звенья цепи: Константан
recipes.addShaped("nexus_exp_comp_chain_constantan", <thermalfoundation:material:228> * 3, [
    [<thermalfoundation:material:228>],
    [<immersiveengineering:material:31>],
    [<thermalfoundation:material:228>]
]);

// Тонкая фольга: Константан
recipes.addShaped("nexus_exp_comp_foil_constantan", <thermalfoundation:material:228> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:31>]
]);

// Малая шестерня: Константан
recipes.addShaped("nexus_exp_comp_small_gear_constantan", <thermalfoundation:material:292>, [
    [<thermalfoundation:material:356>, <thermalfoundation:material:228>],
    [<thermalfoundation:material:228>, <thermalfoundation:material:356>]
]);

// Двойной кованый слиток: Константан
recipes.addShaped("nexus_exp_comp_double_ingot_constantan", <thermalfoundation:material:356> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:164>],
    [<thermalfoundation:material:164>]
]);

// Ручное дробление руды молотом: Константан
recipes.addShaped("nexus_exp_comp_crushed_constantan", <thermalfoundation:material:100> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage_alloy:4>]
]);

// Болт крепежный: Константан
recipes.addShaped("nexus_exp_comp_bolt_constantan", <thermalfoundation:material:228> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:31>]
]);

// Винт резьбовой: Константан
recipes.addShaped("nexus_exp_comp_screw_constantan", <thermalfoundation:material:228> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:228>]
]);

// Тяжелый уплотненный слиток: Константан
recipes.addShaped("nexus_exp_comp_heavy_ingot_constantan", <thermalfoundation:material:356>, [
    [<thermalfoundation:material:228>, null, <thermalfoundation:material:228>],
    [null, <thermalfoundation:material:164>, null],
    [<thermalfoundation:material:228>, null, <thermalfoundation:material:228>]
]);

// Армированная пластина на болтах: Константан
recipes.addShaped("nexus_exp_comp_reinf_plate_constantan", <thermalfoundation:material:356>, [
    [<thermalfoundation:material:228>, null, <thermalfoundation:material:228>],
    [null, <thermalfoundation:material:356>, null],
    [<thermalfoundation:material:228>, null, <thermalfoundation:material:228>]
]);

// Разборка шестерни на пластины молотом: Константан
recipes.addShaped("nexus_exp_comp_salvage_gear_constantan", <thermalfoundation:material:356> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:292>]
]);

// Расковка сжатой бронеплиты молотом: Константан
recipes.addShaped("nexus_exp_comp_salvage_dense_constantan", <thermalfoundation:material:356> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:356>]
]);

// Переработка проводки в самородки: Константан
recipes.addShaped("nexus_exp_comp_salvage_wire_constantan", <thermalfoundation:material:228> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:31>]
]);

// Перерубка стержня на самородки: Константан
recipes.addShaped("nexus_exp_comp_salvage_rod_constantan", <thermalfoundation:material:228> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:31>]
]);

// Ковка пластины: Сигналиум
recipes.addShaped("nexus_exp_comp_plate_signalum", <thermalfoundation:material:357>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:165>, <thermalfoundation:material:165>, null],
    [null, null, null]
]);

// Сборка шестерни: Сигналиум
recipes.remove(<thermalfoundation:material:293>);
recipes.addShaped("nexus_exp_comp_gear_signalum", <thermalfoundation:material:293>, [
    [null, <thermalfoundation:material:357>, null],
    [<thermalfoundation:material:357>, <immersiveengineering:material:32>, <thermalfoundation:material:357>],
    [null, <thermalfoundation:material:357>, null]
]);

// Выточка стержня: Сигналиум
recipes.addShaped("nexus_exp_comp_rod_signalum", <immersiveengineering:material:32> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:165>, null],
    [<thermalfoundation:material:165>, null]
]);

// Сжатая бронеплита: Сигналиум
recipes.addShaped("nexus_exp_comp_dense_signalum", <thermalfoundation:material:357> * 1, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:357>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:357>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:357>, <thermalfoundation:material:357>]
]);

// Нарезка проводки: Сигналиум
recipes.addShaped("nexus_exp_comp_wire_signalum", <immersiveengineering:material:32> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:357>]
]);

// Разделение слитка на самородки: Сигналиум
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_signalum", <thermalfoundation:material:229> * 9, [<thermalfoundation:material:165>]);

// Компактизация самородков в слиток: Сигналиум
recipes.addShaped("nexus_exp_comp_nug_to_ingot_signalum", <thermalfoundation:material:165>, [
    [<thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:229>],
    [<thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:229>],
    [<thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:229>]
]);

// Блок металла: Сигналиум
recipes.addShaped("nexus_exp_comp_ingot_to_blk_signalum", <thermalfoundation:storage_alloy:5>, [
    [<thermalfoundation:material:165>, <thermalfoundation:material:165>, <thermalfoundation:material:165>],
    [<thermalfoundation:material:165>, <thermalfoundation:material:165>, <thermalfoundation:material:165>],
    [<thermalfoundation:material:165>, <thermalfoundation:material:165>, <thermalfoundation:material:165>]
]);

// Распил блока на слитки: Сигналиум
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_signalum", <thermalfoundation:material:165> * 9, [<thermalfoundation:storage_alloy:5>]);

// Ручное измельчение слитка в пыль молотом: Сигналиум
recipes.addShaped("nexus_exp_comp_dust_hammer_signalum", <thermalfoundation:material:101>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:165>]
]);

// Изолированный провод: Сигналиум
recipes.addShaped("nexus_exp_comp_ins_wire_signalum", <immersiveengineering:material:32> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:32>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Сигналиум
recipes.addShaped("nexus_exp_comp_rotor_signalum", <thermalfoundation:material:357> * 2, [
    [null, <thermalfoundation:material:357>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <immersiveengineering:material:32>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:357>, null]
]);

// Тяжелый конструкционный стержень: Сигналиум
recipes.addShaped("nexus_exp_comp_heavy_rod_signalum", <immersiveengineering:material:32> * 3, [
    [<immersiveengineering:material:32>, <thermalfoundation:material:357>, <immersiveengineering:material:32>]
]);

// Металлическое уплотнительное кольцо: Сигналиум
recipes.addShaped("nexus_exp_comp_ring_signalum", <thermalfoundation:material:229> * 4, [
    [null, <thermalfoundation:material:229>, null],
    [<thermalfoundation:material:229>, null, <thermalfoundation:material:229>],
    [null, <thermalfoundation:material:229>, null]
]);

// Решетка из прутьев: Сигналиум
recipes.addShaped("nexus_exp_comp_bars_signalum", <immersiveengineering:material:32> * 8, [
    [<immersiveengineering:material:32>, <immersiveengineering:material:32>, <immersiveengineering:material:32>],
    [<immersiveengineering:material:32>, <immersiveengineering:material:32>, <immersiveengineering:material:32>]
]);

// Звенья цепи: Сигналиум
recipes.addShaped("nexus_exp_comp_chain_signalum", <thermalfoundation:material:229> * 3, [
    [<thermalfoundation:material:229>],
    [<immersiveengineering:material:32>],
    [<thermalfoundation:material:229>]
]);

// Тонкая фольга: Сигналиум
recipes.addShaped("nexus_exp_comp_foil_signalum", <thermalfoundation:material:229> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:32>]
]);

// Малая шестерня: Сигналиум
recipes.addShaped("nexus_exp_comp_small_gear_signalum", <thermalfoundation:material:293>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:229>],
    [<thermalfoundation:material:229>, <thermalfoundation:material:357>]
]);

// Двойной кованый слиток: Сигналиум
recipes.addShaped("nexus_exp_comp_double_ingot_signalum", <thermalfoundation:material:357> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:165>],
    [<thermalfoundation:material:165>]
]);

// Ручное дробление руды молотом: Сигналиум
recipes.addShaped("nexus_exp_comp_crushed_signalum", <thermalfoundation:material:101> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage_alloy:5>]
]);

// Болт крепежный: Сигналиум
recipes.addShaped("nexus_exp_comp_bolt_signalum", <thermalfoundation:material:229> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:32>]
]);

// Винт резьбовой: Сигналиум
recipes.addShaped("nexus_exp_comp_screw_signalum", <thermalfoundation:material:229> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:229>]
]);

// Тяжелый уплотненный слиток: Сигналиум
recipes.addShaped("nexus_exp_comp_heavy_ingot_signalum", <thermalfoundation:material:357>, [
    [<thermalfoundation:material:229>, null, <thermalfoundation:material:229>],
    [null, <thermalfoundation:material:165>, null],
    [<thermalfoundation:material:229>, null, <thermalfoundation:material:229>]
]);

// Армированная пластина на болтах: Сигналиум
recipes.addShaped("nexus_exp_comp_reinf_plate_signalum", <thermalfoundation:material:357>, [
    [<thermalfoundation:material:229>, null, <thermalfoundation:material:229>],
    [null, <thermalfoundation:material:357>, null],
    [<thermalfoundation:material:229>, null, <thermalfoundation:material:229>]
]);

// Разборка шестерни на пластины молотом: Сигналиум
recipes.addShaped("nexus_exp_comp_salvage_gear_signalum", <thermalfoundation:material:357> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:293>]
]);

// Расковка сжатой бронеплиты молотом: Сигналиум
recipes.addShaped("nexus_exp_comp_salvage_dense_signalum", <thermalfoundation:material:357> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:357>]
]);

// Переработка проводки в самородки: Сигналиум
recipes.addShaped("nexus_exp_comp_salvage_wire_signalum", <thermalfoundation:material:229> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:32>]
]);

// Перерубка стержня на самородки: Сигналиум
recipes.addShaped("nexus_exp_comp_salvage_rod_signalum", <thermalfoundation:material:229> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:32>]
]);

// Ковка пластины: Люмиум
recipes.addShaped("nexus_exp_comp_plate_lumium", <thermalfoundation:material:358>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:166>, <thermalfoundation:material:166>, null],
    [null, null, null]
]);

// Сборка шестерни: Люмиум
recipes.remove(<thermalfoundation:material:294>);
recipes.addShaped("nexus_exp_comp_gear_lumium", <thermalfoundation:material:294>, [
    [null, <thermalfoundation:material:358>, null],
    [<thermalfoundation:material:358>, <immersiveengineering:material:33>, <thermalfoundation:material:358>],
    [null, <thermalfoundation:material:358>, null]
]);

// Выточка стержня: Люмиум
recipes.addShaped("nexus_exp_comp_rod_lumium", <immersiveengineering:material:33> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:166>, null],
    [<thermalfoundation:material:166>, null]
]);

// Сжатая бронеплита: Люмиум
recipes.addShaped("nexus_exp_comp_dense_lumium", <thermalfoundation:material:358> * 1, [
    [<thermalfoundation:material:358>, <thermalfoundation:material:358>, <thermalfoundation:material:358>],
    [<thermalfoundation:material:358>, <thermalfoundation:material:358>, <thermalfoundation:material:358>],
    [<thermalfoundation:material:358>, <thermalfoundation:material:358>, <thermalfoundation:material:358>]
]);

// Нарезка проводки: Люмиум
recipes.addShaped("nexus_exp_comp_wire_lumium", <immersiveengineering:material:33> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:358>]
]);

// Разделение слитка на самородки: Люмиум
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_lumium", <thermalfoundation:material:230> * 9, [<thermalfoundation:material:166>]);

// Компактизация самородков в слиток: Люмиум
recipes.addShaped("nexus_exp_comp_nug_to_ingot_lumium", <thermalfoundation:material:166>, [
    [<thermalfoundation:material:230>, <thermalfoundation:material:230>, <thermalfoundation:material:230>],
    [<thermalfoundation:material:230>, <thermalfoundation:material:230>, <thermalfoundation:material:230>],
    [<thermalfoundation:material:230>, <thermalfoundation:material:230>, <thermalfoundation:material:230>]
]);

// Блок металла: Люмиум
recipes.addShaped("nexus_exp_comp_ingot_to_blk_lumium", <thermalfoundation:storage_alloy:6>, [
    [<thermalfoundation:material:166>, <thermalfoundation:material:166>, <thermalfoundation:material:166>],
    [<thermalfoundation:material:166>, <thermalfoundation:material:166>, <thermalfoundation:material:166>],
    [<thermalfoundation:material:166>, <thermalfoundation:material:166>, <thermalfoundation:material:166>]
]);

// Распил блока на слитки: Люмиум
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_lumium", <thermalfoundation:material:166> * 9, [<thermalfoundation:storage_alloy:6>]);

// Ручное измельчение слитка в пыль молотом: Люмиум
recipes.addShaped("nexus_exp_comp_dust_hammer_lumium", <thermalfoundation:material:102>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:166>]
]);

// Изолированный провод: Люмиум
recipes.addShaped("nexus_exp_comp_ins_wire_lumium", <immersiveengineering:material:33> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:33>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Люмиум
recipes.addShaped("nexus_exp_comp_rotor_lumium", <thermalfoundation:material:358> * 2, [
    [null, <thermalfoundation:material:358>, <thermalfoundation:material:358>],
    [<thermalfoundation:material:358>, <immersiveengineering:material:33>, <thermalfoundation:material:358>],
    [<thermalfoundation:material:358>, <thermalfoundation:material:358>, null]
]);

// Тяжелый конструкционный стержень: Люмиум
recipes.addShaped("nexus_exp_comp_heavy_rod_lumium", <immersiveengineering:material:33> * 3, [
    [<immersiveengineering:material:33>, <thermalfoundation:material:358>, <immersiveengineering:material:33>]
]);

// Металлическое уплотнительное кольцо: Люмиум
recipes.addShaped("nexus_exp_comp_ring_lumium", <thermalfoundation:material:230> * 4, [
    [null, <thermalfoundation:material:230>, null],
    [<thermalfoundation:material:230>, null, <thermalfoundation:material:230>],
    [null, <thermalfoundation:material:230>, null]
]);

// Решетка из прутьев: Люмиум
recipes.addShaped("nexus_exp_comp_bars_lumium", <immersiveengineering:material:33> * 8, [
    [<immersiveengineering:material:33>, <immersiveengineering:material:33>, <immersiveengineering:material:33>],
    [<immersiveengineering:material:33>, <immersiveengineering:material:33>, <immersiveengineering:material:33>]
]);

// Звенья цепи: Люмиум
recipes.addShaped("nexus_exp_comp_chain_lumium", <thermalfoundation:material:230> * 3, [
    [<thermalfoundation:material:230>],
    [<immersiveengineering:material:33>],
    [<thermalfoundation:material:230>]
]);

// Тонкая фольга: Люмиум
recipes.addShaped("nexus_exp_comp_foil_lumium", <thermalfoundation:material:230> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:33>]
]);

// Малая шестерня: Люмиум
recipes.addShaped("nexus_exp_comp_small_gear_lumium", <thermalfoundation:material:294>, [
    [<thermalfoundation:material:358>, <thermalfoundation:material:230>],
    [<thermalfoundation:material:230>, <thermalfoundation:material:358>]
]);

// Двойной кованый слиток: Люмиум
recipes.addShaped("nexus_exp_comp_double_ingot_lumium", <thermalfoundation:material:358> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:166>],
    [<thermalfoundation:material:166>]
]);

// Ручное дробление руды молотом: Люмиум
recipes.addShaped("nexus_exp_comp_crushed_lumium", <thermalfoundation:material:102> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage_alloy:6>]
]);

// Болт крепежный: Люмиум
recipes.addShaped("nexus_exp_comp_bolt_lumium", <thermalfoundation:material:230> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:33>]
]);

// Винт резьбовой: Люмиум
recipes.addShaped("nexus_exp_comp_screw_lumium", <thermalfoundation:material:230> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:230>]
]);

// Тяжелый уплотненный слиток: Люмиум
recipes.addShaped("nexus_exp_comp_heavy_ingot_lumium", <thermalfoundation:material:358>, [
    [<thermalfoundation:material:230>, null, <thermalfoundation:material:230>],
    [null, <thermalfoundation:material:166>, null],
    [<thermalfoundation:material:230>, null, <thermalfoundation:material:230>]
]);

// Армированная пластина на болтах: Люмиум
recipes.addShaped("nexus_exp_comp_reinf_plate_lumium", <thermalfoundation:material:358>, [
    [<thermalfoundation:material:230>, null, <thermalfoundation:material:230>],
    [null, <thermalfoundation:material:358>, null],
    [<thermalfoundation:material:230>, null, <thermalfoundation:material:230>]
]);

// Разборка шестерни на пластины молотом: Люмиум
recipes.addShaped("nexus_exp_comp_salvage_gear_lumium", <thermalfoundation:material:358> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:294>]
]);

// Расковка сжатой бронеплиты молотом: Люмиум
recipes.addShaped("nexus_exp_comp_salvage_dense_lumium", <thermalfoundation:material:358> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:358>]
]);

// Переработка проводки в самородки: Люмиум
recipes.addShaped("nexus_exp_comp_salvage_wire_lumium", <thermalfoundation:material:230> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:33>]
]);

// Перерубка стержня на самородки: Люмиум
recipes.addShaped("nexus_exp_comp_salvage_rod_lumium", <thermalfoundation:material:230> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:33>]
]);

// Ковка пластины: Эндериум
recipes.addShaped("nexus_exp_comp_plate_enderium", <thermalfoundation:material:359>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thermalfoundation:material:167>, <thermalfoundation:material:167>, null],
    [null, null, null]
]);

// Сборка шестерни: Эндериум
recipes.remove(<thermalfoundation:material:295>);
recipes.addShaped("nexus_exp_comp_gear_enderium", <thermalfoundation:material:295>, [
    [null, <thermalfoundation:material:359>, null],
    [<thermalfoundation:material:359>, <immersiveengineering:material:34>, <thermalfoundation:material:359>],
    [null, <thermalfoundation:material:359>, null]
]);

// Выточка стержня: Эндериум
recipes.addShaped("nexus_exp_comp_rod_enderium", <immersiveengineering:material:34> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thermalfoundation:material:167>, null],
    [<thermalfoundation:material:167>, null]
]);

// Сжатая бронеплита: Эндериум
recipes.addShaped("nexus_exp_comp_dense_enderium", <thermalfoundation:material:359> * 1, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>]
]);

// Нарезка проводки: Эндериум
recipes.addShaped("nexus_exp_comp_wire_enderium", <immersiveengineering:material:34> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:359>]
]);

// Разделение слитка на самородки: Эндериум
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_enderium", <thermalfoundation:material:231> * 9, [<thermalfoundation:material:167>]);

// Компактизация самородков в слиток: Эндериум
recipes.addShaped("nexus_exp_comp_nug_to_ingot_enderium", <thermalfoundation:material:167>, [
    [<thermalfoundation:material:231>, <thermalfoundation:material:231>, <thermalfoundation:material:231>],
    [<thermalfoundation:material:231>, <thermalfoundation:material:231>, <thermalfoundation:material:231>],
    [<thermalfoundation:material:231>, <thermalfoundation:material:231>, <thermalfoundation:material:231>]
]);

// Блок металла: Эндериум
recipes.addShaped("nexus_exp_comp_ingot_to_blk_enderium", <thermalfoundation:storage_alloy:7>, [
    [<thermalfoundation:material:167>, <thermalfoundation:material:167>, <thermalfoundation:material:167>],
    [<thermalfoundation:material:167>, <thermalfoundation:material:167>, <thermalfoundation:material:167>],
    [<thermalfoundation:material:167>, <thermalfoundation:material:167>, <thermalfoundation:material:167>]
]);

// Распил блока на слитки: Эндериум
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_enderium", <thermalfoundation:material:167> * 9, [<thermalfoundation:storage_alloy:7>]);

// Ручное измельчение слитка в пыль молотом: Эндериум
recipes.addShaped("nexus_exp_comp_dust_hammer_enderium", <thermalfoundation:material:103>, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:167>]
]);

// Изолированный провод: Эндериум
recipes.addShaped("nexus_exp_comp_ins_wire_enderium", <immersiveengineering:material:34> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:34>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Эндериум
recipes.addShaped("nexus_exp_comp_rotor_enderium", <thermalfoundation:material:359> * 2, [
    [null, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <immersiveengineering:material:34>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, null]
]);

// Тяжелый конструкционный стержень: Эндериум
recipes.addShaped("nexus_exp_comp_heavy_rod_enderium", <immersiveengineering:material:34> * 3, [
    [<immersiveengineering:material:34>, <thermalfoundation:material:359>, <immersiveengineering:material:34>]
]);

// Металлическое уплотнительное кольцо: Эндериум
recipes.addShaped("nexus_exp_comp_ring_enderium", <thermalfoundation:material:231> * 4, [
    [null, <thermalfoundation:material:231>, null],
    [<thermalfoundation:material:231>, null, <thermalfoundation:material:231>],
    [null, <thermalfoundation:material:231>, null]
]);

// Решетка из прутьев: Эндериум
recipes.addShaped("nexus_exp_comp_bars_enderium", <immersiveengineering:material:34> * 8, [
    [<immersiveengineering:material:34>, <immersiveengineering:material:34>, <immersiveengineering:material:34>],
    [<immersiveengineering:material:34>, <immersiveengineering:material:34>, <immersiveengineering:material:34>]
]);

// Звенья цепи: Эндериум
recipes.addShaped("nexus_exp_comp_chain_enderium", <thermalfoundation:material:231> * 3, [
    [<thermalfoundation:material:231>],
    [<immersiveengineering:material:34>],
    [<thermalfoundation:material:231>]
]);

// Тонкая фольга: Эндериум
recipes.addShaped("nexus_exp_comp_foil_enderium", <thermalfoundation:material:231> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:34>]
]);

// Малая шестерня: Эндериум
recipes.addShaped("nexus_exp_comp_small_gear_enderium", <thermalfoundation:material:295>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:231>],
    [<thermalfoundation:material:231>, <thermalfoundation:material:359>]
]);

// Двойной кованый слиток: Эндериум
recipes.addShaped("nexus_exp_comp_double_ingot_enderium", <thermalfoundation:material:359> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:167>],
    [<thermalfoundation:material:167>]
]);

// Ручное дробление руды молотом: Эндериум
recipes.addShaped("nexus_exp_comp_crushed_enderium", <thermalfoundation:material:103> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:storage_alloy:7>]
]);

// Болт крепежный: Эндериум
recipes.addShaped("nexus_exp_comp_bolt_enderium", <thermalfoundation:material:231> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:34>]
]);

// Винт резьбовой: Эндериум
recipes.addShaped("nexus_exp_comp_screw_enderium", <thermalfoundation:material:231> * 2, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:231>]
]);

// Тяжелый уплотненный слиток: Эндериум
recipes.addShaped("nexus_exp_comp_heavy_ingot_enderium", <thermalfoundation:material:359>, [
    [<thermalfoundation:material:231>, null, <thermalfoundation:material:231>],
    [null, <thermalfoundation:material:167>, null],
    [<thermalfoundation:material:231>, null, <thermalfoundation:material:231>]
]);

// Армированная пластина на болтах: Эндериум
recipes.addShaped("nexus_exp_comp_reinf_plate_enderium", <thermalfoundation:material:359>, [
    [<thermalfoundation:material:231>, null, <thermalfoundation:material:231>],
    [null, <thermalfoundation:material:359>, null],
    [<thermalfoundation:material:231>, null, <thermalfoundation:material:231>]
]);

// Разборка шестерни на пластины молотом: Эндериум
recipes.addShaped("nexus_exp_comp_salvage_gear_enderium", <thermalfoundation:material:359> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:295>]
]);

// Расковка сжатой бронеплиты молотом: Эндериум
recipes.addShaped("nexus_exp_comp_salvage_dense_enderium", <thermalfoundation:material:359> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:359>]
]);

// Переработка проводки в самородки: Эндериум
recipes.addShaped("nexus_exp_comp_salvage_wire_enderium", <thermalfoundation:material:231> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:34>]
]);

// Перерубка стержня на самородки: Эндериум
recipes.addShaped("nexus_exp_comp_salvage_rod_enderium", <thermalfoundation:material:231> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:34>]
]);

// Ковка пластины: Осмий
recipes.addShaped("nexus_exp_comp_plate_osmium", <mekanism:plate:1>, [
    [<immersiveengineering:tool:0>, null, null],
    [<mekanism:ingot:1>, <mekanism:ingot:1>, null],
    [null, null, null]
]);

// Сборка шестерни: Осмий
recipes.remove(<mekanism:gear:1>);
recipes.addShaped("nexus_exp_comp_gear_osmium", <mekanism:gear:1>, [
    [null, <mekanism:plate:1>, null],
    [<mekanism:plate:1>, <immersiveengineering:material:1>, <mekanism:plate:1>],
    [null, <mekanism:plate:1>, null]
]);

// Выточка стержня: Осмий
recipes.addShaped("nexus_exp_comp_rod_osmium", <immersiveengineering:material:1> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<mekanism:ingot:1>, null],
    [<mekanism:ingot:1>, null]
]);

// Сжатая бронеплита: Осмий
recipes.addShaped("nexus_exp_comp_dense_osmium", <mekanism:plate:1> * 1, [
    [<mekanism:plate:1>, <mekanism:plate:1>, <mekanism:plate:1>],
    [<mekanism:plate:1>, <mekanism:plate:1>, <mekanism:plate:1>],
    [<mekanism:plate:1>, <mekanism:plate:1>, <mekanism:plate:1>]
]);

// Нарезка проводки: Осмий
recipes.addShaped("nexus_exp_comp_wire_osmium", <immersiveengineering:material:1> * 4, [
    [<minecraft:shears>, <mekanism:plate:1>]
]);

// Разделение слитка на самородки: Осмий
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_osmium", <mekanism:nugget:1> * 9, [<mekanism:ingot:1>]);

// Компактизация самородков в слиток: Осмий
recipes.addShaped("nexus_exp_comp_nug_to_ingot_osmium", <mekanism:ingot:1>, [
    [<mekanism:nugget:1>, <mekanism:nugget:1>, <mekanism:nugget:1>],
    [<mekanism:nugget:1>, <mekanism:nugget:1>, <mekanism:nugget:1>],
    [<mekanism:nugget:1>, <mekanism:nugget:1>, <mekanism:nugget:1>]
]);

// Блок металла: Осмий
recipes.addShaped("nexus_exp_comp_ingot_to_blk_osmium", <mekanism:basicblock:0>, [
    [<mekanism:ingot:1>, <mekanism:ingot:1>, <mekanism:ingot:1>],
    [<mekanism:ingot:1>, <mekanism:ingot:1>, <mekanism:ingot:1>],
    [<mekanism:ingot:1>, <mekanism:ingot:1>, <mekanism:ingot:1>]
]);

// Распил блока на слитки: Осмий
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_osmium", <mekanism:ingot:1> * 9, [<mekanism:basicblock:0>]);

// Ручное измельчение слитка в пыль молотом: Осмий
recipes.addShaped("nexus_exp_comp_dust_hammer_osmium", <mekanism:dust:2>, [
    [<immersiveengineering:tool:0>],
    [<mekanism:ingot:1>]
]);

// Изолированный провод: Осмий
recipes.addShaped("nexus_exp_comp_ins_wire_osmium", <immersiveengineering:material:1> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:1>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Осмий
recipes.addShaped("nexus_exp_comp_rotor_osmium", <mekanism:plate:1> * 2, [
    [null, <mekanism:plate:1>, <mekanism:plate:1>],
    [<mekanism:plate:1>, <immersiveengineering:material:1>, <mekanism:plate:1>],
    [<mekanism:plate:1>, <mekanism:plate:1>, null]
]);

// Тяжелый конструкционный стержень: Осмий
recipes.addShaped("nexus_exp_comp_heavy_rod_osmium", <immersiveengineering:material:1> * 3, [
    [<immersiveengineering:material:1>, <mekanism:plate:1>, <immersiveengineering:material:1>]
]);

// Металлическое уплотнительное кольцо: Осмий
recipes.addShaped("nexus_exp_comp_ring_osmium", <mekanism:nugget:1> * 4, [
    [null, <mekanism:nugget:1>, null],
    [<mekanism:nugget:1>, null, <mekanism:nugget:1>],
    [null, <mekanism:nugget:1>, null]
]);

// Решетка из прутьев: Осмий
recipes.addShaped("nexus_exp_comp_bars_osmium", <immersiveengineering:material:1> * 8, [
    [<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>],
    [<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>]
]);

// Звенья цепи: Осмий
recipes.addShaped("nexus_exp_comp_chain_osmium", <mekanism:nugget:1> * 3, [
    [<mekanism:nugget:1>],
    [<immersiveengineering:material:1>],
    [<mekanism:nugget:1>]
]);

// Тонкая фольга: Осмий
recipes.addShaped("nexus_exp_comp_foil_osmium", <mekanism:nugget:1> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:1>]
]);

// Малая шестерня: Осмий
recipes.addShaped("nexus_exp_comp_small_gear_osmium", <mekanism:gear:1>, [
    [<mekanism:plate:1>, <mekanism:nugget:1>],
    [<mekanism:nugget:1>, <mekanism:plate:1>]
]);

// Двойной кованый слиток: Осмий
recipes.addShaped("nexus_exp_comp_double_ingot_osmium", <mekanism:plate:1> * 2, [
    [<immersiveengineering:tool:0>],
    [<mekanism:ingot:1>],
    [<mekanism:ingot:1>]
]);

// Ручное дробление руды молотом: Осмий
recipes.addShaped("nexus_exp_comp_crushed_osmium", <mekanism:dust:2> * 2, [
    [<immersiveengineering:tool:0>],
    [<mekanism:basicblock:0>]
]);

// Болт крепежный: Осмий
recipes.addShaped("nexus_exp_comp_bolt_osmium", <mekanism:nugget:1> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:1>]
]);

// Винт резьбовой: Осмий
recipes.addShaped("nexus_exp_comp_screw_osmium", <mekanism:nugget:1> * 2, [
    [<immersiveengineering:tool:0>],
    [<mekanism:nugget:1>]
]);

// Тяжелый уплотненный слиток: Осмий
recipes.addShaped("nexus_exp_comp_heavy_ingot_osmium", <mekanism:plate:1>, [
    [<mekanism:nugget:1>, null, <mekanism:nugget:1>],
    [null, <mekanism:ingot:1>, null],
    [<mekanism:nugget:1>, null, <mekanism:nugget:1>]
]);

// Армированная пластина на болтах: Осмий
recipes.addShaped("nexus_exp_comp_reinf_plate_osmium", <mekanism:plate:1>, [
    [<mekanism:nugget:1>, null, <mekanism:nugget:1>],
    [null, <mekanism:plate:1>, null],
    [<mekanism:nugget:1>, null, <mekanism:nugget:1>]
]);

// Разборка шестерни на пластины молотом: Осмий
recipes.addShaped("nexus_exp_comp_salvage_gear_osmium", <mekanism:plate:1> * 4, [
    [<immersiveengineering:tool:0>],
    [<mekanism:gear:1>]
]);

// Расковка сжатой бронеплиты молотом: Осмий
recipes.addShaped("nexus_exp_comp_salvage_dense_osmium", <mekanism:plate:1> * 9, [
    [<immersiveengineering:tool:0>, <mekanism:plate:1>]
]);

// Переработка проводки в самородки: Осмий
recipes.addShaped("nexus_exp_comp_salvage_wire_osmium", <mekanism:nugget:1> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:1>]
]);

// Перерубка стержня на самородки: Осмий
recipes.addShaped("nexus_exp_comp_salvage_rod_osmium", <mekanism:nugget:1> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:1>]
]);

// Ковка пластины: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_plate_refined_obsidian", <mekanism:plate:0>, [
    [<immersiveengineering:tool:0>, null, null],
    [<mekanism:ingot:0>, <mekanism:ingot:0>, null],
    [null, null, null]
]);

// Сборка шестерни: Очищенный обсидиан
recipes.remove(<mekanism:gear:0>);
recipes.addShaped("nexus_exp_comp_gear_refined_obsidian", <mekanism:gear:0>, [
    [null, <mekanism:plate:0>, null],
    [<mekanism:plate:0>, <immersiveengineering:material:3>, <mekanism:plate:0>],
    [null, <mekanism:plate:0>, null]
]);

// Выточка стержня: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_rod_refined_obsidian", <immersiveengineering:material:3> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<mekanism:ingot:0>, null],
    [<mekanism:ingot:0>, null]
]);

// Сжатая бронеплита: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_dense_refined_obsidian", <mekanism:plate:0> * 1, [
    [<mekanism:plate:0>, <mekanism:plate:0>, <mekanism:plate:0>],
    [<mekanism:plate:0>, <mekanism:plate:0>, <mekanism:plate:0>],
    [<mekanism:plate:0>, <mekanism:plate:0>, <mekanism:plate:0>]
]);

// Нарезка проводки: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_wire_refined_obsidian", <immersiveengineering:material:3> * 4, [
    [<minecraft:shears>, <mekanism:plate:0>]
]);

// Разделение слитка на самородки: Очищенный обсидиан
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_refined_obsidian", <mekanism:nugget:0> * 9, [<mekanism:ingot:0>]);

// Компактизация самородков в слиток: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_nug_to_ingot_refined_obsidian", <mekanism:ingot:0>, [
    [<mekanism:nugget:0>, <mekanism:nugget:0>, <mekanism:nugget:0>],
    [<mekanism:nugget:0>, <mekanism:nugget:0>, <mekanism:nugget:0>],
    [<mekanism:nugget:0>, <mekanism:nugget:0>, <mekanism:nugget:0>]
]);

// Блок металла: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_ingot_to_blk_refined_obsidian", <mekanism:basicblock:2>, [
    [<mekanism:ingot:0>, <mekanism:ingot:0>, <mekanism:ingot:0>],
    [<mekanism:ingot:0>, <mekanism:ingot:0>, <mekanism:ingot:0>],
    [<mekanism:ingot:0>, <mekanism:ingot:0>, <mekanism:ingot:0>]
]);

// Распил блока на слитки: Очищенный обсидиан
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_refined_obsidian", <mekanism:ingot:0> * 9, [<mekanism:basicblock:2>]);

// Ручное измельчение слитка в пыль молотом: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_dust_hammer_refined_obsidian", <mekanism:otherdust:5>, [
    [<immersiveengineering:tool:0>],
    [<mekanism:ingot:0>]
]);

// Изолированный провод: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_ins_wire_refined_obsidian", <immersiveengineering:material:3> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:3>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_rotor_refined_obsidian", <mekanism:plate:0> * 2, [
    [null, <mekanism:plate:0>, <mekanism:plate:0>],
    [<mekanism:plate:0>, <immersiveengineering:material:3>, <mekanism:plate:0>],
    [<mekanism:plate:0>, <mekanism:plate:0>, null]
]);

// Тяжелый конструкционный стержень: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_heavy_rod_refined_obsidian", <immersiveengineering:material:3> * 3, [
    [<immersiveengineering:material:3>, <mekanism:plate:0>, <immersiveengineering:material:3>]
]);

// Металлическое уплотнительное кольцо: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_ring_refined_obsidian", <mekanism:nugget:0> * 4, [
    [null, <mekanism:nugget:0>, null],
    [<mekanism:nugget:0>, null, <mekanism:nugget:0>],
    [null, <mekanism:nugget:0>, null]
]);

// Решетка из прутьев: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_bars_refined_obsidian", <immersiveengineering:material:3> * 8, [
    [<immersiveengineering:material:3>, <immersiveengineering:material:3>, <immersiveengineering:material:3>],
    [<immersiveengineering:material:3>, <immersiveengineering:material:3>, <immersiveengineering:material:3>]
]);

// Звенья цепи: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_chain_refined_obsidian", <mekanism:nugget:0> * 3, [
    [<mekanism:nugget:0>],
    [<immersiveengineering:material:3>],
    [<mekanism:nugget:0>]
]);

// Тонкая фольга: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_foil_refined_obsidian", <mekanism:nugget:0> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:3>]
]);

// Малая шестерня: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_small_gear_refined_obsidian", <mekanism:gear:0>, [
    [<mekanism:plate:0>, <mekanism:nugget:0>],
    [<mekanism:nugget:0>, <mekanism:plate:0>]
]);

// Двойной кованый слиток: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_double_ingot_refined_obsidian", <mekanism:plate:0> * 2, [
    [<immersiveengineering:tool:0>],
    [<mekanism:ingot:0>],
    [<mekanism:ingot:0>]
]);

// Ручное дробление руды молотом: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_crushed_refined_obsidian", <mekanism:otherdust:5> * 2, [
    [<immersiveengineering:tool:0>],
    [<mekanism:basicblock:2>]
]);

// Болт крепежный: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_bolt_refined_obsidian", <mekanism:nugget:0> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:3>]
]);

// Винт резьбовой: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_screw_refined_obsidian", <mekanism:nugget:0> * 2, [
    [<immersiveengineering:tool:0>],
    [<mekanism:nugget:0>]
]);

// Тяжелый уплотненный слиток: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_heavy_ingot_refined_obsidian", <mekanism:plate:0>, [
    [<mekanism:nugget:0>, null, <mekanism:nugget:0>],
    [null, <mekanism:ingot:0>, null],
    [<mekanism:nugget:0>, null, <mekanism:nugget:0>]
]);

// Армированная пластина на болтах: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_reinf_plate_refined_obsidian", <mekanism:plate:0>, [
    [<mekanism:nugget:0>, null, <mekanism:nugget:0>],
    [null, <mekanism:plate:0>, null],
    [<mekanism:nugget:0>, null, <mekanism:nugget:0>]
]);

// Разборка шестерни на пластины молотом: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_salvage_gear_refined_obsidian", <mekanism:plate:0> * 4, [
    [<immersiveengineering:tool:0>],
    [<mekanism:gear:0>]
]);

// Расковка сжатой бронеплиты молотом: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_salvage_dense_refined_obsidian", <mekanism:plate:0> * 9, [
    [<immersiveengineering:tool:0>, <mekanism:plate:0>]
]);

// Переработка проводки в самородки: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_salvage_wire_refined_obsidian", <mekanism:nugget:0> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:3>]
]);

// Перерубка стержня на самородки: Очищенный обсидиан
recipes.addShaped("nexus_exp_comp_salvage_rod_refined_obsidian", <mekanism:nugget:0> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:3>]
]);

// Ковка пластины: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_plate_refined_glowstone", <mekanism:plate:3>, [
    [<immersiveengineering:tool:0>, null, null],
    [<mekanism:ingot:3>, <mekanism:ingot:3>, null],
    [null, null, null]
]);

// Сборка шестерни: Очищенный светокамень
recipes.remove(<mekanism:gear:3>);
recipes.addShaped("nexus_exp_comp_gear_refined_glowstone", <mekanism:gear:3>, [
    [null, <mekanism:plate:3>, null],
    [<mekanism:plate:3>, <immersiveengineering:material:2>, <mekanism:plate:3>],
    [null, <mekanism:plate:3>, null]
]);

// Выточка стержня: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_rod_refined_glowstone", <immersiveengineering:material:2> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<mekanism:ingot:3>, null],
    [<mekanism:ingot:3>, null]
]);

// Сжатая бронеплита: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_dense_refined_glowstone", <mekanism:plate:3> * 1, [
    [<mekanism:plate:3>, <mekanism:plate:3>, <mekanism:plate:3>],
    [<mekanism:plate:3>, <mekanism:plate:3>, <mekanism:plate:3>],
    [<mekanism:plate:3>, <mekanism:plate:3>, <mekanism:plate:3>]
]);

// Нарезка проводки: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_wire_refined_glowstone", <immersiveengineering:material:2> * 4, [
    [<minecraft:shears>, <mekanism:plate:3>]
]);

// Разделение слитка на самородки: Очищенный светокамень
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_refined_glowstone", <mekanism:nugget:3> * 9, [<mekanism:ingot:3>]);

// Компактизация самородков в слиток: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_nug_to_ingot_refined_glowstone", <mekanism:ingot:3>, [
    [<mekanism:nugget:3>, <mekanism:nugget:3>, <mekanism:nugget:3>],
    [<mekanism:nugget:3>, <mekanism:nugget:3>, <mekanism:nugget:3>],
    [<mekanism:nugget:3>, <mekanism:nugget:3>, <mekanism:nugget:3>]
]);

// Блок металла: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_ingot_to_blk_refined_glowstone", <mekanism:basicblock:4>, [
    [<mekanism:ingot:3>, <mekanism:ingot:3>, <mekanism:ingot:3>],
    [<mekanism:ingot:3>, <mekanism:ingot:3>, <mekanism:ingot:3>],
    [<mekanism:ingot:3>, <mekanism:ingot:3>, <mekanism:ingot:3>]
]);

// Распил блока на слитки: Очищенный светокамень
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_refined_glowstone", <mekanism:ingot:3> * 9, [<mekanism:basicblock:4>]);

// Ручное измельчение слитка в пыль молотом: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_dust_hammer_refined_glowstone", <mekanism:otherdust:6>, [
    [<immersiveengineering:tool:0>],
    [<mekanism:ingot:3>]
]);

// Изолированный провод: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_ins_wire_refined_glowstone", <immersiveengineering:material:2> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:2>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_rotor_refined_glowstone", <mekanism:plate:3> * 2, [
    [null, <mekanism:plate:3>, <mekanism:plate:3>],
    [<mekanism:plate:3>, <immersiveengineering:material:2>, <mekanism:plate:3>],
    [<mekanism:plate:3>, <mekanism:plate:3>, null]
]);

// Тяжелый конструкционный стержень: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_heavy_rod_refined_glowstone", <immersiveengineering:material:2> * 3, [
    [<immersiveengineering:material:2>, <mekanism:plate:3>, <immersiveengineering:material:2>]
]);

// Металлическое уплотнительное кольцо: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_ring_refined_glowstone", <mekanism:nugget:3> * 4, [
    [null, <mekanism:nugget:3>, null],
    [<mekanism:nugget:3>, null, <mekanism:nugget:3>],
    [null, <mekanism:nugget:3>, null]
]);

// Решетка из прутьев: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_bars_refined_glowstone", <immersiveengineering:material:2> * 8, [
    [<immersiveengineering:material:2>, <immersiveengineering:material:2>, <immersiveengineering:material:2>],
    [<immersiveengineering:material:2>, <immersiveengineering:material:2>, <immersiveengineering:material:2>]
]);

// Звенья цепи: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_chain_refined_glowstone", <mekanism:nugget:3> * 3, [
    [<mekanism:nugget:3>],
    [<immersiveengineering:material:2>],
    [<mekanism:nugget:3>]
]);

// Тонкая фольга: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_foil_refined_glowstone", <mekanism:nugget:3> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:2>]
]);

// Малая шестерня: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_small_gear_refined_glowstone", <mekanism:gear:3>, [
    [<mekanism:plate:3>, <mekanism:nugget:3>],
    [<mekanism:nugget:3>, <mekanism:plate:3>]
]);

// Двойной кованый слиток: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_double_ingot_refined_glowstone", <mekanism:plate:3> * 2, [
    [<immersiveengineering:tool:0>],
    [<mekanism:ingot:3>],
    [<mekanism:ingot:3>]
]);

// Ручное дробление руды молотом: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_crushed_refined_glowstone", <mekanism:otherdust:6> * 2, [
    [<immersiveengineering:tool:0>],
    [<mekanism:basicblock:4>]
]);

// Болт крепежный: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_bolt_refined_glowstone", <mekanism:nugget:3> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:2>]
]);

// Винт резьбовой: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_screw_refined_glowstone", <mekanism:nugget:3> * 2, [
    [<immersiveengineering:tool:0>],
    [<mekanism:nugget:3>]
]);

// Тяжелый уплотненный слиток: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_heavy_ingot_refined_glowstone", <mekanism:plate:3>, [
    [<mekanism:nugget:3>, null, <mekanism:nugget:3>],
    [null, <mekanism:ingot:3>, null],
    [<mekanism:nugget:3>, null, <mekanism:nugget:3>]
]);

// Армированная пластина на болтах: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_reinf_plate_refined_glowstone", <mekanism:plate:3>, [
    [<mekanism:nugget:3>, null, <mekanism:nugget:3>],
    [null, <mekanism:plate:3>, null],
    [<mekanism:nugget:3>, null, <mekanism:nugget:3>]
]);

// Разборка шестерни на пластины молотом: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_salvage_gear_refined_glowstone", <mekanism:plate:3> * 4, [
    [<immersiveengineering:tool:0>],
    [<mekanism:gear:3>]
]);

// Расковка сжатой бронеплиты молотом: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_salvage_dense_refined_glowstone", <mekanism:plate:3> * 9, [
    [<immersiveengineering:tool:0>, <mekanism:plate:3>]
]);

// Переработка проводки в самородки: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_salvage_wire_refined_glowstone", <mekanism:nugget:3> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:2>]
]);

// Перерубка стержня на самородки: Очищенный светокамень
recipes.addShaped("nexus_exp_comp_salvage_rod_refined_glowstone", <mekanism:nugget:3> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:2>]
]);

// Ковка пластины: Драконий
recipes.addShaped("nexus_exp_comp_plate_draconium", <thermalfoundation:material:359>, [
    [<immersiveengineering:tool:0>, null, null],
    [<draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>, null],
    [null, null, null]
]);

// Сборка шестерни: Драконий
recipes.remove(<thermalfoundation:material:295>);
recipes.addShaped("nexus_exp_comp_gear_draconium", <thermalfoundation:material:295>, [
    [null, <thermalfoundation:material:359>, null],
    [<thermalfoundation:material:359>, <immersiveengineering:material:34>, <thermalfoundation:material:359>],
    [null, <thermalfoundation:material:359>, null]
]);

// Выточка стержня: Драконий
recipes.addShaped("nexus_exp_comp_rod_draconium", <immersiveengineering:material:34> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<draconicevolution:draconium_ingot>, null],
    [<draconicevolution:draconium_ingot>, null]
]);

// Сжатая бронеплита: Драконий
recipes.addShaped("nexus_exp_comp_dense_draconium", <thermalfoundation:material:359> * 1, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>]
]);

// Нарезка проводки: Драконий
recipes.addShaped("nexus_exp_comp_wire_draconium", <immersiveengineering:material:34> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:359>]
]);

// Разделение слитка на самородки: Драконий
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_draconium", <draconicevolution:nugget:0> * 9, [<draconicevolution:draconium_ingot>]);

// Компактизация самородков в слиток: Драконий
recipes.addShaped("nexus_exp_comp_nug_to_ingot_draconium", <draconicevolution:draconium_ingot>, [
    [<draconicevolution:nugget:0>, <draconicevolution:nugget:0>, <draconicevolution:nugget:0>],
    [<draconicevolution:nugget:0>, <draconicevolution:nugget:0>, <draconicevolution:nugget:0>],
    [<draconicevolution:nugget:0>, <draconicevolution:nugget:0>, <draconicevolution:nugget:0>]
]);

// Блок металла: Драконий
recipes.addShaped("nexus_exp_comp_ingot_to_blk_draconium", <draconicevolution:draconium_block>, [
    [<draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>],
    [<draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>],
    [<draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>]
]);

// Распил блока на слитки: Драконий
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_draconium", <draconicevolution:draconium_ingot> * 9, [<draconicevolution:draconium_block>]);

// Ручное измельчение слитка в пыль молотом: Драконий
recipes.addShaped("nexus_exp_comp_dust_hammer_draconium", <draconicevolution:draconium_dust>, [
    [<immersiveengineering:tool:0>],
    [<draconicevolution:draconium_ingot>]
]);

// Изолированный провод: Драконий
recipes.addShaped("nexus_exp_comp_ins_wire_draconium", <immersiveengineering:material:34> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:34>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Драконий
recipes.addShaped("nexus_exp_comp_rotor_draconium", <thermalfoundation:material:359> * 2, [
    [null, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <immersiveengineering:material:34>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, null]
]);

// Тяжелый конструкционный стержень: Драконий
recipes.addShaped("nexus_exp_comp_heavy_rod_draconium", <immersiveengineering:material:34> * 3, [
    [<immersiveengineering:material:34>, <thermalfoundation:material:359>, <immersiveengineering:material:34>]
]);

// Металлическое уплотнительное кольцо: Драконий
recipes.addShaped("nexus_exp_comp_ring_draconium", <draconicevolution:nugget:0> * 4, [
    [null, <draconicevolution:nugget:0>, null],
    [<draconicevolution:nugget:0>, null, <draconicevolution:nugget:0>],
    [null, <draconicevolution:nugget:0>, null]
]);

// Решетка из прутьев: Драконий
recipes.addShaped("nexus_exp_comp_bars_draconium", <immersiveengineering:material:34> * 8, [
    [<immersiveengineering:material:34>, <immersiveengineering:material:34>, <immersiveengineering:material:34>],
    [<immersiveengineering:material:34>, <immersiveengineering:material:34>, <immersiveengineering:material:34>]
]);

// Звенья цепи: Драконий
recipes.addShaped("nexus_exp_comp_chain_draconium", <draconicevolution:nugget:0> * 3, [
    [<draconicevolution:nugget:0>],
    [<immersiveengineering:material:34>],
    [<draconicevolution:nugget:0>]
]);

// Тонкая фольга: Драконий
recipes.addShaped("nexus_exp_comp_foil_draconium", <draconicevolution:nugget:0> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:34>]
]);

// Малая шестерня: Драконий
recipes.addShaped("nexus_exp_comp_small_gear_draconium", <thermalfoundation:material:295>, [
    [<thermalfoundation:material:359>, <draconicevolution:nugget:0>],
    [<draconicevolution:nugget:0>, <thermalfoundation:material:359>]
]);

// Двойной кованый слиток: Драконий
recipes.addShaped("nexus_exp_comp_double_ingot_draconium", <thermalfoundation:material:359> * 2, [
    [<immersiveengineering:tool:0>],
    [<draconicevolution:draconium_ingot>],
    [<draconicevolution:draconium_ingot>]
]);

// Ручное дробление руды молотом: Драконий
recipes.addShaped("nexus_exp_comp_crushed_draconium", <draconicevolution:draconium_dust> * 2, [
    [<immersiveengineering:tool:0>],
    [<draconicevolution:draconium_block>]
]);

// Болт крепежный: Драконий
recipes.addShaped("nexus_exp_comp_bolt_draconium", <draconicevolution:nugget:0> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:34>]
]);

// Винт резьбовой: Драконий
recipes.addShaped("nexus_exp_comp_screw_draconium", <draconicevolution:nugget:0> * 2, [
    [<immersiveengineering:tool:0>],
    [<draconicevolution:nugget:0>]
]);

// Тяжелый уплотненный слиток: Драконий
recipes.addShaped("nexus_exp_comp_heavy_ingot_draconium", <thermalfoundation:material:359>, [
    [<draconicevolution:nugget:0>, null, <draconicevolution:nugget:0>],
    [null, <draconicevolution:draconium_ingot>, null],
    [<draconicevolution:nugget:0>, null, <draconicevolution:nugget:0>]
]);

// Армированная пластина на болтах: Драконий
recipes.addShaped("nexus_exp_comp_reinf_plate_draconium", <thermalfoundation:material:359>, [
    [<draconicevolution:nugget:0>, null, <draconicevolution:nugget:0>],
    [null, <thermalfoundation:material:359>, null],
    [<draconicevolution:nugget:0>, null, <draconicevolution:nugget:0>]
]);

// Разборка шестерни на пластины молотом: Драконий
recipes.addShaped("nexus_exp_comp_salvage_gear_draconium", <thermalfoundation:material:359> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:295>]
]);

// Расковка сжатой бронеплиты молотом: Драконий
recipes.addShaped("nexus_exp_comp_salvage_dense_draconium", <thermalfoundation:material:359> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:359>]
]);

// Переработка проводки в самородки: Драконий
recipes.addShaped("nexus_exp_comp_salvage_wire_draconium", <draconicevolution:nugget:0> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:34>]
]);

// Перерубка стержня на самородки: Драконий
recipes.addShaped("nexus_exp_comp_salvage_rod_draconium", <draconicevolution:nugget:0> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:34>]
]);

// Ковка пластины: Таумий
recipes.addShaped("nexus_exp_comp_plate_thaumium", <thermalfoundation:material:354>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thaumcraft:ingot:0>, <thaumcraft:ingot:0>, null],
    [null, null, null]
]);

// Сборка шестерни: Таумий
recipes.remove(<thermalfoundation:material:290>);
recipes.addShaped("nexus_exp_comp_gear_thaumium", <thermalfoundation:material:290>, [
    [null, <thermalfoundation:material:354>, null],
    [<thermalfoundation:material:354>, <immersiveengineering:material:1>, <thermalfoundation:material:354>],
    [null, <thermalfoundation:material:354>, null]
]);

// Выточка стержня: Таумий
recipes.addShaped("nexus_exp_comp_rod_thaumium", <immersiveengineering:material:1> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thaumcraft:ingot:0>, null],
    [<thaumcraft:ingot:0>, null]
]);

// Сжатая бронеплита: Таумий
recipes.addShaped("nexus_exp_comp_dense_thaumium", <thermalfoundation:material:354> * 1, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, <thermalfoundation:material:354>]
]);

// Нарезка проводки: Таумий
recipes.addShaped("nexus_exp_comp_wire_thaumium", <immersiveengineering:material:1> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:354>]
]);

// Разделение слитка на самородки: Таумий
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_thaumium", <thaumcraft:nugget:0> * 9, [<thaumcraft:ingot:0>]);

// Компактизация самородков в слиток: Таумий
recipes.addShaped("nexus_exp_comp_nug_to_ingot_thaumium", <thaumcraft:ingot:0>, [
    [<thaumcraft:nugget:0>, <thaumcraft:nugget:0>, <thaumcraft:nugget:0>],
    [<thaumcraft:nugget:0>, <thaumcraft:nugget:0>, <thaumcraft:nugget:0>],
    [<thaumcraft:nugget:0>, <thaumcraft:nugget:0>, <thaumcraft:nugget:0>]
]);

// Блок металла: Таумий
recipes.addShaped("nexus_exp_comp_ingot_to_blk_thaumium", <thaumcraft:metal_block_thaumium>, [
    [<thaumcraft:ingot:0>, <thaumcraft:ingot:0>, <thaumcraft:ingot:0>],
    [<thaumcraft:ingot:0>, <thaumcraft:ingot:0>, <thaumcraft:ingot:0>],
    [<thaumcraft:ingot:0>, <thaumcraft:ingot:0>, <thaumcraft:ingot:0>]
]);

// Распил блока на слитки: Таумий
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_thaumium", <thaumcraft:ingot:0> * 9, [<thaumcraft:metal_block_thaumium>]);

// Ручное измельчение слитка в пыль молотом: Таумий
recipes.addShaped("nexus_exp_comp_dust_hammer_thaumium", <thermalfoundation:material:98>, [
    [<immersiveengineering:tool:0>],
    [<thaumcraft:ingot:0>]
]);

// Изолированный провод: Таумий
recipes.addShaped("nexus_exp_comp_ins_wire_thaumium", <immersiveengineering:material:1> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:1>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Таумий
recipes.addShaped("nexus_exp_comp_rotor_thaumium", <thermalfoundation:material:354> * 2, [
    [null, <thermalfoundation:material:354>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <immersiveengineering:material:1>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, null]
]);

// Тяжелый конструкционный стержень: Таумий
recipes.addShaped("nexus_exp_comp_heavy_rod_thaumium", <immersiveengineering:material:1> * 3, [
    [<immersiveengineering:material:1>, <thermalfoundation:material:354>, <immersiveengineering:material:1>]
]);

// Металлическое уплотнительное кольцо: Таумий
recipes.addShaped("nexus_exp_comp_ring_thaumium", <thaumcraft:nugget:0> * 4, [
    [null, <thaumcraft:nugget:0>, null],
    [<thaumcraft:nugget:0>, null, <thaumcraft:nugget:0>],
    [null, <thaumcraft:nugget:0>, null]
]);

// Решетка из прутьев: Таумий
recipes.addShaped("nexus_exp_comp_bars_thaumium", <immersiveengineering:material:1> * 8, [
    [<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>],
    [<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>]
]);

// Звенья цепи: Таумий
recipes.addShaped("nexus_exp_comp_chain_thaumium", <thaumcraft:nugget:0> * 3, [
    [<thaumcraft:nugget:0>],
    [<immersiveengineering:material:1>],
    [<thaumcraft:nugget:0>]
]);

// Тонкая фольга: Таумий
recipes.addShaped("nexus_exp_comp_foil_thaumium", <thaumcraft:nugget:0> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:1>]
]);

// Малая шестерня: Таумий
recipes.addShaped("nexus_exp_comp_small_gear_thaumium", <thermalfoundation:material:290>, [
    [<thermalfoundation:material:354>, <thaumcraft:nugget:0>],
    [<thaumcraft:nugget:0>, <thermalfoundation:material:354>]
]);

// Двойной кованый слиток: Таумий
recipes.addShaped("nexus_exp_comp_double_ingot_thaumium", <thermalfoundation:material:354> * 2, [
    [<immersiveengineering:tool:0>],
    [<thaumcraft:ingot:0>],
    [<thaumcraft:ingot:0>]
]);

// Ручное дробление руды молотом: Таумий
recipes.addShaped("nexus_exp_comp_crushed_thaumium", <thermalfoundation:material:98> * 2, [
    [<immersiveengineering:tool:0>],
    [<thaumcraft:metal_block_thaumium>]
]);

// Болт крепежный: Таумий
recipes.addShaped("nexus_exp_comp_bolt_thaumium", <thaumcraft:nugget:0> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:1>]
]);

// Винт резьбовой: Таумий
recipes.addShaped("nexus_exp_comp_screw_thaumium", <thaumcraft:nugget:0> * 2, [
    [<immersiveengineering:tool:0>],
    [<thaumcraft:nugget:0>]
]);

// Тяжелый уплотненный слиток: Таумий
recipes.addShaped("nexus_exp_comp_heavy_ingot_thaumium", <thermalfoundation:material:354>, [
    [<thaumcraft:nugget:0>, null, <thaumcraft:nugget:0>],
    [null, <thaumcraft:ingot:0>, null],
    [<thaumcraft:nugget:0>, null, <thaumcraft:nugget:0>]
]);

// Армированная пластина на болтах: Таумий
recipes.addShaped("nexus_exp_comp_reinf_plate_thaumium", <thermalfoundation:material:354>, [
    [<thaumcraft:nugget:0>, null, <thaumcraft:nugget:0>],
    [null, <thermalfoundation:material:354>, null],
    [<thaumcraft:nugget:0>, null, <thaumcraft:nugget:0>]
]);

// Разборка шестерни на пластины молотом: Таумий
recipes.addShaped("nexus_exp_comp_salvage_gear_thaumium", <thermalfoundation:material:354> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:290>]
]);

// Расковка сжатой бронеплиты молотом: Таумий
recipes.addShaped("nexus_exp_comp_salvage_dense_thaumium", <thermalfoundation:material:354> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:354>]
]);

// Переработка проводки в самородки: Таумий
recipes.addShaped("nexus_exp_comp_salvage_wire_thaumium", <thaumcraft:nugget:0> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:1>]
]);

// Перерубка стержня на самородки: Таумий
recipes.addShaped("nexus_exp_comp_salvage_rod_thaumium", <thaumcraft:nugget:0> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:1>]
]);

// Ковка пластины: Металл пустоты
recipes.addShaped("nexus_exp_comp_plate_void_metal", <thermalfoundation:material:359>, [
    [<immersiveengineering:tool:0>, null, null],
    [<thaumcraft:ingot:1>, <thaumcraft:ingot:1>, null],
    [null, null, null]
]);

// Сборка шестерни: Металл пустоты
recipes.remove(<thermalfoundation:material:295>);
recipes.addShaped("nexus_exp_comp_gear_void_metal", <thermalfoundation:material:295>, [
    [null, <thermalfoundation:material:359>, null],
    [<thermalfoundation:material:359>, <immersiveengineering:material:3>, <thermalfoundation:material:359>],
    [null, <thermalfoundation:material:359>, null]
]);

// Выточка стержня: Металл пустоты
recipes.addShaped("nexus_exp_comp_rod_void_metal", <immersiveengineering:material:3> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<thaumcraft:ingot:1>, null],
    [<thaumcraft:ingot:1>, null]
]);

// Сжатая бронеплита: Металл пустоты
recipes.addShaped("nexus_exp_comp_dense_void_metal", <thermalfoundation:material:359> * 1, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>]
]);

// Нарезка проводки: Металл пустоты
recipes.addShaped("nexus_exp_comp_wire_void_metal", <immersiveengineering:material:3> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:359>]
]);

// Разделение слитка на самородки: Металл пустоты
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_void_metal", <thaumcraft:nugget:1> * 9, [<thaumcraft:ingot:1>]);

// Компактизация самородков в слиток: Металл пустоты
recipes.addShaped("nexus_exp_comp_nug_to_ingot_void_metal", <thaumcraft:ingot:1>, [
    [<thaumcraft:nugget:1>, <thaumcraft:nugget:1>, <thaumcraft:nugget:1>],
    [<thaumcraft:nugget:1>, <thaumcraft:nugget:1>, <thaumcraft:nugget:1>],
    [<thaumcraft:nugget:1>, <thaumcraft:nugget:1>, <thaumcraft:nugget:1>]
]);

// Блок металла: Металл пустоты
recipes.addShaped("nexus_exp_comp_ingot_to_blk_void_metal", <thaumcraft:metal_block_void>, [
    [<thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>],
    [<thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>],
    [<thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>]
]);

// Распил блока на слитки: Металл пустоты
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_void_metal", <thaumcraft:ingot:1> * 9, [<thaumcraft:metal_block_void>]);

// Ручное измельчение слитка в пыль молотом: Металл пустоты
recipes.addShaped("nexus_exp_comp_dust_hammer_void_metal", <thermalfoundation:material:103>, [
    [<immersiveengineering:tool:0>],
    [<thaumcraft:ingot:1>]
]);

// Изолированный провод: Металл пустоты
recipes.addShaped("nexus_exp_comp_ins_wire_void_metal", <immersiveengineering:material:3> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:3>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Металл пустоты
recipes.addShaped("nexus_exp_comp_rotor_void_metal", <thermalfoundation:material:359> * 2, [
    [null, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <immersiveengineering:material:3>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, null]
]);

// Тяжелый конструкционный стержень: Металл пустоты
recipes.addShaped("nexus_exp_comp_heavy_rod_void_metal", <immersiveengineering:material:3> * 3, [
    [<immersiveengineering:material:3>, <thermalfoundation:material:359>, <immersiveengineering:material:3>]
]);

// Металлическое уплотнительное кольцо: Металл пустоты
recipes.addShaped("nexus_exp_comp_ring_void_metal", <thaumcraft:nugget:1> * 4, [
    [null, <thaumcraft:nugget:1>, null],
    [<thaumcraft:nugget:1>, null, <thaumcraft:nugget:1>],
    [null, <thaumcraft:nugget:1>, null]
]);

// Решетка из прутьев: Металл пустоты
recipes.addShaped("nexus_exp_comp_bars_void_metal", <immersiveengineering:material:3> * 8, [
    [<immersiveengineering:material:3>, <immersiveengineering:material:3>, <immersiveengineering:material:3>],
    [<immersiveengineering:material:3>, <immersiveengineering:material:3>, <immersiveengineering:material:3>]
]);

// Звенья цепи: Металл пустоты
recipes.addShaped("nexus_exp_comp_chain_void_metal", <thaumcraft:nugget:1> * 3, [
    [<thaumcraft:nugget:1>],
    [<immersiveengineering:material:3>],
    [<thaumcraft:nugget:1>]
]);

// Тонкая фольга: Металл пустоты
recipes.addShaped("nexus_exp_comp_foil_void_metal", <thaumcraft:nugget:1> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:3>]
]);

// Малая шестерня: Металл пустоты
recipes.addShaped("nexus_exp_comp_small_gear_void_metal", <thermalfoundation:material:295>, [
    [<thermalfoundation:material:359>, <thaumcraft:nugget:1>],
    [<thaumcraft:nugget:1>, <thermalfoundation:material:359>]
]);

// Двойной кованый слиток: Металл пустоты
recipes.addShaped("nexus_exp_comp_double_ingot_void_metal", <thermalfoundation:material:359> * 2, [
    [<immersiveengineering:tool:0>],
    [<thaumcraft:ingot:1>],
    [<thaumcraft:ingot:1>]
]);

// Ручное дробление руды молотом: Металл пустоты
recipes.addShaped("nexus_exp_comp_crushed_void_metal", <thermalfoundation:material:103> * 2, [
    [<immersiveengineering:tool:0>],
    [<thaumcraft:metal_block_void>]
]);

// Болт крепежный: Металл пустоты
recipes.addShaped("nexus_exp_comp_bolt_void_metal", <thaumcraft:nugget:1> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:3>]
]);

// Винт резьбовой: Металл пустоты
recipes.addShaped("nexus_exp_comp_screw_void_metal", <thaumcraft:nugget:1> * 2, [
    [<immersiveengineering:tool:0>],
    [<thaumcraft:nugget:1>]
]);

// Тяжелый уплотненный слиток: Металл пустоты
recipes.addShaped("nexus_exp_comp_heavy_ingot_void_metal", <thermalfoundation:material:359>, [
    [<thaumcraft:nugget:1>, null, <thaumcraft:nugget:1>],
    [null, <thaumcraft:ingot:1>, null],
    [<thaumcraft:nugget:1>, null, <thaumcraft:nugget:1>]
]);

// Армированная пластина на болтах: Металл пустоты
recipes.addShaped("nexus_exp_comp_reinf_plate_void_metal", <thermalfoundation:material:359>, [
    [<thaumcraft:nugget:1>, null, <thaumcraft:nugget:1>],
    [null, <thermalfoundation:material:359>, null],
    [<thaumcraft:nugget:1>, null, <thaumcraft:nugget:1>]
]);

// Разборка шестерни на пластины молотом: Металл пустоты
recipes.addShaped("nexus_exp_comp_salvage_gear_void_metal", <thermalfoundation:material:359> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:295>]
]);

// Расковка сжатой бронеплиты молотом: Металл пустоты
recipes.addShaped("nexus_exp_comp_salvage_dense_void_metal", <thermalfoundation:material:359> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:359>]
]);

// Переработка проводки в самородки: Металл пустоты
recipes.addShaped("nexus_exp_comp_salvage_wire_void_metal", <thaumcraft:nugget:1> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:3>]
]);

// Перерубка стержня на самородки: Металл пустоты
recipes.addShaped("nexus_exp_comp_salvage_rod_void_metal", <thaumcraft:nugget:1> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:3>]
]);

// Ковка пластины: Манасталь
recipes.addShaped("nexus_exp_comp_plate_manasteel", <thermalfoundation:material:320>, [
    [<immersiveengineering:tool:0>, null, null],
    [<botania:manaresource:0>, <botania:manaresource:0>, null],
    [null, null, null]
]);

// Сборка шестерни: Манасталь
recipes.remove(<thermalfoundation:material:256>);
recipes.addShaped("nexus_exp_comp_gear_manasteel", <thermalfoundation:material:256>, [
    [null, <thermalfoundation:material:320>, null],
    [<thermalfoundation:material:320>, <immersiveengineering:material:28>, <thermalfoundation:material:320>],
    [null, <thermalfoundation:material:320>, null]
]);

// Выточка стержня: Манасталь
recipes.addShaped("nexus_exp_comp_rod_manasteel", <immersiveengineering:material:28> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<botania:manaresource:0>, null],
    [<botania:manaresource:0>, null]
]);

// Сжатая бронеплита: Манасталь
recipes.addShaped("nexus_exp_comp_dense_manasteel", <thermalfoundation:material:320> * 1, [
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:320>]
]);

// Нарезка проводки: Манасталь
recipes.addShaped("nexus_exp_comp_wire_manasteel", <immersiveengineering:material:28> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:320>]
]);

// Разделение слитка на самородки: Манасталь
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_manasteel", <botania:manaresource:17> * 9, [<botania:manaresource:0>]);

// Компактизация самородков в слиток: Манасталь
recipes.addShaped("nexus_exp_comp_nug_to_ingot_manasteel", <botania:manaresource:0>, [
    [<botania:manaresource:17>, <botania:manaresource:17>, <botania:manaresource:17>],
    [<botania:manaresource:17>, <botania:manaresource:17>, <botania:manaresource:17>],
    [<botania:manaresource:17>, <botania:manaresource:17>, <botania:manaresource:17>]
]);

// Блок металла: Манасталь
recipes.addShaped("nexus_exp_comp_ingot_to_blk_manasteel", <botania:storage:0>, [
    [<botania:manaresource:0>, <botania:manaresource:0>, <botania:manaresource:0>],
    [<botania:manaresource:0>, <botania:manaresource:0>, <botania:manaresource:0>],
    [<botania:manaresource:0>, <botania:manaresource:0>, <botania:manaresource:0>]
]);

// Распил блока на слитки: Манасталь
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_manasteel", <botania:manaresource:0> * 9, [<botania:storage:0>]);

// Ручное измельчение слитка в пыль молотом: Манасталь
recipes.addShaped("nexus_exp_comp_dust_hammer_manasteel", <thermalfoundation:material:64>, [
    [<immersiveengineering:tool:0>],
    [<botania:manaresource:0>]
]);

// Изолированный провод: Манасталь
recipes.addShaped("nexus_exp_comp_ins_wire_manasteel", <immersiveengineering:material:28> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:28>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Манасталь
recipes.addShaped("nexus_exp_comp_rotor_manasteel", <thermalfoundation:material:320> * 2, [
    [null, <thermalfoundation:material:320>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:320>, <immersiveengineering:material:28>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, null]
]);

// Тяжелый конструкционный стержень: Манасталь
recipes.addShaped("nexus_exp_comp_heavy_rod_manasteel", <immersiveengineering:material:28> * 3, [
    [<immersiveengineering:material:28>, <thermalfoundation:material:320>, <immersiveengineering:material:28>]
]);

// Металлическое уплотнительное кольцо: Манасталь
recipes.addShaped("nexus_exp_comp_ring_manasteel", <botania:manaresource:17> * 4, [
    [null, <botania:manaresource:17>, null],
    [<botania:manaresource:17>, null, <botania:manaresource:17>],
    [null, <botania:manaresource:17>, null]
]);

// Решетка из прутьев: Манасталь
recipes.addShaped("nexus_exp_comp_bars_manasteel", <immersiveengineering:material:28> * 8, [
    [<immersiveengineering:material:28>, <immersiveengineering:material:28>, <immersiveengineering:material:28>],
    [<immersiveengineering:material:28>, <immersiveengineering:material:28>, <immersiveengineering:material:28>]
]);

// Звенья цепи: Манасталь
recipes.addShaped("nexus_exp_comp_chain_manasteel", <botania:manaresource:17> * 3, [
    [<botania:manaresource:17>],
    [<immersiveengineering:material:28>],
    [<botania:manaresource:17>]
]);

// Тонкая фольга: Манасталь
recipes.addShaped("nexus_exp_comp_foil_manasteel", <botania:manaresource:17> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:28>]
]);

// Малая шестерня: Манасталь
recipes.addShaped("nexus_exp_comp_small_gear_manasteel", <thermalfoundation:material:256>, [
    [<thermalfoundation:material:320>, <botania:manaresource:17>],
    [<botania:manaresource:17>, <thermalfoundation:material:320>]
]);

// Двойной кованый слиток: Манасталь
recipes.addShaped("nexus_exp_comp_double_ingot_manasteel", <thermalfoundation:material:320> * 2, [
    [<immersiveengineering:tool:0>],
    [<botania:manaresource:0>],
    [<botania:manaresource:0>]
]);

// Ручное дробление руды молотом: Манасталь
recipes.addShaped("nexus_exp_comp_crushed_manasteel", <thermalfoundation:material:64> * 2, [
    [<immersiveengineering:tool:0>],
    [<botania:storage:0>]
]);

// Болт крепежный: Манасталь
recipes.addShaped("nexus_exp_comp_bolt_manasteel", <botania:manaresource:17> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:28>]
]);

// Винт резьбовой: Манасталь
recipes.addShaped("nexus_exp_comp_screw_manasteel", <botania:manaresource:17> * 2, [
    [<immersiveengineering:tool:0>],
    [<botania:manaresource:17>]
]);

// Тяжелый уплотненный слиток: Манасталь
recipes.addShaped("nexus_exp_comp_heavy_ingot_manasteel", <thermalfoundation:material:320>, [
    [<botania:manaresource:17>, null, <botania:manaresource:17>],
    [null, <botania:manaresource:0>, null],
    [<botania:manaresource:17>, null, <botania:manaresource:17>]
]);

// Армированная пластина на болтах: Манасталь
recipes.addShaped("nexus_exp_comp_reinf_plate_manasteel", <thermalfoundation:material:320>, [
    [<botania:manaresource:17>, null, <botania:manaresource:17>],
    [null, <thermalfoundation:material:320>, null],
    [<botania:manaresource:17>, null, <botania:manaresource:17>]
]);

// Разборка шестерни на пластины молотом: Манасталь
recipes.addShaped("nexus_exp_comp_salvage_gear_manasteel", <thermalfoundation:material:320> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:256>]
]);

// Расковка сжатой бронеплиты молотом: Манасталь
recipes.addShaped("nexus_exp_comp_salvage_dense_manasteel", <thermalfoundation:material:320> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:320>]
]);

// Переработка проводки в самородки: Манасталь
recipes.addShaped("nexus_exp_comp_salvage_wire_manasteel", <botania:manaresource:17> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:28>]
]);

// Перерубка стержня на самородки: Манасталь
recipes.addShaped("nexus_exp_comp_salvage_rod_manasteel", <botania:manaresource:17> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:28>]
]);

// Ковка пластины: Террасталь
recipes.addShaped("nexus_exp_comp_plate_terrasteel", <thermalfoundation:material:359>, [
    [<immersiveengineering:tool:0>, null, null],
    [<botania:manaresource:4>, <botania:manaresource:4>, null],
    [null, null, null]
]);

// Сборка шестерни: Террасталь
recipes.remove(<thermalfoundation:material:295>);
recipes.addShaped("nexus_exp_comp_gear_terrasteel", <thermalfoundation:material:295>, [
    [null, <thermalfoundation:material:359>, null],
    [<thermalfoundation:material:359>, <immersiveengineering:material:34>, <thermalfoundation:material:359>],
    [null, <thermalfoundation:material:359>, null]
]);

// Выточка стержня: Террасталь
recipes.addShaped("nexus_exp_comp_rod_terrasteel", <immersiveengineering:material:34> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<botania:manaresource:4>, null],
    [<botania:manaresource:4>, null]
]);

// Сжатая бронеплита: Террасталь
recipes.addShaped("nexus_exp_comp_dense_terrasteel", <thermalfoundation:material:359> * 1, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>]
]);

// Нарезка проводки: Террасталь
recipes.addShaped("nexus_exp_comp_wire_terrasteel", <immersiveengineering:material:34> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:359>]
]);

// Разделение слитка на самородки: Террасталь
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_terrasteel", <botania:manaresource:18> * 9, [<botania:manaresource:4>]);

// Компактизация самородков в слиток: Террасталь
recipes.addShaped("nexus_exp_comp_nug_to_ingot_terrasteel", <botania:manaresource:4>, [
    [<botania:manaresource:18>, <botania:manaresource:18>, <botania:manaresource:18>],
    [<botania:manaresource:18>, <botania:manaresource:18>, <botania:manaresource:18>],
    [<botania:manaresource:18>, <botania:manaresource:18>, <botania:manaresource:18>]
]);

// Блок металла: Террасталь
recipes.addShaped("nexus_exp_comp_ingot_to_blk_terrasteel", <botania:storage:1>, [
    [<botania:manaresource:4>, <botania:manaresource:4>, <botania:manaresource:4>],
    [<botania:manaresource:4>, <botania:manaresource:4>, <botania:manaresource:4>],
    [<botania:manaresource:4>, <botania:manaresource:4>, <botania:manaresource:4>]
]);

// Распил блока на слитки: Террасталь
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_terrasteel", <botania:manaresource:4> * 9, [<botania:storage:1>]);

// Ручное измельчение слитка в пыль молотом: Террасталь
recipes.addShaped("nexus_exp_comp_dust_hammer_terrasteel", <thermalfoundation:material:103>, [
    [<immersiveengineering:tool:0>],
    [<botania:manaresource:4>]
]);

// Изолированный провод: Террасталь
recipes.addShaped("nexus_exp_comp_ins_wire_terrasteel", <immersiveengineering:material:34> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:34>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Террасталь
recipes.addShaped("nexus_exp_comp_rotor_terrasteel", <thermalfoundation:material:359> * 2, [
    [null, <thermalfoundation:material:359>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <immersiveengineering:material:34>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, null]
]);

// Тяжелый конструкционный стержень: Террасталь
recipes.addShaped("nexus_exp_comp_heavy_rod_terrasteel", <immersiveengineering:material:34> * 3, [
    [<immersiveengineering:material:34>, <thermalfoundation:material:359>, <immersiveengineering:material:34>]
]);

// Металлическое уплотнительное кольцо: Террасталь
recipes.addShaped("nexus_exp_comp_ring_terrasteel", <botania:manaresource:18> * 4, [
    [null, <botania:manaresource:18>, null],
    [<botania:manaresource:18>, null, <botania:manaresource:18>],
    [null, <botania:manaresource:18>, null]
]);

// Решетка из прутьев: Террасталь
recipes.addShaped("nexus_exp_comp_bars_terrasteel", <immersiveengineering:material:34> * 8, [
    [<immersiveengineering:material:34>, <immersiveengineering:material:34>, <immersiveengineering:material:34>],
    [<immersiveengineering:material:34>, <immersiveengineering:material:34>, <immersiveengineering:material:34>]
]);

// Звенья цепи: Террасталь
recipes.addShaped("nexus_exp_comp_chain_terrasteel", <botania:manaresource:18> * 3, [
    [<botania:manaresource:18>],
    [<immersiveengineering:material:34>],
    [<botania:manaresource:18>]
]);

// Тонкая фольга: Террасталь
recipes.addShaped("nexus_exp_comp_foil_terrasteel", <botania:manaresource:18> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:34>]
]);

// Малая шестерня: Террасталь
recipes.addShaped("nexus_exp_comp_small_gear_terrasteel", <thermalfoundation:material:295>, [
    [<thermalfoundation:material:359>, <botania:manaresource:18>],
    [<botania:manaresource:18>, <thermalfoundation:material:359>]
]);

// Двойной кованый слиток: Террасталь
recipes.addShaped("nexus_exp_comp_double_ingot_terrasteel", <thermalfoundation:material:359> * 2, [
    [<immersiveengineering:tool:0>],
    [<botania:manaresource:4>],
    [<botania:manaresource:4>]
]);

// Ручное дробление руды молотом: Террасталь
recipes.addShaped("nexus_exp_comp_crushed_terrasteel", <thermalfoundation:material:103> * 2, [
    [<immersiveengineering:tool:0>],
    [<botania:storage:1>]
]);

// Болт крепежный: Террасталь
recipes.addShaped("nexus_exp_comp_bolt_terrasteel", <botania:manaresource:18> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:34>]
]);

// Винт резьбовой: Террасталь
recipes.addShaped("nexus_exp_comp_screw_terrasteel", <botania:manaresource:18> * 2, [
    [<immersiveengineering:tool:0>],
    [<botania:manaresource:18>]
]);

// Тяжелый уплотненный слиток: Террасталь
recipes.addShaped("nexus_exp_comp_heavy_ingot_terrasteel", <thermalfoundation:material:359>, [
    [<botania:manaresource:18>, null, <botania:manaresource:18>],
    [null, <botania:manaresource:4>, null],
    [<botania:manaresource:18>, null, <botania:manaresource:18>]
]);

// Армированная пластина на болтах: Террасталь
recipes.addShaped("nexus_exp_comp_reinf_plate_terrasteel", <thermalfoundation:material:359>, [
    [<botania:manaresource:18>, null, <botania:manaresource:18>],
    [null, <thermalfoundation:material:359>, null],
    [<botania:manaresource:18>, null, <botania:manaresource:18>]
]);

// Разборка шестерни на пластины молотом: Террасталь
recipes.addShaped("nexus_exp_comp_salvage_gear_terrasteel", <thermalfoundation:material:359> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:295>]
]);

// Расковка сжатой бронеплиты молотом: Террасталь
recipes.addShaped("nexus_exp_comp_salvage_dense_terrasteel", <thermalfoundation:material:359> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:359>]
]);

// Переработка проводки в самородки: Террасталь
recipes.addShaped("nexus_exp_comp_salvage_wire_terrasteel", <botania:manaresource:18> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:34>]
]);

// Перерубка стержня на самородки: Террасталь
recipes.addShaped("nexus_exp_comp_salvage_rod_terrasteel", <botania:manaresource:18> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:34>]
]);

// Ковка пластины: Элементий
recipes.addShaped("nexus_exp_comp_plate_elementium", <thermalfoundation:material:358>, [
    [<immersiveengineering:tool:0>, null, null],
    [<botania:manaresource:7>, <botania:manaresource:7>, null],
    [null, null, null]
]);

// Сборка шестерни: Элементий
recipes.remove(<thermalfoundation:material:294>);
recipes.addShaped("nexus_exp_comp_gear_elementium", <thermalfoundation:material:294>, [
    [null, <thermalfoundation:material:358>, null],
    [<thermalfoundation:material:358>, <immersiveengineering:material:33>, <thermalfoundation:material:358>],
    [null, <thermalfoundation:material:358>, null]
]);

// Выточка стержня: Элементий
recipes.addShaped("nexus_exp_comp_rod_elementium", <immersiveengineering:material:33> * 2, [
    [<immersiveengineering:tool:0>, null],
    [<botania:manaresource:7>, null],
    [<botania:manaresource:7>, null]
]);

// Сжатая бронеплита: Элементий
recipes.addShaped("nexus_exp_comp_dense_elementium", <thermalfoundation:material:358> * 1, [
    [<thermalfoundation:material:358>, <thermalfoundation:material:358>, <thermalfoundation:material:358>],
    [<thermalfoundation:material:358>, <thermalfoundation:material:358>, <thermalfoundation:material:358>],
    [<thermalfoundation:material:358>, <thermalfoundation:material:358>, <thermalfoundation:material:358>]
]);

// Нарезка проводки: Элементий
recipes.addShaped("nexus_exp_comp_wire_elementium", <immersiveengineering:material:33> * 4, [
    [<minecraft:shears>, <thermalfoundation:material:358>]
]);

// Разделение слитка на самородки: Элементий
recipes.addShapeless("nexus_exp_comp_ingot_to_nug_elementium", <botania:manaresource:19> * 9, [<botania:manaresource:7>]);

// Компактизация самородков в слиток: Элементий
recipes.addShaped("nexus_exp_comp_nug_to_ingot_elementium", <botania:manaresource:7>, [
    [<botania:manaresource:19>, <botania:manaresource:19>, <botania:manaresource:19>],
    [<botania:manaresource:19>, <botania:manaresource:19>, <botania:manaresource:19>],
    [<botania:manaresource:19>, <botania:manaresource:19>, <botania:manaresource:19>]
]);

// Блок металла: Элементий
recipes.addShaped("nexus_exp_comp_ingot_to_blk_elementium", <botania:storage:2>, [
    [<botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>],
    [<botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>],
    [<botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>]
]);

// Распил блока на слитки: Элементий
recipes.addShapeless("nexus_exp_comp_blk_to_ingot_elementium", <botania:manaresource:7> * 9, [<botania:storage:2>]);

// Ручное измельчение слитка в пыль молотом: Элементий
recipes.addShaped("nexus_exp_comp_dust_hammer_elementium", <thermalfoundation:material:102>, [
    [<immersiveengineering:tool:0>],
    [<botania:manaresource:7>]
]);

// Изолированный провод: Элементий
recipes.addShaped("nexus_exp_comp_ins_wire_elementium", <immersiveengineering:material:33> * 2, [
    [<minecraft:wool>, <immersiveengineering:material:33>, <minecraft:wool>]
]);

// Лопасть ротора турбины: Элементий
recipes.addShaped("nexus_exp_comp_rotor_elementium", <thermalfoundation:material:358> * 2, [
    [null, <thermalfoundation:material:358>, <thermalfoundation:material:358>],
    [<thermalfoundation:material:358>, <immersiveengineering:material:33>, <thermalfoundation:material:358>],
    [<thermalfoundation:material:358>, <thermalfoundation:material:358>, null]
]);

// Тяжелый конструкционный стержень: Элементий
recipes.addShaped("nexus_exp_comp_heavy_rod_elementium", <immersiveengineering:material:33> * 3, [
    [<immersiveengineering:material:33>, <thermalfoundation:material:358>, <immersiveengineering:material:33>]
]);

// Металлическое уплотнительное кольцо: Элементий
recipes.addShaped("nexus_exp_comp_ring_elementium", <botania:manaresource:19> * 4, [
    [null, <botania:manaresource:19>, null],
    [<botania:manaresource:19>, null, <botania:manaresource:19>],
    [null, <botania:manaresource:19>, null]
]);

// Решетка из прутьев: Элементий
recipes.addShaped("nexus_exp_comp_bars_elementium", <immersiveengineering:material:33> * 8, [
    [<immersiveengineering:material:33>, <immersiveengineering:material:33>, <immersiveengineering:material:33>],
    [<immersiveengineering:material:33>, <immersiveengineering:material:33>, <immersiveengineering:material:33>]
]);

// Звенья цепи: Элементий
recipes.addShaped("nexus_exp_comp_chain_elementium", <botania:manaresource:19> * 3, [
    [<botania:manaresource:19>],
    [<immersiveengineering:material:33>],
    [<botania:manaresource:19>]
]);

// Тонкая фольга: Элементий
recipes.addShaped("nexus_exp_comp_foil_elementium", <botania:manaresource:19> * 2, [
    [<minecraft:shears>, <immersiveengineering:material:33>]
]);

// Малая шестерня: Элементий
recipes.addShaped("nexus_exp_comp_small_gear_elementium", <thermalfoundation:material:294>, [
    [<thermalfoundation:material:358>, <botania:manaresource:19>],
    [<botania:manaresource:19>, <thermalfoundation:material:358>]
]);

// Двойной кованый слиток: Элементий
recipes.addShaped("nexus_exp_comp_double_ingot_elementium", <thermalfoundation:material:358> * 2, [
    [<immersiveengineering:tool:0>],
    [<botania:manaresource:7>],
    [<botania:manaresource:7>]
]);

// Ручное дробление руды молотом: Элементий
recipes.addShaped("nexus_exp_comp_crushed_elementium", <thermalfoundation:material:102> * 2, [
    [<immersiveengineering:tool:0>],
    [<botania:storage:2>]
]);

// Болт крепежный: Элементий
recipes.addShaped("nexus_exp_comp_bolt_elementium", <botania:manaresource:19> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:33>]
]);

// Винт резьбовой: Элементий
recipes.addShaped("nexus_exp_comp_screw_elementium", <botania:manaresource:19> * 2, [
    [<immersiveengineering:tool:0>],
    [<botania:manaresource:19>]
]);

// Тяжелый уплотненный слиток: Элементий
recipes.addShaped("nexus_exp_comp_heavy_ingot_elementium", <thermalfoundation:material:358>, [
    [<botania:manaresource:19>, null, <botania:manaresource:19>],
    [null, <botania:manaresource:7>, null],
    [<botania:manaresource:19>, null, <botania:manaresource:19>]
]);

// Армированная пластина на болтах: Элементий
recipes.addShaped("nexus_exp_comp_reinf_plate_elementium", <thermalfoundation:material:358>, [
    [<botania:manaresource:19>, null, <botania:manaresource:19>],
    [null, <thermalfoundation:material:358>, null],
    [<botania:manaresource:19>, null, <botania:manaresource:19>]
]);

// Разборка шестерни на пластины молотом: Элементий
recipes.addShaped("nexus_exp_comp_salvage_gear_elementium", <thermalfoundation:material:358> * 4, [
    [<immersiveengineering:tool:0>],
    [<thermalfoundation:material:294>]
]);

// Расковка сжатой бронеплиты молотом: Элементий
recipes.addShaped("nexus_exp_comp_salvage_dense_elementium", <thermalfoundation:material:358> * 9, [
    [<immersiveengineering:tool:0>, <thermalfoundation:material:358>]
]);

// Переработка проводки в самородки: Элементий
recipes.addShaped("nexus_exp_comp_salvage_wire_elementium", <botania:manaresource:19> * 2, [
    [<minecraft:shears>],
    [<immersiveengineering:material:33>]
]);

// Перерубка стержня на самородки: Элементий
recipes.addShaped("nexus_exp_comp_salvage_rod_elementium", <botania:manaresource:19> * 4, [
    [<immersiveengineering:tool:0>],
    [<immersiveengineering:material:33>]
]);

// Каркас из обработанной древесины
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped("nexus_exp_frame_treated_wood_frame", <immersiveengineering:metal_decoration0:4>, [
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:32>, <immersiveengineering:treated_wood>],
    [<thermalfoundation:material:32>, <minecraft:glass>, <thermalfoundation:material:32>],
    [<immersiveengineering:treated_wood>, <thermalfoundation:material:32>, <immersiveengineering:treated_wood>]
]);

// Бронзовый механический каркас
recipes.remove(<thermalexpansion:frame:0>);
recipes.addShaped("nexus_exp_frame_bronze_machine_frame", <thermalexpansion:frame:0>, [
    [<thermalfoundation:material:163>, <thermalfoundation:material:321>, <thermalfoundation:material:163>],
    [<thermalfoundation:material:321>, <minecraft:glass>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:163>, <thermalfoundation:material:321>, <thermalfoundation:material:163>]
]);

// Стальной индустриальный каркас
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped("nexus_exp_frame_steel_chassis", <immersiveengineering:metal_decoration0:5>, [
    [<thermalfoundation:material:160>, <thermalfoundation:material:352>, <thermalfoundation:material:160>],
    [<thermalfoundation:material:352>, <minecraft:glass>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:160>, <thermalfoundation:material:352>, <thermalfoundation:material:160>]
]);

// Инваровый термостойкий каркас
recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped("nexus_exp_frame_invar_frame", <thermalexpansion:frame:64>, [
    [<thermalfoundation:material:162>, <thermalfoundation:material:354>, <thermalfoundation:material:162>],
    [<thermalfoundation:material:354>, <minecraft:glass>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:162>, <thermalfoundation:material:354>, <thermalfoundation:material:162>]
]);

// Электрумовый энергокаркас
recipes.remove(<thermalexpansion:frame:128>);
recipes.addShaped("nexus_exp_frame_electrum_frame", <thermalexpansion:frame:128>, [
    [<thermalfoundation:material:161>, <thermalfoundation:material:353>, <thermalfoundation:material:161>],
    [<thermalfoundation:material:353>, <minecraft:glass>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:161>, <thermalfoundation:material:353>, <thermalfoundation:material:161>]
]);

// Сигналиумовый резонансный каркас
recipes.remove(<thermalexpansion:frame:129>);
recipes.addShaped("nexus_exp_frame_signalum_frame", <thermalexpansion:frame:129>, [
    [<thermalfoundation:material:165>, <thermalfoundation:material:357>, <thermalfoundation:material:165>],
    [<thermalfoundation:material:357>, <minecraft:glass>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:165>, <thermalfoundation:material:357>, <thermalfoundation:material:165>]
]);

// Эндериумовый гиперкаркас
recipes.remove(<thermalexpansion:frame:130>);
recipes.addShaped("nexus_exp_frame_enderium_frame", <thermalexpansion:frame:130>, [
    [<thermalfoundation:material:167>, <thermalfoundation:material:359>, <thermalfoundation:material:167>],
    [<thermalfoundation:material:359>, <minecraft:glass>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:167>, <thermalfoundation:material:359>, <thermalfoundation:material:167>]
]);

// Базовый стальной корпус Mekanism
recipes.remove(<mekanism:basicblock:8>);
recipes.addShaped("nexus_exp_frame_basic_mek_casing", <mekanism:basicblock:8>, [
    [<thermalfoundation:material:160>, <thermalfoundation:material:352>, <thermalfoundation:material:160>],
    [<thermalfoundation:material:352>, <minecraft:glass>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:160>, <thermalfoundation:material:352>, <thermalfoundation:material:160>]
]);

// Промышленное шасси Ender IO
recipes.remove(<enderio:item_material:1>);
recipes.addShaped("nexus_exp_frame_industrial_chassis_eio", <enderio:item_material:1>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:160>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:160>, <minecraft:glass>, <thermalfoundation:material:160>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:160>, <thermalfoundation:material:354>]
]);

// Простое шасси Ender IO
recipes.remove(<enderio:item_material:0>);
recipes.addShaped("nexus_exp_frame_simple_chassis_eio", <enderio:item_material:0>, [
    [<minecraft:iron_ingot>, <minecraft:iron_bars>, <minecraft:iron_ingot>],
    [<minecraft:iron_bars>, <minecraft:glass>, <minecraft:iron_bars>],
    [<minecraft:iron_ingot>, <minecraft:iron_bars>, <minecraft:iron_ingot>]
]);

// Энд-стальной корпус Ender IO
recipes.remove(<enderio:item_material:66>);
recipes.addShaped("nexus_exp_frame_end_steel_chassis_eio", <enderio:item_material:66>, [
    [<thermalfoundation:material:167>, <thermalfoundation:material:359>, <thermalfoundation:material:167>],
    [<thermalfoundation:material:359>, <minecraft:glass>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:167>, <thermalfoundation:material:359>, <thermalfoundation:material:167>]
]);

// Жалкий каркас Industrial Foregoing
recipes.remove(<industrialforegoing:pitiful_casing>);
recipes.addShaped("nexus_exp_frame_foregoing_pity_casing", <industrialforegoing:pitiful_casing>, [
    [<minecraft:log>, <minecraft:cobblestone>, <minecraft:log>],
    [<minecraft:cobblestone>, <minecraft:glass>, <minecraft:cobblestone>],
    [<minecraft:log>, <minecraft:cobblestone>, <minecraft:log>]
]);

// Простой каркас Industrial Foregoing
recipes.remove(<industrialforegoing:casing:0>);
recipes.addShaped("nexus_exp_frame_foregoing_simple_casing", <industrialforegoing:casing:0>, [
    [<industrialforegoing:plastic>, <thermalfoundation:material:320>, <industrialforegoing:plastic>],
    [<thermalfoundation:material:320>, <minecraft:glass>, <thermalfoundation:material:320>],
    [<industrialforegoing:plastic>, <thermalfoundation:material:320>, <industrialforegoing:plastic>]
]);

// Продвинутый каркас Industrial Foregoing
recipes.remove(<industrialforegoing:casing:1>);
recipes.addShaped("nexus_exp_frame_foregoing_adv_casing", <industrialforegoing:casing:1>, [
    [<industrialforegoing:plastic>, <thermalfoundation:material:352>, <industrialforegoing:plastic>],
    [<thermalfoundation:material:352>, <minecraft:glass>, <thermalfoundation:material:352>],
    [<industrialforegoing:plastic>, <thermalfoundation:material:352>, <industrialforegoing:plastic>]
]);

// Превосходный каркас Industrial Foregoing
recipes.remove(<industrialforegoing:casing:2>);
recipes.addShaped("nexus_exp_frame_foregoing_supreme_casing", <industrialforegoing:casing:2>, [
    [<industrialforegoing:plastic>, <thermalfoundation:material:359>, <industrialforegoing:plastic>],
    [<thermalfoundation:material:359>, <minecraft:glass>, <thermalfoundation:material:359>],
    [<industrialforegoing:plastic>, <thermalfoundation:material:359>, <industrialforegoing:plastic>]
]);

// Медная катушка (IE)
recipes.remove(<immersiveengineering:wirecoil:0>);
recipes.addShaped("nexus_exp_wire_coil_copper", <immersiveengineering:wirecoil:0> * 4, [
    [null, <thermalfoundation:material:320>, null],
    [<thermalfoundation:material:320>, <minecraft:stick>, <thermalfoundation:material:320>],
    [null, <thermalfoundation:material:320>, null]
]);

// Электрумовая катушка (IE)
recipes.remove(<immersiveengineering:wirecoil:1>);
recipes.addShaped("nexus_exp_wire_coil_electrum", <immersiveengineering:wirecoil:1> * 4, [
    [null, <thermalfoundation:material:353>, null],
    [<thermalfoundation:material:353>, <minecraft:stick>, <thermalfoundation:material:353>],
    [null, <thermalfoundation:material:353>, null]
]);

// Стальная катушка (IE)
recipes.remove(<immersiveengineering:wirecoil:2>);
recipes.addShaped("nexus_exp_wire_coil_steel", <immersiveengineering:wirecoil:2> * 4, [
    [null, <thermalfoundation:material:352>, null],
    [<thermalfoundation:material:352>, <minecraft:stick>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:352>, null]
]);

// Алюминиевая катушка (IE)
recipes.remove(<immersiveengineering:wirecoil:3>);
recipes.addShaped("nexus_exp_wire_coil_aluminum", <immersiveengineering:wirecoil:3> * 4, [
    [null, <thermalfoundation:material:324>, null],
    [<thermalfoundation:material:324>, <minecraft:stick>, <thermalfoundation:material:324>],
    [null, <thermalfoundation:material:324>, null]
]);

// Редстоун катушка (IE)
recipes.remove(<immersiveengineering:wirecoil:5>);
recipes.addShaped("nexus_exp_wire_coil_redstone", <immersiveengineering:wirecoil:5> * 4, [
    [null, <minecraft:redstone>, null],
    [<minecraft:redstone>, <minecraft:stick>, <minecraft:redstone>],
    [null, <minecraft:redstone>, null]
]);

// Структурная катушка (IE)
recipes.remove(<immersiveengineering:wirecoil:6>);
recipes.addShaped("nexus_exp_wire_coil_structural", <immersiveengineering:wirecoil:6> * 4, [
    [null, <thermalfoundation:material:32>, null],
    [<thermalfoundation:material:32>, <minecraft:stick>, <thermalfoundation:material:32>],
    [null, <thermalfoundation:material:32>, null]
]);

// Отпечатанный кремний AE2
recipes.remove(<appliedenergistics2:material:20>);
recipes.addShaped("nexus_exp_silicon_substrate_ae2", <appliedenergistics2:material:20> * 4, [
    [<thermalfoundation:material:320>, <enderio:item_material:5>, <thermalfoundation:material:320>],
    [<enderio:item_material:5>, <minecraft:redstone>, <enderio:item_material:5>],
    [<thermalfoundation:material:320>, <enderio:item_material:5>, <thermalfoundation:material:320>]
]);

// Логический процессорный контур
recipes.remove(<appliedenergistics2:material:22>);
recipes.addShaped("nexus_exp_logic_circuit_basic", <appliedenergistics2:material:22> * 2, [
    [<minecraft:gold_ingot>, <minecraft:redstone>, <minecraft:gold_ingot>],
    [<appliedenergistics2:material:20>, <thermalfoundation:material:320>, <appliedenergistics2:material:20>],
    [<minecraft:gold_ingot>, <minecraft:redstone>, <minecraft:gold_ingot>]
]);

// Вычислительный процессорный контур
recipes.remove(<appliedenergistics2:material:23>);
recipes.addShaped("nexus_exp_calculation_circuit_ae2", <appliedenergistics2:material:23> * 2, [
    [<appliedenergistics2:material:10>, <minecraft:redstone>, <appliedenergistics2:material:10>],
    [<appliedenergistics2:material:20>, <thermalfoundation:material:322>, <appliedenergistics2:material:20>],
    [<appliedenergistics2:material:10>, <minecraft:redstone>, <appliedenergistics2:material:10>]
]);

// Инженерный процессорный контур
recipes.remove(<appliedenergistics2:material:24>);
recipes.addShaped("nexus_exp_engineering_circuit_ae2", <appliedenergistics2:material:24> * 2, [
    [<minecraft:diamond>, <minecraft:redstone>, <minecraft:diamond>],
    [<appliedenergistics2:material:20>, <thermalfoundation:material:352>, <appliedenergistics2:material:20>],
    [<minecraft:diamond>, <minecraft:redstone>, <minecraft:diamond>]
]);
