// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Blood Magic Sacrificial Altars & Thaumcraft Arcana
// Generated Recipes: 50
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Кровавый алтарь Blood Magic
recipes.remove(<bloodmagic:altar>);
recipes.addShaped("nexus_exp_bm_altar", <bloodmagic:altar>, [
    [<minecraft:stone>, null, <minecraft:stone>],
    [<minecraft:stone>, <minecraft:furnace>, <minecraft:stone>],
    [<minecraft:gold_ingot>, <minecraft:diamond>, <minecraft:gold_ingot>]
]);

// Жертвенный кинжал
recipes.remove(<bloodmagic:sacrificial_dagger>);
recipes.addShaped("nexus_exp_bm_sacrificial_dagger", <bloodmagic:sacrificial_dagger>, [
    [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
    [null, <minecraft:gold_ingot>, <minecraft:glass>],
    [<thermalfoundation:material:32>, null, <minecraft:glass>]
]);

// Кинжал жертвоприношения мобов
recipes.remove(<bloodmagic:dagger_of_sacrifice>);
recipes.addShaped("nexus_exp_bm_dagger_of_sacrifice", <bloodmagic:dagger_of_sacrifice>, [
    [null, <minecraft:diamond>, <thermalfoundation:material:32>],
    [null, <bloodmagic:slate:1>, <minecraft:diamond>],
    [<minecraft:gold_ingot>, null, null]
]);

// Пустая кровавая руна
recipes.remove(<bloodmagic:blood_rune:0>);
recipes.addShaped("nexus_exp_bm_rune_blank", <bloodmagic:blood_rune:0> * 2, [
    [<minecraft:stone>, <bloodmagic:slate:0>, <minecraft:stone>],
    [<bloodmagic:slate:0>, <bloodmagic:altar>, <bloodmagic:slate:0>],
    [<minecraft:stone>, <bloodmagic:slate:0>, <minecraft:stone>]
]);

// Руна скорости
recipes.remove(<bloodmagic:blood_rune:1>);
recipes.addShaped("nexus_exp_bm_rune_speed", <bloodmagic:blood_rune:1>, [
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
    [<minecraft:sugar>, <bloodmagic:blood_rune:0>, <minecraft:sugar>],
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>]
]);

// Руна жертвоприношения
recipes.remove(<bloodmagic:blood_rune:2>);
recipes.addShaped("nexus_exp_bm_rune_sacrifice", <bloodmagic:blood_rune:2>, [
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
    [<minecraft:gold_ingot>, <bloodmagic:blood_rune:0>, <minecraft:gold_ingot>],
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>]
]);

// Руна самопожертвования
recipes.remove(<bloodmagic:blood_rune:3>);
recipes.addShaped("nexus_exp_bm_rune_self_sacrifice", <bloodmagic:blood_rune:3>, [
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
    [<minecraft:glowstone_dust>, <bloodmagic:blood_rune:0>, <minecraft:glowstone_dust>],
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>]
]);

// Руна перемещения
recipes.remove(<bloodmagic:blood_rune:4>);
recipes.addShaped("nexus_exp_bm_rune_dislocation", <bloodmagic:blood_rune:4>, [
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
    [<minecraft:water_bucket>, <bloodmagic:blood_rune:0>, <minecraft:water_bucket>],
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>]
]);

// Руна вместимости
recipes.remove(<bloodmagic:blood_rune:5>);
recipes.addShaped("nexus_exp_bm_rune_capacity", <bloodmagic:blood_rune:5>, [
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
    [<minecraft:bucket>, <bloodmagic:blood_rune:0>, <minecraft:bucket>],
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>]
]);

// Руна усиленной вместимости
recipes.remove(<bloodmagic:blood_rune:6>);
recipes.addShaped("nexus_exp_bm_rune_augmented_capacity", <bloodmagic:blood_rune:6>, [
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
    [<minecraft:cauldron>, <bloodmagic:blood_rune:0>, <minecraft:cauldron>],
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>]
]);

// Руна высшей вместимости
recipes.remove(<bloodmagic:blood_rune:7>);
recipes.addShaped("nexus_exp_bm_rune_superior_capacity", <bloodmagic:blood_rune:7>, [
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
    [<minecraft:diamond>, <bloodmagic:blood_rune:0>, <minecraft:diamond>],
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>]
]);

