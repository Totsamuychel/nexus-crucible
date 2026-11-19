// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Forestry Apiculture & Mystical Agriculture Seeds
// Generated Recipes: 170
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Базовое семя процветания (Prosperity Seed)
recipes.remove(<mysticalagriculture:crafting:15>);
recipes.addShaped("nexus_exp_ma_prosperity_seed", <mysticalagriculture:crafting:15>, [
    [<mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:5>],
    [<mysticalagriculture:crafting:5>, <minecraft:wheat_seeds>, <mysticalagriculture:crafting:5>],
    [<mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:5>]
]);

// Кристалл наполнения (Infusion Crystal)
recipes.remove(<mysticalagriculture:infusion_crystal>);
recipes.addShaped("nexus_exp_ma_infusion_crystal", <mysticalagriculture:infusion_crystal>, [
    [<mysticalagriculture:crafting:5>, <minecraft:diamond>, <mysticalagriculture:crafting:5>],
    [<minecraft:diamond>, <minecraft:nether_star>, <minecraft:diamond>],
    [<mysticalagriculture:crafting:5>, <minecraft:diamond>, <mysticalagriculture:crafting:5>]
]);

// Мастер-кристалл наполнения (Master Infusion Crystal)
recipes.remove(<mysticalagriculture:master_infusion_crystal>);
recipes.addShaped("nexus_exp_ma_master_infusion_crystal", <mysticalagriculture:master_infusion_crystal>, [
    [<mysticalagriculture:crafting:4>, <contenttweaker:celestial_binding_matrix>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:infusion_crystal>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <draconicevolution:wyvern_core>, <mysticalagriculture:crafting:4>]
]);

// Базовое семя Tier 1
recipes.remove(<mysticalagriculture:crafting:16>);
recipes.addShaped("nexus_exp_ma_seed_t1", <mysticalagriculture:crafting:16>, [
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>],
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:15>, <mysticalagriculture:crafting:0>],
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>]
]);

// Продвинутое семя Tier 2
recipes.remove(<mysticalagriculture:crafting:17>);
recipes.addShaped("nexus_exp_ma_seed_t2", <mysticalagriculture:crafting:17>, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:16>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Элитное семя Tier 3
recipes.remove(<mysticalagriculture:crafting:18>);
recipes.addShaped("nexus_exp_ma_seed_t3", <mysticalagriculture:crafting:18>, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:17>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Высшее семя Tier 4
recipes.remove(<mysticalagriculture:crafting:19>);
recipes.addShaped("nexus_exp_ma_seed_t4", <mysticalagriculture:crafting:19>, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:18>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Супремиум семя Tier 5
recipes.remove(<mysticalagriculture:crafting:20>);
recipes.addShaped("nexus_exp_ma_seed_t5", <mysticalagriculture:crafting:20>, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Уголь из эссенции
recipes.addShaped("nexus_exp_ma_res_coal", <minecraft:coal> * 12, [
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>],
    [<mysticalagriculture:crafting:0>, null, <mysticalagriculture:crafting:0>],
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>]
]);

// Уголь из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_coal", <minecraft:coal> * 1, [
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>],
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>]
]);

// Семя культуры: Уголь из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_coal", <mysticalagriculture:coal_seeds>, [
    [<mysticalagriculture:crafting:0>, <minecraft:coal>, <mysticalagriculture:crafting:0>],
    [<minecraft:coal>, <mysticalagriculture:crafting:16>, <minecraft:coal>],
    [<mysticalagriculture:crafting:0>, <minecraft:coal>, <mysticalagriculture:crafting:0>]
]);

// Железо из эссенции
recipes.addShaped("nexus_exp_ma_res_iron", <minecraft:iron_ingot> * 6, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Железо из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_iron", <minecraft:iron_ingot> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Железо из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_iron", <mysticalagriculture:iron_seeds>, [
    [<mysticalagriculture:crafting:1>, <minecraft:iron_ingot>, <mysticalagriculture:crafting:1>],
    [<minecraft:iron_ingot>, <mysticalagriculture:crafting:17>, <minecraft:iron_ingot>],
    [<mysticalagriculture:crafting:1>, <minecraft:iron_ingot>, <mysticalagriculture:crafting:1>]
]);

// Золото из эссенции
recipes.addShaped("nexus_exp_ma_res_gold", <minecraft:gold_ingot> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Золото из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_gold", <minecraft:gold_ingot> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Золото из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_gold", <mysticalagriculture:gold_seeds>, [
    [<mysticalagriculture:crafting:2>, <minecraft:gold_ingot>, <mysticalagriculture:crafting:2>],
    [<minecraft:gold_ingot>, <mysticalagriculture:crafting:18>, <minecraft:gold_ingot>],
    [<mysticalagriculture:crafting:2>, <minecraft:gold_ingot>, <mysticalagriculture:crafting:2>]
]);

