// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Tinkers' Construct Foundry, Casts & Smeltery
// Generated Recipes: 64
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Цементный раствор (Grout) для плавильни
recipes.remove(<tconstruct:soil:0>);
recipes.addShaped("nexus_exp_tc_grout", <tconstruct:soil:0> * 4, [
    [<minecraft:clay_ball>, <minecraft:sand>],
    [<minecraft:gravel>, <minecraft:sand>]
]);

// Обожженный кирпич (Seared Brick Block)
recipes.remove(<tconstruct:seared:0>);
recipes.addShaped("nexus_exp_tc_seared_brick_block", <tconstruct:seared:0> * 4, [
    [<tconstruct:materials:0>, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, <tconstruct:materials:0>]
]);

// Контроллер плавильни
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped("nexus_exp_tc_controller", <tconstruct:smeltery_controller>, [
    [<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, <minecraft:furnace>, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
]);

// Обожженный резервуар
recipes.remove(<tconstruct:seared_tank:0>);
recipes.addShaped("nexus_exp_tc_tank", <tconstruct:seared_tank:0>, [
    [<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, <minecraft:glass>, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
]);

// Слив плавильни (Smeltery Drain)
recipes.remove(<tconstruct:smeltery_io:0>);
recipes.addShaped("nexus_exp_tc_drain", <tconstruct:smeltery_io:0>, [
    [<tconstruct:materials:0>, null, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, null, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, null, <tconstruct:materials:0>]
]);

// Обожженный кран (Faucet)
recipes.remove(<tconstruct:faucet>);
recipes.addShaped("nexus_exp_tc_faucet", <tconstruct:faucet> * 2, [
    [<tconstruct:materials:0>, null, <tconstruct:materials:0>],
    [null, <tconstruct:materials:0>, null]
]);

// Обожженный желоб (Channel)
recipes.remove(<tconstruct:channel>);
recipes.addShaped("nexus_exp_tc_channel", <tconstruct:channel> * 2, [
    [<tconstruct:materials:0>, null, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
]);

// Литейный стол (Casting Table)
recipes.remove(<tconstruct:casting:0>);
recipes.addShaped("nexus_exp_tc_table", <tconstruct:casting:0>, [
    [<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, null, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, null, <tconstruct:materials:0>]
]);

// Литейный резервуар (Casting Basin)
recipes.remove(<tconstruct:casting:1>);
recipes.addShaped("nexus_exp_tc_basin", <tconstruct:casting:1>, [
    [<tconstruct:materials:0>, null, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, null, <tconstruct:materials:0>],
    [<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
]);

// Стол трафаретов
recipes.remove(<tconstruct:tooltables:1>);
recipes.addShaped("nexus_exp_tc_stencil_table", <tconstruct:tooltables:1>, [
    [<tconstruct:pattern>],
    [<minecraft:planks>]
]);

// Сборщик деталей (Part Builder)
recipes.remove(<tconstruct:tooltables:2>);
recipes.addShaped("nexus_exp_tc_part_builder", <tconstruct:tooltables:2>, [
    [<tconstruct:pattern>],
    [<minecraft:log>]
]);

// Инструментальная станция (Tool Station)
recipes.remove(<tconstruct:tooltables:3>);
recipes.addShaped("nexus_exp_tc_tool_station", <tconstruct:tooltables:3>, [
    [<tconstruct:pattern>],
    [<minecraft:crafting_table>]
]);

// Инструментальная кузня (Tool Forge)
recipes.remove(<tconstruct:toolforge:0>);
recipes.addShaped("nexus_exp_tc_tool_forge", <tconstruct:toolforge:0>, [
    [<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
    [<thermalfoundation:storage_alloy:0>, <tconstruct:tooltables:3>, <thermalfoundation:storage_alloy:0>],
    [<thermalfoundation:storage_alloy:0>, null, <thermalfoundation:storage_alloy:0>]
]);

// Пустой трафарет Tinkers' Construct
recipes.remove(<tconstruct:pattern>);
recipes.addShaped("nexus_exp_tc_pattern", <tconstruct:pattern> * 4, [
    [<minecraft:stick>, <minecraft:planks>],
    [<minecraft:planks>, <minecraft:stick>]
]);

// Пластина укрепления инструментов (Reinforcement)
recipes.remove(<tconstruct:materials:14>);
recipes.addShaped("nexus_exp_tc_reinforcement", <tconstruct:materials:14>, [
    [<minecraft:obsidian>, <thermalfoundation:material:32>, <minecraft:obsidian>],
    [<thermalfoundation:material:32>, <tconstruct:materials:0>, <thermalfoundation:material:32>],
    [<minecraft:obsidian>, <thermalfoundation:material:32>, <minecraft:obsidian>]
]);

// Шелковистая драгоценность (Silky Jewel)
recipes.remove(<tconstruct:materials:16>);
recipes.addShaped("nexus_exp_tc_silky_jewel", <tconstruct:materials:16>, [
    [<minecraft:string>, <minecraft:gold_ingot>, <minecraft:string>],
    [<minecraft:gold_ingot>, <minecraft:emerald>, <minecraft:gold_ingot>],
    [<minecraft:string>, <minecraft:gold_ingot>, <minecraft:string>]
]);

// Слепок головки кирки (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_pickaxe", <tconstruct:cast_custom:0>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок головки лопаты (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_shovel", <tconstruct:cast_custom:1>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок головки топора (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_axe", <tconstruct:cast_custom:2>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок лезвия меча (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_sword", <tconstruct:cast_custom:3>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок стержня инструмента (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_rod", <tconstruct:cast_custom:4>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок гарды (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_guard", <tconstruct:cast_custom:5>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок большой пластины (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_plate", <tconstruct:cast_custom:6>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок головки молота (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_hammer", <tconstruct:cast_custom:7>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок головки экскаватора (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_excavator", <tconstruct:cast_custom:8>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок секиры (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_broadaxe", <tconstruct:cast_custom:9>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок шестерни (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_gear", <tconstruct:cast_custom:10>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок бронепластины Construct's Armory (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_plate_armor", <conarm:armor_plate_cast>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок ядра шлема (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_helm_core", <conarm:helmet_core_cast>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок ядра кирасы (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_chest_core", <conarm:chest_core_cast>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок ядра поножей (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_legs_core", <conarm:leggings_core_cast>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок ядра сапог (Отливка из золота)
recipes.addShaped("nexus_exp_tc_cast_boots_core", <conarm:boots_core_cast>, [
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <tconstruct:pattern>, <minecraft:gold_ingot>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

// Слепок головки кирки (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_pickaxe", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок головки лопаты (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_shovel", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок головки топора (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_axe", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок лезвия меча (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_sword", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок стержня инструмента (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_rod", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок гарды (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_guard", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок большой пластины (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_plate", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок головки молота (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_hammer", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок головки экскаватора (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_excavator", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок секиры (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_broadaxe", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок шестерни (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_gear", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок бронепластины Construct's Armory (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_plate_armor", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок ядра шлема (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_helm_core", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок ядра кирасы (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_chest_core", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок ядра поножей (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_legs_core", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Слепок ядра сапог (Глиняный слепок)
recipes.addShaped("nexus_exp_tc_clay_cast_boots_core", <tconstruct:clay_cast:0>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <tconstruct:pattern>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

// Железный точильный набор
recipes.addShaped("nexus_exp_tc_kit_iron", <tconstruct:sharpening_kit:0>, [
    [<minecraft:iron_ingot>, <minecraft:flint>],
    [<minecraft:sand>, <minecraft:iron_ingot>]
]);

// Медный точильный набор
recipes.addShaped("nexus_exp_tc_kit_copper", <tconstruct:sharpening_kit:0>, [
    [<thermalfoundation:material:128>, <minecraft:flint>],
    [<minecraft:sand>, <thermalfoundation:material:128>]
]);

// Оловянный точильный набор
recipes.addShaped("nexus_exp_tc_kit_tin", <tconstruct:sharpening_kit:0>, [
    [<thermalfoundation:material:129>, <minecraft:flint>],
    [<minecraft:sand>, <thermalfoundation:material:129>]
]);

// Бронзовый точильный набор
recipes.addShaped("nexus_exp_tc_kit_bronze", <tconstruct:sharpening_kit:0>, [
    [<thermalfoundation:material:163>, <minecraft:flint>],
    [<minecraft:sand>, <thermalfoundation:material:163>]
]);

// Свинцовый точильный набор
recipes.addShaped("nexus_exp_tc_kit_lead", <tconstruct:sharpening_kit:0>, [
    [<thermalfoundation:material:131>, <minecraft:flint>],
    [<minecraft:sand>, <thermalfoundation:material:131>]
]);

// Серебряный точильный набор
recipes.addShaped("nexus_exp_tc_kit_silver", <tconstruct:sharpening_kit:0>, [
    [<thermalfoundation:material:130>, <minecraft:flint>],
    [<minecraft:sand>, <thermalfoundation:material:130>]
]);

// Стальной точильный набор
recipes.addShaped("nexus_exp_tc_kit_steel", <tconstruct:sharpening_kit:0>, [
    [<thermalfoundation:material:160>, <minecraft:flint>],
    [<minecraft:sand>, <thermalfoundation:material:160>]
]);

// Электрумовый точильный набор
recipes.addShaped("nexus_exp_tc_kit_electrum", <tconstruct:sharpening_kit:0>, [
    [<thermalfoundation:material:161>, <minecraft:flint>],
    [<minecraft:sand>, <thermalfoundation:material:161>]
]);

// Инваровый точильный набор
recipes.addShaped("nexus_exp_tc_kit_invar", <tconstruct:sharpening_kit:0>, [
    [<thermalfoundation:material:162>, <minecraft:flint>],
    [<minecraft:sand>, <thermalfoundation:material:162>]
]);

// Константановый точильный набор
recipes.addShaped("nexus_exp_tc_kit_constantan", <tconstruct:sharpening_kit:0>, [
    [<thermalfoundation:material:164>, <minecraft:flint>],
    [<minecraft:sand>, <thermalfoundation:material:164>]
]);

// Алюминиевый точильный набор
recipes.addShaped("nexus_exp_tc_kit_aluminum", <tconstruct:sharpening_kit:0>, [
    [<thermalfoundation:material:132>, <minecraft:flint>],
    [<minecraft:sand>, <thermalfoundation:material:132>]
]);

// Обсидиановый точильный набор
recipes.addShaped("nexus_exp_tc_kit_obsidian", <tconstruct:sharpening_kit:0>, [
    [<minecraft:obsidian>, <minecraft:flint>],
    [<minecraft:sand>, <minecraft:obsidian>]
]);

// Кобальтовый точильный набор
recipes.addShaped("nexus_exp_tc_kit_cobalt", <tconstruct:sharpening_kit:0>, [
    [<tconstruct:metal:0>, <minecraft:flint>],
    [<minecraft:sand>, <tconstruct:metal:0>]
]);

// Ардитовый точильный набор
recipes.addShaped("nexus_exp_tc_kit_ardite", <tconstruct:sharpening_kit:0>, [
    [<tconstruct:metal:1>, <minecraft:flint>],
    [<minecraft:sand>, <tconstruct:metal:1>]
]);

// Маньюллиновый точильный набор
recipes.addShaped("nexus_exp_tc_kit_manyullyn", <tconstruct:sharpening_kit:0>, [
    [<tconstruct:metal:2>, <minecraft:flint>],
    [<minecraft:sand>, <tconstruct:metal:2>]
]);

// Рыцарский слизевой точильный набор
recipes.addShaped("nexus_exp_tc_kit_knightslime", <tconstruct:sharpening_kit:0>, [
    [<tconstruct:metal:3>, <minecraft:flint>],
    [<minecraft:sand>, <tconstruct:metal:3>]
]);