// Руна зарядки
recipes.remove(<bloodmagic:blood_rune:8>);
recipes.addShaped("nexus_exp_bm_rune_charging", <bloodmagic:blood_rune:8>, [
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
    [<minecraft:redstone_block>, <bloodmagic:blood_rune:0>, <minecraft:redstone_block>],
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>]
]);

// Руна ускорения
recipes.remove(<bloodmagic:blood_rune:9>);
recipes.addShaped("nexus_exp_bm_rune_acceleration", <bloodmagic:blood_rune:9>, [
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
    [<minecraft:clock>, <bloodmagic:blood_rune:0>, <minecraft:clock>],
    [<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>]
]);

// Сигил предсказания
recipes.remove(<bloodmagic:sigil_divination>);
recipes.addShaped("nexus_exp_bm_sigil_divination", <bloodmagic:sigil_divination>, [
    [<bloodmagic:slate:0>, <minecraft:redstone>, <bloodmagic:slate:0>],
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<bloodmagic:slate:0>, <minecraft:redstone>, <bloodmagic:slate:0>]
]);

// Сигил воды
recipes.remove(<bloodmagic:sigil_water>);
recipes.addShaped("nexus_exp_bm_sigil_water", <bloodmagic:sigil_water>, [
    [<bloodmagic:slate:0>, <minecraft:water_bucket>, <bloodmagic:slate:0>],
    [<minecraft:water_bucket>, <bloodmagic:slate:1>, <minecraft:water_bucket>],
    [<bloodmagic:slate:0>, <minecraft:water_bucket>, <bloodmagic:slate:0>]
]);

// Сигил лавы
recipes.remove(<bloodmagic:sigil_lava>);
recipes.addShaped("nexus_exp_bm_sigil_lava", <bloodmagic:sigil_lava>, [
    [<bloodmagic:slate:1>, <minecraft:lava_bucket>, <bloodmagic:slate:1>],
    [<minecraft:lava_bucket>, <bloodmagic:slate:1>, <minecraft:lava_bucket>],
    [<bloodmagic:slate:1>, <minecraft:lava_bucket>, <bloodmagic:slate:1>]
]);

// Сигил воздуха
recipes.remove(<bloodmagic:sigil_air>);
recipes.addShaped("nexus_exp_bm_sigil_air", <bloodmagic:sigil_air>, [
    [<bloodmagic:slate:1>, <minecraft:feather>, <bloodmagic:slate:1>],
    [<minecraft:feather>, <minecraft:ghast_tear>, <minecraft:feather>],
    [<bloodmagic:slate:1>, <minecraft:feather>, <bloodmagic:slate:1>]
]);

// Сигил зеленеющей рощи
recipes.remove(<bloodmagic:sigil_green_grove>);
recipes.addShaped("nexus_exp_bm_sigil_green_grove", <bloodmagic:sigil_green_grove>, [
    [<bloodmagic:slate:0>, <minecraft:sapling>, <bloodmagic:slate:0>],
    [<minecraft:wheat>, <bloodmagic:slate:1>, <minecraft:wheat>],
    [<bloodmagic:slate:0>, <minecraft:bone_meal>, <bloodmagic:slate:0>]
]);

// Сигил кровавого света
recipes.remove(<bloodmagic:sigil_blood_light>);
recipes.addShaped("nexus_exp_bm_sigil_blood_light", <bloodmagic:sigil_blood_light>, [
    [<bloodmagic:slate:0>, <minecraft:glowstone_dust>, <bloodmagic:slate:0>],
    [<minecraft:glowstone_dust>, <bloodmagic:slate:0>, <minecraft:glowstone_dust>],
    [<bloodmagic:slate:0>, <minecraft:glowstone_dust>, <bloodmagic:slate:0>]
]);

// Сигил магнетизма
recipes.remove(<bloodmagic:sigil_magnetism>);
recipes.addShaped("nexus_exp_bm_sigil_magnetism", <bloodmagic:sigil_magnetism>, [
    [<bloodmagic:slate:2>, <thermalfoundation:material:32>, <bloodmagic:slate:2>],
    [<thermalfoundation:material:32>, <minecraft:iron_block>, <thermalfoundation:material:32>],
    [<bloodmagic:slate:2>, <thermalfoundation:material:32>, <bloodmagic:slate:2>]
]);