// Лазурит из эссенции
recipes.addShaped("nexus_exp_ma_res_lapis", <minecraft:lapis_lazuli> * 12, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Лазурит из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_lapis", <minecraft:lapis_lazuli> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Лазурит из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_lapis", <mysticalagriculture:lapis_seeds>, [
    [<mysticalagriculture:crafting:1>, <minecraft:lapis_lazuli>, <mysticalagriculture:crafting:1>],
    [<minecraft:lapis_lazuli>, <mysticalagriculture:crafting:17>, <minecraft:lapis_lazuli>],
    [<mysticalagriculture:crafting:1>, <minecraft:lapis_lazuli>, <mysticalagriculture:crafting:1>]
]);

// Редстоун из эссенции
recipes.addShaped("nexus_exp_ma_res_redstone", <minecraft:redstone> * 16, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Редстоун из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_redstone", <minecraft:redstone> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Редстоун из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_redstone", <mysticalagriculture:redstone_seeds>, [
    [<mysticalagriculture:crafting:1>, <minecraft:redstone>, <mysticalagriculture:crafting:1>],
    [<minecraft:redstone>, <mysticalagriculture:crafting:17>, <minecraft:redstone>],
    [<mysticalagriculture:crafting:1>, <minecraft:redstone>, <mysticalagriculture:crafting:1>]
]);

// Светокамень из эссенции
recipes.addShaped("nexus_exp_ma_res_glowstone", <minecraft:glowstone_dust> * 16, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Светокамень из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_glowstone", <minecraft:glowstone_dust> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Светокамень из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_glowstone", <mysticalagriculture:glowstone_seeds>, [
    [<mysticalagriculture:crafting:1>, <minecraft:glowstone_dust>, <mysticalagriculture:crafting:1>],
    [<minecraft:glowstone_dust>, <mysticalagriculture:crafting:17>, <minecraft:glowstone_dust>],
    [<mysticalagriculture:crafting:1>, <minecraft:glowstone_dust>, <mysticalagriculture:crafting:1>]
]);

// Алмазы из эссенции
recipes.addShaped("nexus_exp_ma_res_diamond", <minecraft:diamond> * 2, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, null, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Алмазы из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_diamond", <minecraft:diamond> * 1, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Семя культуры: Алмазы из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_diamond", <mysticalagriculture:diamond_seeds>, [
    [<mysticalagriculture:crafting:3>, <minecraft:diamond>, <mysticalagriculture:crafting:3>],
    [<minecraft:diamond>, <mysticalagriculture:crafting:19>, <minecraft:diamond>],
    [<mysticalagriculture:crafting:3>, <minecraft:diamond>, <mysticalagriculture:crafting:3>]
]);

// Изумруды из эссенции
recipes.addShaped("nexus_exp_ma_res_emerald", <minecraft:emerald> * 2, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, null, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Изумруды из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_emerald", <minecraft:emerald> * 1, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Семя культуры: Изумруды из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_emerald", <mysticalagriculture:emerald_seeds>, [
    [<mysticalagriculture:crafting:3>, <minecraft:emerald>, <mysticalagriculture:crafting:3>],
    [<minecraft:emerald>, <mysticalagriculture:crafting:19>, <minecraft:emerald>],
    [<mysticalagriculture:crafting:3>, <minecraft:emerald>, <mysticalagriculture:crafting:3>]
]);

// Обсидиан из эссенции
recipes.addShaped("nexus_exp_ma_res_obsidian", <minecraft:obsidian> * 8, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Обсидиан из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_obsidian", <minecraft:obsidian> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Обсидиан из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_obsidian", <mysticalagriculture:obsidian_seeds>, [
    [<mysticalagriculture:crafting:1>, <minecraft:obsidian>, <mysticalagriculture:crafting:1>],
    [<minecraft:obsidian>, <mysticalagriculture:crafting:17>, <minecraft:obsidian>],
    [<mysticalagriculture:crafting:1>, <minecraft:obsidian>, <mysticalagriculture:crafting:1>]
]);

// Незерак из эссенции
recipes.addShaped("nexus_exp_ma_res_netherrack", <minecraft:netherrack> * 32, [
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>],
    [<mysticalagriculture:crafting:0>, null, <mysticalagriculture:crafting:0>],
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>]
]);

// Незерак из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_netherrack", <minecraft:netherrack> * 1, [
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>],
    [<mysticalagriculture:crafting:0>, <mysticalagriculture:crafting:0>]
]);

// Семя культуры: Незерак из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_netherrack", <mysticalagriculture:netherrack_seeds>, [
    [<mysticalagriculture:crafting:0>, <minecraft:netherrack>, <mysticalagriculture:crafting:0>],
    [<minecraft:netherrack>, <mysticalagriculture:crafting:16>, <minecraft:netherrack>],
    [<mysticalagriculture:crafting:0>, <minecraft:netherrack>, <mysticalagriculture:crafting:0>]
]);

// Камень Края из эссенции
recipes.addShaped("nexus_exp_ma_res_endstone", <minecraft:end_stone> * 16, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Камень Края из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_endstone", <minecraft:end_stone> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Камень Края из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_endstone", <mysticalagriculture:endstone_seeds>, [
    [<mysticalagriculture:crafting:2>, <minecraft:end_stone>, <mysticalagriculture:crafting:2>],
    [<minecraft:end_stone>, <mysticalagriculture:crafting:18>, <minecraft:end_stone>],
    [<mysticalagriculture:crafting:2>, <minecraft:end_stone>, <mysticalagriculture:crafting:2>]
]);

