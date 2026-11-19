// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Mekanism High-Tech Circuits, Gas & Generators
// Generated Recipes: 65
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Наполненный сплав Mekanism
recipes.remove(<mekanism:enrichedalloy>);
recipes.addShaped("nexus_exp_mek_alloy_infused", <mekanism:enrichedalloy>, [
    [<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],
    [<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>]
]);

// Усиленный сплав Mekanism
recipes.remove(<mekanism:reinforcedalloy>);
recipes.addShaped("nexus_exp_mek_alloy_reinforced", <mekanism:reinforcedalloy>, [
    [<minecraft:diamond>, <mekanism:enrichedalloy>, <minecraft:diamond>],
    [<mekanism:enrichedalloy>, <minecraft:diamond_block>, <mekanism:enrichedalloy>],
    [<minecraft:diamond>, <mekanism:enrichedalloy>, <minecraft:diamond>]
]);

// Атомарный сплав Mekanism
recipes.remove(<mekanism:atomicalloy>);
recipes.addShaped("nexus_exp_mek_alloy_atomic", <mekanism:atomicalloy>, [
    [<mekanism:ingot:0>, <mekanism:reinforcedalloy>, <mekanism:ingot:0>],
    [<mekanism:reinforcedalloy>, <minecraft:nether_star>, <mekanism:reinforcedalloy>],
    [<mekanism:ingot:0>, <mekanism:reinforcedalloy>, <mekanism:ingot:0>]
]);

// Базовая схема управления Mekanism
recipes.remove(<mekanism:controlcircuit:0>);
recipes.addShaped("nexus_exp_mek_circuit_basic", <mekanism:controlcircuit:0> * 2, [
    [<minecraft:redstone>, <mekanism:ingot:1>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <appliedenergistics2:material:20>, <thermalfoundation:material:320>],
    [<minecraft:redstone>, <mekanism:ingot:1>, <minecraft:redstone>]
]);

// Продвинутая схема управления
recipes.remove(<mekanism:controlcircuit:1>);
recipes.addShaped("nexus_exp_mek_circuit_adv", <mekanism:controlcircuit:1>, [
    [<mekanism:enrichedalloy>, <mekanism:controlcircuit:0>, <mekanism:enrichedalloy>],
    [<thermalfoundation:material:352>, <appliedenergistics2:material:22>, <thermalfoundation:material:352>],
    [<mekanism:enrichedalloy>, <mekanism:controlcircuit:0>, <mekanism:enrichedalloy>]
]);

// Элитная схема управления
recipes.remove(<mekanism:controlcircuit:2>);
recipes.addShaped("nexus_exp_mek_circuit_elite", <mekanism:controlcircuit:2>, [
    [<mekanism:reinforcedalloy>, <mekanism:controlcircuit:1>, <mekanism:reinforcedalloy>],
    [<minecraft:diamond>, <appliedenergistics2:material:24>, <minecraft:diamond>],
    [<mekanism:reinforcedalloy>, <mekanism:controlcircuit:1>, <mekanism:reinforcedalloy>]
]);

// Совершенная схема управления
recipes.remove(<mekanism:controlcircuit:3>);
recipes.addShaped("nexus_exp_mek_circuit_ult", <mekanism:controlcircuit:3>, [
    [<mekanism:atomicalloy>, <mekanism:controlcircuit:2>, <mekanism:atomicalloy>],
    [<mekanism:ingot:0>, <contenttweaker:distributed_control_matrix>, <mekanism:ingot:0>],
    [<mekanism:atomicalloy>, <mekanism:controlcircuit:2>, <mekanism:atomicalloy>]
]);

// Установщик уровня: basic
recipes.remove(<mekanism:tierinstaller:0>);
recipes.addShaped("nexus_exp_mek_tier_installer_basic", <mekanism:tierinstaller:0>, [
    [<minecraft:redstone>, <mekanism:controlcircuit:0>, <minecraft:redstone>],
    [<thermalfoundation:material:32>, <minecraft:planks>, <thermalfoundation:material:32>],
    [<minecraft:redstone>, <mekanism:controlcircuit:0>, <minecraft:redstone>]
]);