// Сигил призрачного моста
recipes.remove(<bloodmagic:sigil_phantom_bridge>);
recipes.addShaped("nexus_exp_bm_sigil_phantom_bridge", <bloodmagic:sigil_phantom_bridge>, [
    [<bloodmagic:slate:3>, <minecraft:ender_pearl>, <bloodmagic:slate:3>],
    [<minecraft:stone>, <bloodmagic:slate:3>, <minecraft:stone>],
    [<bloodmagic:slate:3>, <minecraft:ender_pearl>, <bloodmagic:slate:3>]
]);

// Сигил пустоты
recipes.remove(<bloodmagic:sigil_void>);
recipes.addShaped("nexus_exp_bm_sigil_void", <bloodmagic:sigil_void>, [
    [<bloodmagic:slate:1>, <minecraft:bucket>, <bloodmagic:slate:1>],
    [<minecraft:bucket>, <minecraft:nether_star>, <minecraft:bucket>],
    [<bloodmagic:slate:1>, <minecraft:bucket>, <bloodmagic:slate:1>]
]);

// Сигил быстрой добычи
recipes.remove(<bloodmagic:sigil_fast_miner>);
recipes.addShaped("nexus_exp_bm_sigil_fast_miner", <bloodmagic:sigil_fast_miner>, [
    [<bloodmagic:slate:2>, <minecraft:iron_pickaxe>, <bloodmagic:slate:2>],
    [<minecraft:gold_pickaxe>, <minecraft:diamond_pickaxe>, <minecraft:gold_pickaxe>],
    [<bloodmagic:slate:2>, <minecraft:iron_pickaxe>, <bloodmagic:slate:2>]
]);

// Крошечный тартаров самоцвет
recipes.remove(<bloodmagic:soul_gem:0>);
recipes.addShaped("nexus_exp_bm_gem_petty", <bloodmagic:soul_gem:0>, [
    [null, <minecraft:gold_ingot>, null],
    [<minecraft:redstone>, <minecraft:diamond>, <minecraft:redstone>],
    [null, <minecraft:glass>, null]
]);

// Малый тартаров самоцвет
recipes.remove(<bloodmagic:soul_gem:1>);
recipes.addShaped("nexus_exp_bm_gem_lesser", <bloodmagic:soul_gem:1>, [
    [null, <minecraft:gold_ingot>, null],
    [<bloodmagic:slate:1>, <bloodmagic:soul_gem:0>, <bloodmagic:slate:1>],
    [null, <minecraft:glass>, null]
]);

// Обычный тартаров самоцвет
recipes.remove(<bloodmagic:soul_gem:2>);
recipes.addShaped("nexus_exp_bm_gem_common", <bloodmagic:soul_gem:2>, [
    [null, <minecraft:gold_ingot>, null],
    [<bloodmagic:slate:2>, <bloodmagic:soul_gem:1>, <bloodmagic:slate:2>],
    [null, <minecraft:glass>, null]
]);

// Большой тартаров самоцвет
recipes.remove(<bloodmagic:soul_gem:3>);
recipes.addShaped("nexus_exp_bm_gem_greater", <bloodmagic:soul_gem:3>, [
    [null, <minecraft:gold_ingot>, null],
    [<bloodmagic:slate:3>, <bloodmagic:soul_gem:2>, <bloodmagic:slate:3>],
    [null, <minecraft:glass>, null]
]);

// Разумный меч Blood Magic
recipes.remove(<bloodmagic:sentient_sword>);
recipes.addShaped("nexus_exp_bm_sentient_sword", <bloodmagic:sentient_sword>, [
    [null, <bloodmagic:item_demon_crystal:0>, null],
    [null, <bloodmagic:item_demon_crystal:0>, null],
    [null, <bloodmagic:soul_gem:1>, null]
]);

// Магический верстак Thaumcraft
recipes.remove(<thaumcraft:arcane_workbench>);
recipes.addShaped("nexus_exp_tc_arcane_workbench", <thaumcraft:arcane_workbench>, [
    [<thaumcraft:salis_mundus>],
    [<minecraft:crafting_table>]
]);

// Тигель Thaumcraft
recipes.remove(<thaumcraft:crucible>);
recipes.addShaped("nexus_exp_tc_crucible", <thaumcraft:crucible>, [
    [<thaumcraft:salis_mundus>],
    [<minecraft:cauldron>]
]);