// Кварц Незера из эссенции
recipes.addShaped("nexus_exp_ma_res_quartz", <minecraft:quartz> * 8, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Кварц Незера из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_quartz", <minecraft:quartz> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Кварц Незера из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_quartz", <mysticalagriculture:quartz_seeds>, [
    [<mysticalagriculture:crafting:1>, <minecraft:quartz>, <mysticalagriculture:crafting:1>],
    [<minecraft:quartz>, <mysticalagriculture:crafting:17>, <minecraft:quartz>],
    [<mysticalagriculture:crafting:1>, <minecraft:quartz>, <mysticalagriculture:crafting:1>]
]);

// Истинный кварц из эссенции
recipes.addShaped("nexus_exp_ma_res_certus", <appliedenergistics2:material:0> * 8, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Истинный кварц из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_certus", <appliedenergistics2:material:0> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Истинный кварц из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_certus", <mysticalagriculture:certus_seeds>, [
    [<mysticalagriculture:crafting:2>, <appliedenergistics2:material:0>, <mysticalagriculture:crafting:2>],
    [<appliedenergistics2:material:0>, <mysticalagriculture:crafting:18>, <appliedenergistics2:material:0>],
    [<mysticalagriculture:crafting:2>, <appliedenergistics2:material:0>, <mysticalagriculture:crafting:2>]
]);

// Изменчивый кристалл из эссенции
recipes.addShaped("nexus_exp_ma_res_fluix", <appliedenergistics2:material:7> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Изменчивый кристалл из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_fluix", <appliedenergistics2:material:7> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Изменчивый кристалл из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_fluix", <mysticalagriculture:fluix_seeds>, [
    [<mysticalagriculture:crafting:2>, <appliedenergistics2:material:7>, <mysticalagriculture:crafting:2>],
    [<appliedenergistics2:material:7>, <mysticalagriculture:crafting:18>, <appliedenergistics2:material:7>],
    [<mysticalagriculture:crafting:2>, <appliedenergistics2:material:7>, <mysticalagriculture:crafting:2>]
]);

// Кремний из эссенции
recipes.addShaped("nexus_exp_ma_res_silicon", <appliedenergistics2:material:5> * 8, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Кремний из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_silicon", <appliedenergistics2:material:5> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Кремний из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_silicon", <mysticalagriculture:silicon_seeds>, [
    [<mysticalagriculture:crafting:1>, <appliedenergistics2:material:5>, <mysticalagriculture:crafting:1>],
    [<appliedenergistics2:material:5>, <mysticalagriculture:crafting:17>, <appliedenergistics2:material:5>],
    [<mysticalagriculture:crafting:1>, <appliedenergistics2:material:5>, <mysticalagriculture:crafting:1>]
]);

// Сера из эссенции
recipes.addShaped("nexus_exp_ma_res_sulfur", <thermalfoundation:material:771> * 8, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Сера из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_sulfur", <thermalfoundation:material:771> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Сера из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_sulfur", <mysticalagriculture:sulfur_seeds>, [
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:771>, <mysticalagriculture:crafting:1>],
    [<thermalfoundation:material:771>, <mysticalagriculture:crafting:17>, <thermalfoundation:material:771>],
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:771>, <mysticalagriculture:crafting:1>]
]);

// Селитра из эссенции
recipes.addShaped("nexus_exp_ma_res_saltpeter", <thermalfoundation:material:772> * 8, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Селитра из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_saltpeter", <thermalfoundation:material:772> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Селитра из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_saltpeter", <mysticalagriculture:saltpeter_seeds>, [
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:772>, <mysticalagriculture:crafting:1>],
    [<thermalfoundation:material:772>, <mysticalagriculture:crafting:17>, <thermalfoundation:material:772>],
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:772>, <mysticalagriculture:crafting:1>]
]);

// Медь из эссенции
recipes.addShaped("nexus_exp_ma_res_copper", <thermalfoundation:material:128> * 6, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Медь из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_copper", <thermalfoundation:material:128> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Медь из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_copper", <mysticalagriculture:copper_seeds>, [
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:128>, <mysticalagriculture:crafting:1>],
    [<thermalfoundation:material:128>, <mysticalagriculture:crafting:17>, <thermalfoundation:material:128>],
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:128>, <mysticalagriculture:crafting:1>]
]);

// Олово из эссенции
recipes.addShaped("nexus_exp_ma_res_tin", <thermalfoundation:material:129> * 6, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Олово из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_tin", <thermalfoundation:material:129> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Олово из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_tin", <mysticalagriculture:tin_seeds>, [
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:129>, <mysticalagriculture:crafting:1>],
    [<thermalfoundation:material:129>, <mysticalagriculture:crafting:17>, <thermalfoundation:material:129>],
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:129>, <mysticalagriculture:crafting:1>]
]);