// Установщик уровня: adv
recipes.remove(<mekanism:tierinstaller:1>);
recipes.addShaped("nexus_exp_mek_tier_installer_adv", <mekanism:tierinstaller:1>, [
    [<mekanism:enrichedalloy>, <mekanism:controlcircuit:1>, <mekanism:enrichedalloy>],
    [<mekanism:plate:1>, <minecraft:planks>, <mekanism:plate:1>],
    [<mekanism:enrichedalloy>, <mekanism:controlcircuit:1>, <mekanism:enrichedalloy>]
]);

// Установщик уровня: elite
recipes.remove(<mekanism:tierinstaller:2>);
recipes.addShaped("nexus_exp_mek_tier_installer_elite", <mekanism:tierinstaller:2>, [
    [<mekanism:reinforcedalloy>, <mekanism:controlcircuit:2>, <mekanism:reinforcedalloy>],
    [<thermalfoundation:material:33>, <minecraft:planks>, <thermalfoundation:material:33>],
    [<mekanism:reinforcedalloy>, <mekanism:controlcircuit:2>, <mekanism:reinforcedalloy>]
]);

// Установщик уровня: ult
recipes.remove(<mekanism:tierinstaller:3>);
recipes.addShaped("nexus_exp_mek_tier_installer_ult", <mekanism:tierinstaller:3>, [
    [<mekanism:atomicalloy>, <mekanism:controlcircuit:3>, <mekanism:atomicalloy>],
    [<mekanism:ingot:0>, <minecraft:planks>, <mekanism:ingot:0>],
    [<mekanism:atomicalloy>, <mekanism:controlcircuit:3>, <mekanism:atomicalloy>]
]);

// Энергетическая плавильня
recipes.remove(<mekanism:machineblock:10>);
recipes.addShaped("nexus_exp_mek_mach_smelter", <mekanism:machineblock:10>, [
    [<mekanism:controlcircuit:0>, <minecraft:furnace>, <mekanism:controlcircuit:0>],
    [<thermalfoundation:material:352>, <mekanism:basicblock:8>, <thermalfoundation:material:352>],
    [<mekanism:controlcircuit:0>, <minecraft:furnace>, <mekanism:controlcircuit:0>]
]);

// Камера обогащения
recipes.remove(<mekanism:machineblock:0>);
recipes.addShaped("nexus_exp_mek_mach_enrichment", <mekanism:machineblock:0>, [
    [<mekanism:controlcircuit:0>, <minecraft:piston>, <mekanism:controlcircuit:0>],
    [<thermalfoundation:material:352>, <mekanism:basicblock:8>, <thermalfoundation:material:352>],
    [<mekanism:controlcircuit:0>, <minecraft:piston>, <mekanism:controlcircuit:0>]
]);

// Дробитель Mekanism
recipes.remove(<mekanism:machineblock:3>);
recipes.addShaped("nexus_exp_mek_mach_crusher", <mekanism:machineblock:3>, [
    [<mekanism:controlcircuit:0>, <minecraft:lava_bucket>, <mekanism:controlcircuit:0>],
    [<thermalfoundation:material:352>, <mekanism:basicblock:8>, <thermalfoundation:material:352>],
    [<mekanism:controlcircuit:0>, <minecraft:lava_bucket>, <mekanism:controlcircuit:0>]
]);

// Осмиевый компрессор
recipes.remove(<mekanism:machineblock:1>);
recipes.addShaped("nexus_exp_mek_mach_compressor", <mekanism:machineblock:1>, [
    [<mekanism:controlcircuit:0>, <minecraft:iron_block>, <mekanism:controlcircuit:0>],
    [<thermalfoundation:material:352>, <mekanism:basicblock:8>, <thermalfoundation:material:352>],
    [<mekanism:controlcircuit:0>, <minecraft:iron_block>, <mekanism:controlcircuit:0>]
]);

// Комбинатор
recipes.remove(<mekanism:machineblock:2>);
recipes.addShaped("nexus_exp_mek_mach_combiner", <mekanism:machineblock:2>, [
    [<mekanism:controlcircuit:1>, <minecraft:cobblestone>, <mekanism:controlcircuit:1>],
    [<thermalfoundation:material:352>, <mekanism:basicblock:8>, <thermalfoundation:material:352>],
    [<mekanism:controlcircuit:1>, <minecraft:cobblestone>, <mekanism:controlcircuit:1>]
]);