// Таумометр для сканирования аспектов
recipes.remove(<thaumcraft:thaumometer>);
recipes.addShaped("nexus_exp_tc_thaumometer", <thaumcraft:thaumometer>, [
    [<minecraft:gold_ingot>, <minecraft:glass>, <minecraft:gold_ingot>],
    [<minecraft:glass>, <thaumcraft:salis_mundus>, <minecraft:glass>],
    [<minecraft:gold_ingot>, <minecraft:glass>, <minecraft:gold_ingot>]
]);

// Очки откровения (Goggles of Revealing)
recipes.remove(<thaumcraft:goggles>);
recipes.addShaped("nexus_exp_tc_goggles", <thaumcraft:goggles>, [
    [<minecraft:leather>, <thaumcraft:ingot:0>, <minecraft:leather>],
    [<thaumcraft:thaumometer>, null, <thaumcraft:thaumometer>]
]);

// Матрица наполнения Thaumcraft
recipes.remove(<thaumcraft:infusion_matrix>);
recipes.addShaped("nexus_exp_tc_infusion_matrix", <thaumcraft:infusion_matrix>, [
    [<thaumcraft:stone_arcane>, <minecraft:ender_pearl>, <thaumcraft:stone_arcane>],
    [<minecraft:ender_pearl>, <thaumcraft:salis_mundus>, <minecraft:ender_pearl>],
    [<thaumcraft:stone_arcane>, <minecraft:ender_pearl>, <thaumcraft:stone_arcane>]
]);

// Пьедестал наполнения
recipes.remove(<thaumcraft:pedestal_arcane>);
recipes.addShaped("nexus_exp_tc_pedestal", <thaumcraft:pedestal_arcane> * 2, [
    [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],
    [null, <thaumcraft:stone_arcane>, null],
    [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]
]);

// Базовая метательная перчатка
recipes.remove(<thaumcraft:caster_basic>);
recipes.addShaped("nexus_exp_tc_caster_gauntlet", <thaumcraft:caster_basic>, [
    [<thermalfoundation:material:32>, <minecraft:leather>, <thermalfoundation:material:32>],
    [<minecraft:leather>, <thaumcraft:salis_mundus>, <minecraft:leather>],
    [<thermalfoundation:material:32>, <minecraft:leather>, <thermalfoundation:material:32>]
]);

// Семена пустоты Thaumcraft
recipes.addShaped("nexus_exp_tc_void_seed_craft", <thaumcraft:void_seed> * 2, [
    [<minecraft:ender_eye>, <minecraft:obsidian>, <minecraft:ender_eye>],
    [<minecraft:obsidian>, <thaumcraft:salis_mundus>, <minecraft:obsidian>],
    [<minecraft:ender_eye>, <minecraft:obsidian>, <minecraft:ender_eye>]
]);

// Банка для эссенции Thaumcraft
recipes.remove(<thaumcraft:jar_normal>);
recipes.addShaped("nexus_exp_tc_jar", <thaumcraft:jar_normal>, [
    [<minecraft:glass>, <minecraft:slab>, <minecraft:glass>],
    [<minecraft:glass>, null, <minecraft:glass>],
    [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
]);

// Стеклянный флакон для эссенции
recipes.remove(<thaumcraft:phial:0>);
recipes.addShaped("nexus_exp_tc_phial", <thaumcraft:phial:0> * 8, [
    [null, <minecraft:glass>, null],
    [<minecraft:glass>, null, <minecraft:glass>],
    [null, <minecraft:glass>, null]
]);

// Дистиллятор эссенции (Alembic)
recipes.remove(<thaumcraft:alembic>);
recipes.addShaped("nexus_exp_tc_alembic", <thaumcraft:alembic>, [
    [<thermalfoundation:material:32>, <minecraft:bucket>, <thermalfoundation:material:32>],
    [<minecraft:glass>, <thaumcraft:crucible>, <minecraft:glass>],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]
]);

// Печь очистки эссенции
recipes.remove(<thaumcraft:smelter_basic>);
recipes.addShaped("nexus_exp_tc_smeltery", <thaumcraft:smelter_basic>, [
    [<thaumcraft:stone_arcane>, <minecraft:furnace>, <thaumcraft:stone_arcane>],
    [<thaumcraft:stone_arcane>, <thaumcraft:crucible>, <thaumcraft:stone_arcane>],
    [<thaumcraft:stone_arcane>, <minecraft:furnace>, <thaumcraft:stone_arcane>]
]);