// Серебро из эссенции
recipes.addShaped("nexus_exp_ma_res_silver", <thermalfoundation:material:130> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Серебро из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_silver", <thermalfoundation:material:130> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Серебро из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_silver", <mysticalagriculture:silver_seeds>, [
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:130>, <mysticalagriculture:crafting:2>],
    [<thermalfoundation:material:130>, <mysticalagriculture:crafting:18>, <thermalfoundation:material:130>],
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:130>, <mysticalagriculture:crafting:2>]
]);

// Свинец из эссенции
recipes.addShaped("nexus_exp_ma_res_lead", <thermalfoundation:material:131> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Свинец из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_lead", <thermalfoundation:material:131> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Свинец из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_lead", <mysticalagriculture:lead_seeds>, [
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:131>, <mysticalagriculture:crafting:2>],
    [<thermalfoundation:material:131>, <mysticalagriculture:crafting:18>, <thermalfoundation:material:131>],
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:131>, <mysticalagriculture:crafting:2>]
]);

// Алюминий из эссенции
recipes.addShaped("nexus_exp_ma_res_aluminum", <thermalfoundation:material:132> * 6, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Алюминий из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_aluminum", <thermalfoundation:material:132> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Алюминий из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_aluminum", <mysticalagriculture:aluminum_seeds>, [
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:132>, <mysticalagriculture:crafting:1>],
    [<thermalfoundation:material:132>, <mysticalagriculture:crafting:17>, <thermalfoundation:material:132>],
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:132>, <mysticalagriculture:crafting:1>]
]);

// Никель из эссенции
recipes.addShaped("nexus_exp_ma_res_nickel", <thermalfoundation:material:133> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Никель из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_nickel", <thermalfoundation:material:133> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Никель из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_nickel", <mysticalagriculture:nickel_seeds>, [
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:133>, <mysticalagriculture:crafting:2>],
    [<thermalfoundation:material:133>, <mysticalagriculture:crafting:18>, <thermalfoundation:material:133>],
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:133>, <mysticalagriculture:crafting:2>]
]);

// Платина из эссенции
recipes.addShaped("nexus_exp_ma_res_platinum", <thermalfoundation:material:134> * 2, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, null, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Платина из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_platinum", <thermalfoundation:material:134> * 1, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Семя культуры: Платина из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_platinum", <mysticalagriculture:platinum_seeds>, [
    [<mysticalagriculture:crafting:3>, <thermalfoundation:material:134>, <mysticalagriculture:crafting:3>],
    [<thermalfoundation:material:134>, <mysticalagriculture:crafting:19>, <thermalfoundation:material:134>],
    [<mysticalagriculture:crafting:3>, <thermalfoundation:material:134>, <mysticalagriculture:crafting:3>]
]);

// Иридий из эссенции
recipes.addShaped("nexus_exp_ma_res_iridium", <thermalfoundation:material:135> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, null, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Иридий из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_iridium", <thermalfoundation:material:135> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Семя культуры: Иридий из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_iridium", <mysticalagriculture:iridium_seeds>, [
    [<mysticalagriculture:crafting:4>, <thermalfoundation:material:135>, <mysticalagriculture:crafting:4>],
    [<thermalfoundation:material:135>, <mysticalagriculture:crafting:20>, <thermalfoundation:material:135>],
    [<mysticalagriculture:crafting:4>, <thermalfoundation:material:135>, <mysticalagriculture:crafting:4>]
]);

// Сталь из эссенции
recipes.addShaped("nexus_exp_ma_res_steel", <thermalfoundation:material:160> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Сталь из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_steel", <thermalfoundation:material:160> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Сталь из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_steel", <mysticalagriculture:steel_seeds>, [
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:160>, <mysticalagriculture:crafting:2>],
    [<thermalfoundation:material:160>, <mysticalagriculture:crafting:18>, <thermalfoundation:material:160>],
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:160>, <mysticalagriculture:crafting:2>]
]);

// Электрум из эссенции
recipes.addShaped("nexus_exp_ma_res_electrum", <thermalfoundation:material:161> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Электрум из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_electrum", <thermalfoundation:material:161> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Электрум из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_electrum", <mysticalagriculture:electrum_seeds>, [
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:161>, <mysticalagriculture:crafting:2>],
    [<thermalfoundation:material:161>, <mysticalagriculture:crafting:18>, <thermalfoundation:material:161>],
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:161>, <mysticalagriculture:crafting:2>]
]);

// Инвар из эссенции
recipes.addShaped("nexus_exp_ma_res_invar", <thermalfoundation:material:162> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Инвар из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_invar", <thermalfoundation:material:162> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Инвар из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_invar", <mysticalagriculture:invar_seeds>, [
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:162>, <mysticalagriculture:crafting:2>],
    [<thermalfoundation:material:162>, <mysticalagriculture:crafting:18>, <thermalfoundation:material:162>],
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:162>, <mysticalagriculture:crafting:2>]
]);