// Камера очистки
recipes.remove(<mekanism:machineblock2:0>);
recipes.addShaped("nexus_exp_mek_mach_purification", <mekanism:machineblock2:0>, [
    [<mekanism:controlcircuit:1>, <minecraft:bucket>, <mekanism:controlcircuit:1>],
    [<mekanism:plate:1>, <mekanism:basicblock:8>, <mekanism:plate:1>],
    [<mekanism:controlcircuit:1>, <minecraft:bucket>, <mekanism:controlcircuit:1>]
]);

// Камера химических инъекций
recipes.remove(<mekanism:machineblock2:1>);
recipes.addShaped("nexus_exp_mek_mach_injection", <mekanism:machineblock2:1>, [
    [<mekanism:controlcircuit:2>, <minecraft:gold_block>, <mekanism:controlcircuit:2>],
    [<mekanism:plate:1>, <mekanism:basicblock:8>, <mekanism:plate:1>],
    [<mekanism:controlcircuit:2>, <minecraft:gold_block>, <mekanism:controlcircuit:2>]
]);

// Камера химического растворения
recipes.remove(<mekanism:machineblock2:3>);
recipes.addShaped("nexus_exp_mek_mach_dissolution", <mekanism:machineblock2:3>, [
    [<mekanism:controlcircuit:3>, <minecraft:diamond_block>, <mekanism:controlcircuit:3>],
    [<mekanism:ingot:0>, <mekanism:basicblock:8>, <mekanism:ingot:0>],
    [<mekanism:controlcircuit:3>, <minecraft:diamond_block>, <mekanism:controlcircuit:3>]
]);

// Химическая мойка
recipes.remove(<mekanism:machineblock2:4>);
recipes.addShaped("nexus_exp_mek_mach_washer", <mekanism:machineblock2:4>, [
    [<mekanism:controlcircuit:3>, <minecraft:bucket>, <mekanism:controlcircuit:3>],
    [<mekanism:ingot:0>, <mekanism:basicblock:8>, <mekanism:ingot:0>],
    [<mekanism:controlcircuit:3>, <minecraft:bucket>, <mekanism:controlcircuit:3>]
]);

// Химический кристаллизатор
recipes.remove(<mekanism:machineblock2:8>);
recipes.addShaped("nexus_exp_mek_mach_crystallizer", <mekanism:machineblock2:8>, [
    [<mekanism:controlcircuit:3>, <minecraft:emerald_block>, <mekanism:controlcircuit:3>],
    [<mekanism:ingot:0>, <mekanism:basicblock:8>, <mekanism:ingot:0>],
    [<mekanism:controlcircuit:3>, <minecraft:emerald_block>, <mekanism:controlcircuit:3>]
]);

// Базовый энергокуб
recipes.remove(<mekanism:energycube:0>);
recipes.addShaped("nexus_exp_mek_cube_basic", <mekanism:energycube:0>, [
    [<minecraft:redstone>, <mekanism:controlcircuit:0>, <minecraft:redstone>],
    [<thermalfoundation:material:32>, <mekanism:basicblock:8>, <thermalfoundation:material:32>],
    [<minecraft:redstone>, <mekanism:controlcircuit:0>, <minecraft:redstone>]
]);

// Газовый баллон: basic
recipes.remove(<mekanism:gastank:0>);
recipes.addShaped("nexus_exp_mek_tank_gas_basic", <mekanism:gastank:0>, [
    [<minecraft:redstone>, <mekanism:ingot:1>, <minecraft:redstone>],
    [<mekanism:ingot:1>, <mekanism:controlcircuit:0>, <mekanism:ingot:1>],
    [<minecraft:redstone>, <mekanism:ingot:1>, <minecraft:redstone>]
]);

// Продвинутый энергокуб
recipes.remove(<mekanism:energycube:1>);
recipes.addShaped("nexus_exp_mek_cube_adv", <mekanism:energycube:1>, [
    [<mekanism:enrichedalloy>, <mekanism:controlcircuit:1>, <mekanism:enrichedalloy>],
    [<mekanism:plate:1>, <mekanism:basicblock:8>, <mekanism:plate:1>],
    [<mekanism:enrichedalloy>, <mekanism:controlcircuit:1>, <mekanism:enrichedalloy>]
]);