// Стабилизатор рунической матрицы
recipes.remove(<thaumcraft:stabilizer>);
recipes.addShaped("nexus_exp_tc_stabilizer", <thaumcraft:stabilizer>, [
    [<thaumcraft:ingot:0>, <minecraft:ender_eye>, <thaumcraft:ingot:0>],
    [<minecraft:diamond>, <thaumcraft:salis_mundus>, <minecraft:diamond>],
    [<thaumcraft:ingot:0>, <minecraft:gold_block>, <thaumcraft:ingot:0>]
]);

// Инкрустация матрицы наполнения
recipes.remove(<thaumcraft:matrix_cost>);
recipes.addShaped("nexus_exp_tc_inlay", <thaumcraft:matrix_cost>, [
    [<thaumcraft:stone_arcane>, <thaumcraft:ingot:0>, <thaumcraft:stone_arcane>],
    [<thaumcraft:ingot:0>, <thaumcraft:salis_mundus>, <thaumcraft:ingot:0>],
    [<thaumcraft:stone_arcane>, <thaumcraft:ingot:0>, <thaumcraft:stone_arcane>]
]);

// Фокус огня Thaumcraft
recipes.addShaped("nexus_exp_tc_focus_fire", <thaumcraft:focus_1>, [
    [null, <minecraft:blaze_powder>, null],
    [<minecraft:quartz>, <thaumcraft:salis_mundus>, <minecraft:quartz>],
    [null, <minecraft:blaze_powder>, null]
]);

// Фокус холода Thaumcraft
recipes.addShaped("nexus_exp_tc_focus_frost", <thaumcraft:focus_2>, [
    [null, <minecraft:snowball>, null],
    [<minecraft:quartz>, <thaumcraft:salis_mundus>, <minecraft:quartz>],
    [null, <minecraft:snowball>, null]
]);

// Фокус молнии Thaumcraft
recipes.addShaped("nexus_exp_tc_focus_shock", <thaumcraft:focus_3>, [
    [null, <minecraft:glowstone_dust>, null],
    [<minecraft:quartz>, <thaumcraft:salis_mundus>, <minecraft:quartz>],
    [null, <minecraft:glowstone_dust>, null]
]);

// Шлем таум-крепости
recipes.addShaped("nexus_exp_tc_fortress_helm", <thaumcraft:fortress_helm>, [
    [<thaumcraft:ingot:0>, <thaumcraft:ingot:0>, <thaumcraft:ingot:0>],
    [<thaumcraft:ingot:0>, <thaumcraft:goggles>, <thaumcraft:ingot:0>]
]);

// Кираса таум-крепости
recipes.addShaped("nexus_exp_tc_fortress_chest", <thaumcraft:fortress_chest>, [
    [<thaumcraft:ingot:0>, null, <thaumcraft:ingot:0>],
    [<thaumcraft:ingot:0>, <thaumcraft:ingot:0>, <thaumcraft:ingot:0>],
    [<thaumcraft:ingot:0>, <thaumcraft:ingot:0>, <thaumcraft:ingot:0>]
]);

// Поножи таум-крепости
recipes.addShaped("nexus_exp_tc_fortress_legs", <thaumcraft:fortress_legs>, [
    [<thaumcraft:ingot:0>, <thaumcraft:ingot:0>, <thaumcraft:ingot:0>],
    [<thaumcraft:ingot:0>, null, <thaumcraft:ingot:0>],
    [<thaumcraft:ingot:0>, null, <thaumcraft:ingot:0>]
]);

// Магический левитатор
recipes.addShaped("nexus_exp_tc_arcane_levitator", <thaumcraft:levitator>, [
    [<thermalfoundation:material:32>, <minecraft:feather>, <thermalfoundation:material:32>],
    [<thaumcraft:stone_arcane>, <thaumcraft:salis_mundus>, <thaumcraft:stone_arcane>],
    [<thermalfoundation:material:32>, <thaumcraft:stone_arcane>, <thermalfoundation:material:32>]
]);

// Пустотный сифон
recipes.addShaped("nexus_exp_tc_void_siphon", <thaumcraft:void_siphon>, [
    [<thaumcraft:ingot:1>, <minecraft:ender_eye>, <thaumcraft:ingot:1>],
    [<thaumcraft:ingot:1>, <thaumcraft:salis_mundus>, <thaumcraft:ingot:1>],
    [<thaumcraft:ingot:1>, <thaumcraft:stone_arcane>, <thaumcraft:ingot:1>]
]);