// Бронза из эссенции
recipes.addShaped("nexus_exp_ma_res_bronze", <thermalfoundation:material:163> * 6, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Бронза из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_bronze", <thermalfoundation:material:163> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Бронза из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_bronze", <mysticalagriculture:bronze_seeds>, [
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:163>, <mysticalagriculture:crafting:1>],
    [<thermalfoundation:material:163>, <mysticalagriculture:crafting:17>, <thermalfoundation:material:163>],
    [<mysticalagriculture:crafting:1>, <thermalfoundation:material:163>, <mysticalagriculture:crafting:1>]
]);

// Константан из эссенции
recipes.addShaped("nexus_exp_ma_res_constantan", <thermalfoundation:material:164> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Константан из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_constantan", <thermalfoundation:material:164> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Константан из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_constantan", <mysticalagriculture:constantan_seeds>, [
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:164>, <mysticalagriculture:crafting:2>],
    [<thermalfoundation:material:164>, <mysticalagriculture:crafting:18>, <thermalfoundation:material:164>],
    [<mysticalagriculture:crafting:2>, <thermalfoundation:material:164>, <mysticalagriculture:crafting:2>]
]);

// Сигналиум из эссенции
recipes.addShaped("nexus_exp_ma_res_signalum", <thermalfoundation:material:165> * 2, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, null, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Сигналиум из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_signalum", <thermalfoundation:material:165> * 1, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Семя культуры: Сигналиум из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_signalum", <mysticalagriculture:signalum_seeds>, [
    [<mysticalagriculture:crafting:3>, <thermalfoundation:material:165>, <mysticalagriculture:crafting:3>],
    [<thermalfoundation:material:165>, <mysticalagriculture:crafting:19>, <thermalfoundation:material:165>],
    [<mysticalagriculture:crafting:3>, <thermalfoundation:material:165>, <mysticalagriculture:crafting:3>]
]);

// Люмиум из эссенции
recipes.addShaped("nexus_exp_ma_res_lumium", <thermalfoundation:material:166> * 2, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, null, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Люмиум из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_lumium", <thermalfoundation:material:166> * 1, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Семя культуры: Люмиум из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_lumium", <mysticalagriculture:lumium_seeds>, [
    [<mysticalagriculture:crafting:3>, <thermalfoundation:material:166>, <mysticalagriculture:crafting:3>],
    [<thermalfoundation:material:166>, <mysticalagriculture:crafting:19>, <thermalfoundation:material:166>],
    [<mysticalagriculture:crafting:3>, <thermalfoundation:material:166>, <mysticalagriculture:crafting:3>]
]);

// Эндериум из эссенции
recipes.addShaped("nexus_exp_ma_res_enderium", <thermalfoundation:material:167> * 2, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, null, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Эндериум из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_enderium", <thermalfoundation:material:167> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Семя культуры: Эндериум из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_enderium", <mysticalagriculture:enderium_seeds>, [
    [<mysticalagriculture:crafting:4>, <thermalfoundation:material:167>, <mysticalagriculture:crafting:4>],
    [<thermalfoundation:material:167>, <mysticalagriculture:crafting:20>, <thermalfoundation:material:167>],
    [<mysticalagriculture:crafting:4>, <thermalfoundation:material:167>, <mysticalagriculture:crafting:4>]
]);

// Осмий из эссенции
recipes.addShaped("nexus_exp_ma_res_osmium", <mekanism:ingot:1> * 6, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Осмий из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_osmium", <mekanism:ingot:1> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Осмий из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_osmium", <mysticalagriculture:osmium_seeds>, [
    [<mysticalagriculture:crafting:1>, <mekanism:ingot:1>, <mysticalagriculture:crafting:1>],
    [<mekanism:ingot:1>, <mysticalagriculture:crafting:17>, <mekanism:ingot:1>],
    [<mysticalagriculture:crafting:1>, <mekanism:ingot:1>, <mysticalagriculture:crafting:1>]
]);

// Очищенный обсидиан из эссенции
recipes.addShaped("nexus_exp_ma_res_refined_obsidian", <mekanism:ingot:0> * 2, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, null, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Очищенный обсидиан из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_refined_obsidian", <mekanism:ingot:0> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Семя культуры: Очищенный обсидиан из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_refined_obsidian", <mysticalagriculture:refined_obsidian_seeds>, [
    [<mysticalagriculture:crafting:4>, <mekanism:ingot:0>, <mysticalagriculture:crafting:4>],
    [<mekanism:ingot:0>, <mysticalagriculture:crafting:20>, <mekanism:ingot:0>],
    [<mysticalagriculture:crafting:4>, <mekanism:ingot:0>, <mysticalagriculture:crafting:4>]
]);

// Таумий из эссенции
recipes.addShaped("nexus_exp_ma_res_thaumium", <thaumcraft:ingot:0> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Таумий из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_thaumium", <thaumcraft:ingot:0> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Таумий из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_thaumium", <mysticalagriculture:thaumium_seeds>, [
    [<mysticalagriculture:crafting:2>, <thaumcraft:ingot:0>, <mysticalagriculture:crafting:2>],
    [<thaumcraft:ingot:0>, <mysticalagriculture:crafting:18>, <thaumcraft:ingot:0>],
    [<mysticalagriculture:crafting:2>, <thaumcraft:ingot:0>, <mysticalagriculture:crafting:2>]
]);