// Газовый баллон: adv
recipes.remove(<mekanism:gastank:1>);
recipes.addShaped("nexus_exp_mek_tank_gas_adv", <mekanism:gastank:1>, [
    [<mekanism:enrichedalloy>, <mekanism:ingot:1>, <mekanism:enrichedalloy>],
    [<mekanism:ingot:1>, <mekanism:controlcircuit:1>, <mekanism:ingot:1>],
    [<mekanism:enrichedalloy>, <mekanism:ingot:1>, <mekanism:enrichedalloy>]
]);

// Элитный энергокуб
recipes.remove(<mekanism:energycube:2>);
recipes.addShaped("nexus_exp_mek_cube_elite", <mekanism:energycube:2>, [
    [<mekanism:reinforcedalloy>, <mekanism:controlcircuit:2>, <mekanism:reinforcedalloy>],
    [<thermalfoundation:material:33>, <mekanism:basicblock:8>, <thermalfoundation:material:33>],
    [<mekanism:reinforcedalloy>, <mekanism:controlcircuit:2>, <mekanism:reinforcedalloy>]
]);

// Газовый баллон: elite
recipes.remove(<mekanism:gastank:2>);
recipes.addShaped("nexus_exp_mek_tank_gas_elite", <mekanism:gastank:2>, [
    [<mekanism:reinforcedalloy>, <mekanism:ingot:1>, <mekanism:reinforcedalloy>],
    [<mekanism:ingot:1>, <mekanism:controlcircuit:2>, <mekanism:ingot:1>],
    [<mekanism:reinforcedalloy>, <mekanism:ingot:1>, <mekanism:reinforcedalloy>]
]);

// Совершенный энергокуб
recipes.remove(<mekanism:energycube:3>);
recipes.addShaped("nexus_exp_mek_cube_ult", <mekanism:energycube:3>, [
    [<mekanism:atomicalloy>, <mekanism:controlcircuit:3>, <mekanism:atomicalloy>],
    [<minecraft:diamond>, <mekanism:basicblock:8>, <minecraft:diamond>],
    [<mekanism:atomicalloy>, <mekanism:controlcircuit:3>, <mekanism:atomicalloy>]
]);

// Газовый баллон: ult
recipes.remove(<mekanism:gastank:3>);
recipes.addShaped("nexus_exp_mek_tank_gas_ult", <mekanism:gastank:3>, [
    [<mekanism:atomicalloy>, <mekanism:ingot:1>, <mekanism:atomicalloy>],
    [<mekanism:ingot:1>, <mekanism:controlcircuit:3>, <mekanism:ingot:1>],
    [<mekanism:atomicalloy>, <mekanism:ingot:1>, <mekanism:atomicalloy>]
]);

// Универсальный кабель (Базовый)
recipes.remove(<mekanism:transmitter:0>);
recipes.addShaped("nexus_exp_mek_wire_cable_basic", <mekanism:transmitter:0> * 8, [
    [<thermalfoundation:material:352>, <minecraft:redstone>, <thermalfoundation:material:352>]
]);

// Универсальный кабель (Продвинутый)
recipes.addShaped("nexus_exp_mek_wire_cable_adv", <mekanism:transmitter:0> * 8, [
    [<mekanism:enrichedalloy>, <mekanism:transmitter:0>, <mekanism:enrichedalloy>]
]);

// Универсальный кабель (Элитный)
recipes.addShaped("nexus_exp_mek_wire_cable_elite", <mekanism:transmitter:0> * 8, [
    [<mekanism:reinforcedalloy>, <mekanism:transmitter:0>, <mekanism:reinforcedalloy>]
]);

// Универсальный кабель (Совершенный)
recipes.addShaped("nexus_exp_mek_wire_cable_ult", <mekanism:transmitter:0> * 8, [
    [<mekanism:atomicalloy>, <mekanism:transmitter:0>, <mekanism:atomicalloy>]
]);

// Механическая труба (Базовый)
recipes.remove(<mekanism:transmitter:1>);
recipes.addShaped("nexus_exp_mek_wire_pipe_basic", <mekanism:transmitter:1> * 8, [
    [<thermalfoundation:material:352>, <minecraft:bucket>, <thermalfoundation:material:352>]
]);

// Механическая труба (Продвинутый)
recipes.addShaped("nexus_exp_mek_wire_pipe_adv", <mekanism:transmitter:1> * 8, [
    [<mekanism:enrichedalloy>, <mekanism:transmitter:1>, <mekanism:enrichedalloy>]
]);

// Механическая труба (Элитный)
recipes.addShaped("nexus_exp_mek_wire_pipe_elite", <mekanism:transmitter:1> * 8, [
    [<mekanism:reinforcedalloy>, <mekanism:transmitter:1>, <mekanism:reinforcedalloy>]
]);

// Механическая труба (Совершенный)
recipes.addShaped("nexus_exp_mek_wire_pipe_ult", <mekanism:transmitter:1> * 8, [
    [<mekanism:atomicalloy>, <mekanism:transmitter:1>, <mekanism:atomicalloy>]
]);

// Герметичная труба (Базовый)
recipes.remove(<mekanism:transmitter:2>);
recipes.addShaped("nexus_exp_mek_wire_tube_basic", <mekanism:transmitter:2> * 8, [
    [<thermalfoundation:material:352>, <mekanism:ingot:1>, <thermalfoundation:material:352>]
]);

// Герметичная труба (Продвинутый)
recipes.addShaped("nexus_exp_mek_wire_tube_adv", <mekanism:transmitter:2> * 8, [
    [<mekanism:enrichedalloy>, <mekanism:transmitter:2>, <mekanism:enrichedalloy>]
]);

// Герметичная труба (Элитный)
recipes.addShaped("nexus_exp_mek_wire_tube_elite", <mekanism:transmitter:2> * 8, [
    [<mekanism:reinforcedalloy>, <mekanism:transmitter:2>, <mekanism:reinforcedalloy>]
]);

// Герметичная труба (Совершенный)
recipes.addShaped("nexus_exp_mek_wire_tube_ult", <mekanism:transmitter:2> * 8, [
    [<mekanism:atomicalloy>, <mekanism:transmitter:2>, <mekanism:atomicalloy>]
]);