// Манасталь из эссенции
recipes.addShaped("nexus_exp_ma_res_manasteel", <botania:manaresource:0> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Манасталь из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_manasteel", <botania:manaresource:0> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Манасталь из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_manasteel", <mysticalagriculture:manasteel_seeds>, [
    [<mysticalagriculture:crafting:2>, <botania:manaresource:0>, <mysticalagriculture:crafting:2>],
    [<botania:manaresource:0>, <mysticalagriculture:crafting:18>, <botania:manaresource:0>],
    [<mysticalagriculture:crafting:2>, <botania:manaresource:0>, <mysticalagriculture:crafting:2>]
]);

// Террасталь из эссенции
recipes.addShaped("nexus_exp_ma_res_terrasteel", <botania:manaresource:4> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, null, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Террасталь из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_terrasteel", <botania:manaresource:4> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Семя культуры: Террасталь из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_terrasteel", <mysticalagriculture:terrasteel_seeds>, [
    [<mysticalagriculture:crafting:4>, <botania:manaresource:4>, <mysticalagriculture:crafting:4>],
    [<botania:manaresource:4>, <mysticalagriculture:crafting:20>, <botania:manaresource:4>],
    [<mysticalagriculture:crafting:4>, <botania:manaresource:4>, <mysticalagriculture:crafting:4>]
]);

// Элементий из эссенции
recipes.addShaped("nexus_exp_ma_res_elementium", <botania:manaresource:7> * 2, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, null, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Элементий из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_elementium", <botania:manaresource:7> * 1, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Семя культуры: Элементий из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_elementium", <mysticalagriculture:elementium_seeds>, [
    [<mysticalagriculture:crafting:3>, <botania:manaresource:7>, <mysticalagriculture:crafting:3>],
    [<botania:manaresource:7>, <mysticalagriculture:crafting:19>, <botania:manaresource:7>],
    [<mysticalagriculture:crafting:3>, <botania:manaresource:7>, <mysticalagriculture:crafting:3>]
]);

// Драконий из эссенции
recipes.addShaped("nexus_exp_ma_res_draconium", <draconicevolution:draconium_ingot> * 2, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, null, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Драконий из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_draconium", <draconicevolution:draconium_ingot> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Семя культуры: Драконий из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_draconium", <mysticalagriculture:draconium_seeds>, [
    [<mysticalagriculture:crafting:4>, <draconicevolution:draconium_ingot>, <mysticalagriculture:crafting:4>],
    [<draconicevolution:draconium_ingot>, <mysticalagriculture:crafting:20>, <draconicevolution:draconium_ingot>],
    [<mysticalagriculture:crafting:4>, <draconicevolution:draconium_ingot>, <mysticalagriculture:crafting:4>]
]);

// Уран из эссенции
recipes.addShaped("nexus_exp_ma_res_uranium", <nuclearcraft:uranium:0> * 4, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, null, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Уран из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_uranium", <nuclearcraft:uranium:0> * 1, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Семя культуры: Уран из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_uranium", <mysticalagriculture:uranium_seeds>, [
    [<mysticalagriculture:crafting:3>, <nuclearcraft:uranium:0>, <mysticalagriculture:crafting:3>],
    [<nuclearcraft:uranium:0>, <mysticalagriculture:crafting:19>, <nuclearcraft:uranium:0>],
    [<mysticalagriculture:crafting:3>, <nuclearcraft:uranium:0>, <mysticalagriculture:crafting:3>]
]);

// Торий из эссенции
recipes.addShaped("nexus_exp_ma_res_thorium", <nuclearcraft:thorium:0> * 4, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, null, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Торий из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_thorium", <nuclearcraft:thorium:0> * 1, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Семя культуры: Торий из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_thorium", <mysticalagriculture:thorium_seeds>, [
    [<mysticalagriculture:crafting:3>, <nuclearcraft:thorium:0>, <mysticalagriculture:crafting:3>],
    [<nuclearcraft:thorium:0>, <mysticalagriculture:crafting:19>, <nuclearcraft:thorium:0>],
    [<mysticalagriculture:crafting:3>, <nuclearcraft:thorium:0>, <mysticalagriculture:crafting:3>]
]);

// Бор из эссенции
recipes.addShaped("nexus_exp_ma_res_boron", <nuclearcraft:boron:0> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Бор из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_boron", <nuclearcraft:boron:0> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Бор из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_boron", <mysticalagriculture:boron_seeds>, [
    [<mysticalagriculture:crafting:2>, <nuclearcraft:boron:0>, <mysticalagriculture:crafting:2>],
    [<nuclearcraft:boron:0>, <mysticalagriculture:crafting:18>, <nuclearcraft:boron:0>],
    [<mysticalagriculture:crafting:2>, <nuclearcraft:boron:0>, <mysticalagriculture:crafting:2>]
]);

// Литий из эссенции
recipes.addShaped("nexus_exp_ma_res_lithium", <nuclearcraft:lithium:0> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Литий из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_lithium", <nuclearcraft:lithium:0> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Литий из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_lithium", <mysticalagriculture:lithium_seeds>, [
    [<mysticalagriculture:crafting:2>, <nuclearcraft:lithium:0>, <mysticalagriculture:crafting:2>],
    [<nuclearcraft:lithium:0>, <mysticalagriculture:crafting:18>, <nuclearcraft:lithium:0>],
    [<mysticalagriculture:crafting:2>, <nuclearcraft:lithium:0>, <mysticalagriculture:crafting:2>]
]);

// Магний из эссенции
recipes.addShaped("nexus_exp_ma_res_magnesium", <nuclearcraft:magnesium:0> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Магний из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_magnesium", <nuclearcraft:magnesium:0> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Магний из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_magnesium", <mysticalagriculture:magnesium_seeds>, [
    [<mysticalagriculture:crafting:2>, <nuclearcraft:magnesium:0>, <mysticalagriculture:crafting:2>],
    [<nuclearcraft:magnesium:0>, <mysticalagriculture:crafting:18>, <nuclearcraft:magnesium:0>],
    [<mysticalagriculture:crafting:2>, <nuclearcraft:magnesium:0>, <mysticalagriculture:crafting:2>]
]);

// Графит из эссенции
recipes.addShaped("nexus_exp_ma_res_graphite", <nuclearcraft:ingot:8> * 4, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, null, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Графит из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_graphite", <nuclearcraft:ingot:8> * 1, [
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>],
    [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]
]);

// Семя культуры: Графит из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_graphite", <mysticalagriculture:graphite_seeds>, [
    [<mysticalagriculture:crafting:1>, <nuclearcraft:ingot:8>, <mysticalagriculture:crafting:1>],
    [<nuclearcraft:ingot:8>, <mysticalagriculture:crafting:17>, <nuclearcraft:ingot:8>],
    [<mysticalagriculture:crafting:1>, <nuclearcraft:ingot:8>, <mysticalagriculture:crafting:1>]
]);

// Стержни всполоха из эссенции
recipes.addShaped("nexus_exp_ma_res_blaze", <minecraft:blaze_rod> * 4, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, null, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Стержни всполоха из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_blaze", <minecraft:blaze_rod> * 1, [
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>],
    [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]
]);

// Семя культуры: Стержни всполоха из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_blaze", <mysticalagriculture:blaze_seeds>, [
    [<mysticalagriculture:crafting:2>, <minecraft:blaze_rod>, <mysticalagriculture:crafting:2>],
    [<minecraft:blaze_rod>, <mysticalagriculture:crafting:18>, <minecraft:blaze_rod>],
    [<mysticalagriculture:crafting:2>, <minecraft:blaze_rod>, <mysticalagriculture:crafting:2>]
]);

// Слезы гаста из эссенции
recipes.addShaped("nexus_exp_ma_res_ghast", <minecraft:ghast_tear> * 2, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, null, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Слезы гаста из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_ghast", <minecraft:ghast_tear> * 1, [
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>],
    [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]
]);

// Семя культуры: Слезы гаста из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_ghast", <mysticalagriculture:ghast_seeds>, [
    [<mysticalagriculture:crafting:3>, <minecraft:ghast_tear>, <mysticalagriculture:crafting:3>],
    [<minecraft:ghast_tear>, <mysticalagriculture:crafting:19>, <minecraft:ghast_tear>],
    [<mysticalagriculture:crafting:3>, <minecraft:ghast_tear>, <mysticalagriculture:crafting:3>]
]);

// Череп визер-скелета из эссенции
recipes.addShaped("nexus_exp_ma_res_wither", <minecraft:skull:1> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, null, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Череп визер-скелета из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_wither", <minecraft:skull:1> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Семя культуры: Череп визер-скелета из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_wither", <mysticalagriculture:wither_seeds>, [
    [<mysticalagriculture:crafting:4>, <minecraft:skull:1>, <mysticalagriculture:crafting:4>],
    [<minecraft:skull:1>, <mysticalagriculture:crafting:20>, <minecraft:skull:1>],
    [<mysticalagriculture:crafting:4>, <minecraft:skull:1>, <mysticalagriculture:crafting:4>]
]);

// Звезда Незера из эссенции
recipes.addShaped("nexus_exp_ma_res_nether_star", <minecraft:nether_star> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, null, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Звезда Незера из эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_nether_star", <minecraft:nether_star> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Семя культуры: Звезда Незера из эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_nether_star", <mysticalagriculture:nether_star_seeds>, [
    [<mysticalagriculture:crafting:4>, <minecraft:nether_star>, <mysticalagriculture:crafting:4>],
    [<minecraft:nether_star>, <mysticalagriculture:crafting:20>, <minecraft:nether_star>],
    [<mysticalagriculture:crafting:4>, <minecraft:nether_star>, <mysticalagriculture:crafting:4>]
]);