// Логистический транспортер (Базовый)
recipes.remove(<mekanism:transmitter:3>);
recipes.addShaped("nexus_exp_mek_wire_transporter_basic", <mekanism:transmitter:3> * 8, [
    [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Логистический транспортер (Продвинутый)
recipes.addShaped("nexus_exp_mek_wire_transporter_adv", <mekanism:transmitter:3> * 8, [
    [<mekanism:enrichedalloy>, <mekanism:transmitter:3>, <mekanism:enrichedalloy>]
]);

// Логистический транспортер (Элитный)
recipes.addShaped("nexus_exp_mek_wire_transporter_elite", <mekanism:transmitter:3> * 8, [
    [<mekanism:reinforcedalloy>, <mekanism:transmitter:3>, <mekanism:reinforcedalloy>]
]);

// Логистический транспортер (Совершенный)
recipes.addShaped("nexus_exp_mek_wire_transporter_ult", <mekanism:transmitter:3> * 8, [
    [<mekanism:atomicalloy>, <mekanism:transmitter:3>, <mekanism:atomicalloy>]
]);

// Улучшение скорости Mekanism
recipes.remove(<mekanism:speedupgrade>);
recipes.addShaped("nexus_exp_mek_upg_speed", <mekanism:speedupgrade>, [
    [null, <minecraft:glass>, null],
    [<mekanism:enrichedalloy>, <minecraft:sugar>, <mekanism:enrichedalloy>],
    [null, <minecraft:glass>, null]
]);

// Улучшение энергии Mekanism
recipes.remove(<mekanism:energyupgrade>);
recipes.addShaped("nexus_exp_mek_upg_energy", <mekanism:energyupgrade>, [
    [null, <minecraft:glass>, null],
    [<mekanism:enrichedalloy>, <minecraft:redstone>, <mekanism:enrichedalloy>],
    [null, <minecraft:glass>, null]
]);

// Улучшение фильтрации Mekanism
recipes.remove(<mekanism:filterupgrade>);
recipes.addShaped("nexus_exp_mek_upg_filter", <mekanism:filterupgrade>, [
    [null, <minecraft:glass>, null],
    [<mekanism:enrichedalloy>, <minecraft:paper>, <mekanism:enrichedalloy>],
    [null, <minecraft:glass>, null]
]);

// Улучшение газоочистки Mekanism
recipes.remove(<mekanism:gasupgrade>);
recipes.addShaped("nexus_exp_mek_upg_gas", <mekanism:gasupgrade>, [
    [null, <minecraft:glass>, null],
    [<mekanism:enrichedalloy>, <thermalfoundation:material:32>, <mekanism:enrichedalloy>],
    [null, <minecraft:glass>, null]
]);

// Глушитель шума Mekanism
recipes.remove(<mekanism:mufflingupgrade>);
recipes.addShaped("nexus_exp_mek_upg_muffling", <mekanism:mufflingupgrade>, [
    [null, <minecraft:glass>, null],
    [<mekanism:enrichedalloy>, <minecraft:wool>, <mekanism:enrichedalloy>],
    [null, <minecraft:glass>, null]
]);

// Якорь чанков (Anchor Upgrade)
recipes.remove(<mekanism:anchorupgrade>);
recipes.addShaped("nexus_exp_mek_upg_anchor", <mekanism:anchorupgrade>, [
    [null, <minecraft:glass>, null],
    [<mekanism:enrichedalloy>, <minecraft:diamond>, <mekanism:enrichedalloy>],
    [null, <minecraft:glass>, null]
]);

// Базовая индукционная ячейка
recipes.addShaped("nexus_exp_mek_ind_cell_basic", <mekanism:basicblock2:1>, [
    [<thermalfoundation:material:352>, <mekanism:energycube:0>, <thermalfoundation:material:352>],
    [<mekanism:energycube:0>, <mekanism:basicblock:8>, <mekanism:energycube:0>],
    [<thermalfoundation:material:352>, <mekanism:energycube:0>, <thermalfoundation:material:352>]
]);

// Индукционный провайдер (basic)
recipes.addShaped("nexus_exp_mek_ind_prov_basic", <mekanism:basicblock2:5>, [
    [<thermalfoundation:material:352>, <mekanism:controlcircuit:0>, <thermalfoundation:material:352>],
    [<mekanism:energycube:0>, <mekanism:basicblock:8>, <mekanism:energycube:0>],
    [<thermalfoundation:material:352>, <mekanism:controlcircuit:0>, <thermalfoundation:material:352>]
]);

// Продвинутая индукционная ячейка
recipes.addShaped("nexus_exp_mek_ind_cell_adv", <mekanism:basicblock2:2>, [
    [<thermalfoundation:material:352>, <mekanism:energycube:1>, <thermalfoundation:material:352>],
    [<mekanism:energycube:1>, <mekanism:basicblock:8>, <mekanism:energycube:1>],
    [<thermalfoundation:material:352>, <mekanism:energycube:1>, <thermalfoundation:material:352>]
]);

// Индукционный провайдер (adv)
recipes.addShaped("nexus_exp_mek_ind_prov_adv", <mekanism:basicblock2:6>, [
    [<thermalfoundation:material:352>, <mekanism:controlcircuit:1>, <thermalfoundation:material:352>],
    [<mekanism:energycube:1>, <mekanism:basicblock:8>, <mekanism:energycube:1>],
    [<thermalfoundation:material:352>, <mekanism:controlcircuit:1>, <thermalfoundation:material:352>]
]);

// Элитная индукционная ячейка
recipes.addShaped("nexus_exp_mek_ind_cell_elite", <mekanism:basicblock2:3>, [
    [<thermalfoundation:material:352>, <mekanism:energycube:2>, <thermalfoundation:material:352>],
    [<mekanism:energycube:2>, <mekanism:basicblock:8>, <mekanism:energycube:2>],
    [<thermalfoundation:material:352>, <mekanism:energycube:2>, <thermalfoundation:material:352>]
]);

// Индукционный провайдер (elite)
recipes.addShaped("nexus_exp_mek_ind_prov_elite", <mekanism:basicblock2:7>, [
    [<thermalfoundation:material:352>, <mekanism:controlcircuit:2>, <thermalfoundation:material:352>],
    [<mekanism:energycube:2>, <mekanism:basicblock:8>, <mekanism:energycube:2>],
    [<thermalfoundation:material:352>, <mekanism:controlcircuit:2>, <thermalfoundation:material:352>]
]);

// Совершенная индукционная ячейка
recipes.addShaped("nexus_exp_mek_ind_cell_ult", <mekanism:basicblock2:4>, [
    [<thermalfoundation:material:352>, <mekanism:energycube:3>, <thermalfoundation:material:352>],
    [<mekanism:energycube:3>, <mekanism:basicblock:8>, <mekanism:energycube:3>],
    [<thermalfoundation:material:352>, <mekanism:energycube:3>, <thermalfoundation:material:352>]
]);

// Индукционный провайдер (ult)
recipes.addShaped("nexus_exp_mek_ind_prov_ult", <mekanism:basicblock2:8>, [
    [<thermalfoundation:material:352>, <mekanism:controlcircuit:3>, <thermalfoundation:material:352>],
    [<mekanism:energycube:3>, <mekanism:basicblock:8>, <mekanism:energycube:3>],
    [<thermalfoundation:material:352>, <mekanism:controlcircuit:3>, <thermalfoundation:material:352>]
]);

// Солнечная панель Mekanism
recipes.remove(<mekanismgenerators:generator:1>);
recipes.addShaped("nexus_exp_mek_gen_solar", <mekanismgenerators:generator:1>, [
    [<minecraft:daylight_detector>, <minecraft:daylight_detector>, <minecraft:daylight_detector>],
    [<mekanism:enrichedalloy>, <mekanism:plate:1>, <mekanism:enrichedalloy>],
    [<thermalfoundation:material:32>, <mekanism:controlcircuit:0>, <thermalfoundation:material:32>]
]);

// Ветрогенератор Mekanism
recipes.remove(<mekanismgenerators:generator:6>);
recipes.addShaped("nexus_exp_mek_gen_wind", <mekanismgenerators:generator:6>, [
    [<mekanism:plate:1>, <minecraft:iron_bars>, <mekanism:plate:1>],
    [<mekanism:plate:1>, <mekanism:controlcircuit:1>, <mekanism:plate:1>],
    [<thermalfoundation:material:352>, <mekanism:energycube:1>, <thermalfoundation:material:352>]
]);

// Тепловой генератор Mekanism
recipes.remove(<mekanismgenerators:generator:0>);
recipes.addShaped("nexus_exp_mek_gen_heat", <mekanismgenerators:generator:0>, [
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
    [<minecraft:furnace>, <thermalfoundation:material:320>, <minecraft:furnace>],
    [<thermalfoundation:material:32>, <mekanism:controlcircuit:0>, <thermalfoundation:material:32>]
]);

// Биогенератор Mekanism
recipes.remove(<mekanismgenerators:generator:4>);
recipes.addShaped("nexus_exp_mek_gen_bio", <mekanismgenerators:generator:4>, [
    [<minecraft:redstone>, <mekanism:controlcircuit:0>, <minecraft:redstone>],
    [<mekanism:enrichedalloy>, <mekanism:basicblock:8>, <mekanism:enrichedalloy>],
    [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>]
]);

// Атомный разборщик (Atomic Disassembler)
recipes.remove(<mekanism:atomicdisassembler>);
recipes.addShaped("nexus_exp_mek_atomic_disassembler", <mekanism:atomicdisassembler>, [
    [<mekanism:atomicalloy>, <mekanism:ingot:0>, <mekanism:atomicalloy>],
    [<mekanism:atomicalloy>, <mekanism:controlcircuit:3>, <mekanism:atomicalloy>],
    [null, <immersiveengineering:material:3>, null]
]);

// Цифровой шахтер (Digital Miner)
recipes.remove(<mekanism:machineblock:4>);
recipes.addShaped("nexus_exp_mek_digital_miner", <mekanism:machineblock:4>, [
    [<mekanism:atomicalloy>, <mekanism:controlcircuit:3>, <mekanism:atomicalloy>],
    [<mekanism:machineblock:1>, <mekanism:basicblock:8>, <mekanism:machineblock:0>],
    [<mekanism:transmitter:3>, <mekanism:energycube:3>, <mekanism:transmitter:3>]
]);