// Драконье яйцо из высшей эссенции
recipes.addShaped("nexus_exp_ma_res_dragon_egg", <minecraft:dragon_egg> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, null, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Драконье яйцо из высшей эссенции (быстрый крафт 2х2)
recipes.addShaped("nexus_exp_ma_res_small_dragon_egg", <minecraft:dragon_egg> * 1, [
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>],
    [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]
]);

// Семя культуры: Драконье яйцо из высшей эссенции
recipes.addShaped("nexus_exp_ma_crop_seed_dragon_egg", <mysticalagriculture:dragon_egg_seeds>, [
    [<mysticalagriculture:crafting:4>, <minecraft:dragon_egg>, <mysticalagriculture:crafting:4>],
    [<minecraft:dragon_egg>, <mysticalagriculture:crafting:20>, <minecraft:dragon_egg>],
    [<mysticalagriculture:crafting:4>, <minecraft:dragon_egg>, <mysticalagriculture:crafting:4>]
]);

// Прочный каркас Forestry
recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped("nexus_exp_for_sturdy_casing", <forestry:sturdy_machine>, [
    [<thermalfoundation:material:355>, <thermalfoundation:material:355>, <thermalfoundation:material:355>],
    [<thermalfoundation:material:355>, null, <thermalfoundation:material:355>],
    [<thermalfoundation:material:355>, <thermalfoundation:material:355>, <thermalfoundation:material:355>]
]);

// Пропитанный каркас Forestry
recipes.remove(<forestry:impregnated_casing>);
recipes.addShaped("nexus_exp_for_impregnated_casing", <forestry:impregnated_casing>, [
    [<forestry:wood_transport>, <forestry:wood_transport>, <forestry:wood_transport>],
    [<forestry:wood_transport>, null, <forestry:wood_transport>],
    [<forestry:wood_transport>, <forestry:wood_transport>, <forestry:wood_transport>]
]);

// Соковыжималка (Squeezer)
recipes.remove(<forestry:squeezer>);
recipes.addShaped("nexus_exp_for_mach_squeezer", <forestry:squeezer>, [
    [<minecraft:piston>, <minecraft:glass>, <minecraft:piston>],
    [<minecraft:glass>, <forestry:sturdy_machine>, <minecraft:glass>],
    [<minecraft:piston>, <minecraft:glass>, <minecraft:piston>]
]);

// Центрифуга Forestry
recipes.remove(<forestry:centrifuge>);
recipes.addShaped("nexus_exp_for_mach_centrifuge", <forestry:centrifuge>, [
    [<minecraft:glass>, <minecraft:compass>, <minecraft:glass>],
    [<minecraft:glass>, <forestry:sturdy_machine>, <minecraft:glass>],
    [<minecraft:glass>, <minecraft:compass>, <minecraft:glass>]
]);

// Плотник (Carpenter)
recipes.remove(<forestry:carpenter>);
recipes.addShaped("nexus_exp_for_mach_carpenter", <forestry:carpenter>, [
    [<minecraft:glass>, <minecraft:crafting_table>, <minecraft:glass>],
    [<minecraft:glass>, <forestry:sturdy_machine>, <minecraft:glass>],
    [<minecraft:glass>, <minecraft:piston>, <minecraft:glass>]
]);

// Бродильный аппарат (Fermenter)
recipes.remove(<forestry:fermenter>);
recipes.addShaped("nexus_exp_for_mach_fermenter", <forestry:fermenter>, [
    [<minecraft:glass>, <minecraft:cauldron>, <minecraft:glass>],
    [<minecraft:glass>, <forestry:sturdy_machine>, <minecraft:glass>],
    [<minecraft:glass>, <minecraft:cauldron>, <minecraft:glass>]
]);

// Дистиллятор (Still)
recipes.remove(<forestry:still>);
recipes.addShaped("nexus_exp_for_mach_still", <forestry:still>, [
    [<minecraft:glass>, <minecraft:blaze_powder>, <minecraft:glass>],
    [<minecraft:glass>, <forestry:sturdy_machine>, <minecraft:glass>],
    [<minecraft:glass>, <minecraft:bucket>, <minecraft:glass>]
]);

// Производитель мутагена Gendustry
recipes.remove(<gendustry:mutagen_producer>);
recipes.addShaped("nexus_exp_gen_mutagen_producer", <gendustry:mutagen_producer>, [
    [<thermalfoundation:material:352>, <minecraft:furnace>, <thermalfoundation:material:352>],
    [<minecraft:bucket>, <forestry:sturdy_machine>, <minecraft:bucket>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:288>, <thermalfoundation:material:352>]
]);

// Мутатрон Gendustry
recipes.remove(<gendustry:mutatron>);
recipes.addShaped("nexus_exp_gen_mutatron", <gendustry:mutatron>, [
    [<thermalfoundation:material:353>, <gendustry:gene_sample_blank>, <thermalfoundation:material:353>],
    [<minecraft:nether_star>, <forestry:sturdy_machine>, <minecraft:nether_star>],
    [<thermalfoundation:material:352>, <thermalfoundation:material:289>, <thermalfoundation:material:352>]
]);
