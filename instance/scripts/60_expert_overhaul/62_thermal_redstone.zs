// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: Thermal Expansion, Dynamics & Flux Logistics
// Generated Recipes: 163
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Динамо-генератор: steam
recipes.remove(<thermalexpansion:dynamo:0>);
recipes.addShaped("nexus_exp_te_dynamo_steam", <thermalexpansion:dynamo:0>, [
    [null, <thermalfoundation:material:513>, null],
    [<thermalfoundation:material:256>, <thermalfoundation:material:160>, <thermalfoundation:material:256>],
    [<minecraft:brick>, <minecraft:furnace>, <minecraft:brick>]
]);

// Динамо-генератор: magmatic
recipes.remove(<thermalexpansion:dynamo:1>);
recipes.addShaped("nexus_exp_te_dynamo_magmatic", <thermalexpansion:dynamo:1>, [
    [null, <thermalfoundation:material:513>, null],
    [<thermalfoundation:material:290>, <thermalfoundation:material:160>, <thermalfoundation:material:290>],
    [<minecraft:brick>, <minecraft:iron_ingot>, <minecraft:brick>]
]);

// Динамо-генератор: compression
recipes.remove(<thermalexpansion:dynamo:2>);
recipes.addShaped("nexus_exp_te_dynamo_compression", <thermalexpansion:dynamo:2>, [
    [null, <thermalfoundation:material:513>, null],
    [<thermalfoundation:material:288>, <thermalfoundation:material:160>, <thermalfoundation:material:288>],
    [<minecraft:brick>, <minecraft:piston>, <minecraft:brick>]
]);

// Динамо-генератор: reactant
recipes.remove(<thermalexpansion:dynamo:3>);
recipes.addShaped("nexus_exp_te_dynamo_reactant", <thermalexpansion:dynamo:3>, [
    [null, <thermalfoundation:material:513>, null],
    [<thermalfoundation:material:289>, <thermalfoundation:material:160>, <thermalfoundation:material:289>],
    [<minecraft:brick>, <minecraft:potion>, <minecraft:brick>]
]);

// Динамо-генератор: enervation
recipes.remove(<thermalexpansion:dynamo:4>);
recipes.addShaped("nexus_exp_te_dynamo_enervation", <thermalexpansion:dynamo:4>, [
    [null, <thermalfoundation:material:513>, null],
    [<thermalfoundation:material:25>, <thermalfoundation:material:160>, <thermalfoundation:material:25>],
    [<minecraft:brick>, <minecraft:redstone>, <minecraft:brick>]
]);

// Динамо-генератор: numismatic
recipes.remove(<thermalexpansion:dynamo:5>);
recipes.addShaped("nexus_exp_te_dynamo_numismatic", <thermalexpansion:dynamo:5>, [
    [null, <thermalfoundation:material:513>, null],
    [<thermalfoundation:material:258>, <thermalfoundation:material:160>, <thermalfoundation:material:258>],
    [<minecraft:brick>, <minecraft:gold_ingot>, <minecraft:brick>]
]);

// Механизм Thermal: furnace
recipes.remove(<thermalexpansion:machine:0>);
recipes.addShaped("nexus_exp_te_mach_furnace", <thermalexpansion:machine:0>, [
    [null, <minecraft:furnace>, null],
    [<thermalfoundation:material:32>, <thermalexpansion:frame:0>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:256>, <thermalfoundation:material:512>, <thermalfoundation:material:256>]
]);

// Механизм Thermal: pulverizer
recipes.remove(<thermalexpansion:machine:1>);
recipes.addShaped("nexus_exp_te_mach_pulverizer", <thermalexpansion:machine:1>, [
    [null, <minecraft:piston>, null],
    [<minecraft:flint>, <thermalexpansion:frame:0>, <minecraft:flint>],
    [<thermalfoundation:material:256>, <thermalfoundation:material:512>, <thermalfoundation:material:256>]
]);

// Механизм Thermal: sawmill
recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped("nexus_exp_te_mach_sawmill", <thermalexpansion:machine:2>, [
    [null, <minecraft:iron_axe>, null],
    [<thermalfoundation:material:320>, <thermalexpansion:frame:0>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:256>, <thermalfoundation:material:512>, <thermalfoundation:material:256>]
]);

// Механизм Thermal: smelter
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped("nexus_exp_te_mach_smelter", <thermalexpansion:machine:3>, [
    [null, <minecraft:furnace>, null],
    [<thermalfoundation:material:354>, <thermalexpansion:frame:0>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:290>, <thermalfoundation:material:512>, <thermalfoundation:material:290>]
]);

// Механизм Thermal: compactor
recipes.remove(<thermalexpansion:machine:5>);
recipes.addShaped("nexus_exp_te_mach_compactor", <thermalexpansion:machine:5>, [
    [null, <minecraft:piston>, null],
    [<thermalfoundation:material:352>, <thermalexpansion:frame:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:288>, <thermalfoundation:material:512>, <thermalfoundation:material:288>]
]);

// Механизм Thermal: crucible
recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped("nexus_exp_te_mach_crucible", <thermalexpansion:machine:6>, [
    [null, <minecraft:cauldron>, null],
    [<thermalfoundation:material:1024>, <thermalexpansion:frame:0>, <thermalfoundation:material:1024>],
    [<thermalfoundation:material:290>, <thermalfoundation:material:512>, <thermalfoundation:material:290>]
]);

// Механизм Thermal: refinery
recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped("nexus_exp_te_mach_refinery", <thermalexpansion:machine:7>, [
    [null, <minecraft:glass>, null],
    [<thermalfoundation:material:352>, <thermalexpansion:frame:0>, <thermalfoundation:material:352>],
    [<thermalfoundation:material:288>, <thermalfoundation:material:512>, <thermalfoundation:material:288>]
]);

// Механизм Thermal: transposer
recipes.remove(<thermalexpansion:machine:8>);
recipes.addShaped("nexus_exp_te_mach_transposer", <thermalexpansion:machine:8>, [
    [null, <minecraft:bucket>, null],
    [<thermalfoundation:material:354>, <thermalexpansion:frame:0>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:290>, <thermalfoundation:material:512>, <thermalfoundation:material:290>]
]);

// Механизм Thermal: centrifuge
recipes.remove(<thermalexpansion:machine:10>);
recipes.addShaped("nexus_exp_te_mach_centrifuge", <thermalexpansion:machine:10>, [
    [null, <minecraft:compass>, null],
    [<thermalfoundation:material:320>, <thermalexpansion:frame:0>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:256>, <thermalfoundation:material:512>, <thermalfoundation:material:256>]
]);

// Механизм Thermal: crafter
recipes.remove(<thermalexpansion:machine:11>);
recipes.addShaped("nexus_exp_te_mach_crafter", <thermalexpansion:machine:11>, [
    [null, <minecraft:crafting_table>, null],
    [<thermalfoundation:material:353>, <thermalexpansion:frame:0>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:289>, <thermalfoundation:material:512>, <thermalfoundation:material:289>]
]);

// Механизм Thermal: brewer
recipes.remove(<thermalexpansion:machine:12>);
recipes.addShaped("nexus_exp_te_mach_brewer", <thermalexpansion:machine:12>, [
    [null, <minecraft:brewing_stand>, null],
    [<thermalfoundation:material:322>, <thermalexpansion:frame:0>, <thermalfoundation:material:322>],
    [<thermalfoundation:material:258>, <thermalfoundation:material:512>, <thermalfoundation:material:258>]
]);

// Механизм Thermal: enchanter
recipes.remove(<thermalexpansion:machine:13>);
recipes.addShaped("nexus_exp_te_mach_enchanter", <thermalexpansion:machine:13>, [
    [null, <minecraft:book>, null],
    [<thermalfoundation:material:33>, <thermalexpansion:frame:0>, <thermalfoundation:material:33>],
    [<thermalfoundation:material:25>, <thermalfoundation:material:512>, <thermalfoundation:material:25>]
]);

// Механизм Thermal: precipitator
recipes.remove(<thermalexpansion:machine:14>);
recipes.addShaped("nexus_exp_te_mach_precipitator", <thermalexpansion:machine:14>, [
    [null, <minecraft:snowball>, null],
    [<thermalfoundation:material:320>, <thermalexpansion:frame:0>, <thermalfoundation:material:320>],
    [<thermalfoundation:material:256>, <thermalfoundation:material:512>, <thermalfoundation:material:256>]
]);

// Механизм Thermal: extruder
recipes.remove(<thermalexpansion:machine:15>);
recipes.addShaped("nexus_exp_te_mach_extruder", <thermalexpansion:machine:15>, [
    [null, <minecraft:piston>, null],
    [<thermalfoundation:material:354>, <thermalexpansion:frame:0>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:290>, <thermalfoundation:material:512>, <thermalfoundation:material:290>]
]);

// Модернизация furnace до уровня hardened
recipes.addShaped("nexus_exp_te_mach_furnace_hardened", <thermalexpansion:machine:0>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:0>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация furnace до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_furnace_reinforced", <thermalexpansion:machine:0>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:0>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация furnace до уровня signalum
recipes.addShaped("nexus_exp_te_mach_furnace_signalum", <thermalexpansion:machine:0>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:0>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация furnace до уровня resonant
recipes.addShaped("nexus_exp_te_mach_furnace_resonant", <thermalexpansion:machine:0>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:0>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация pulverizer до уровня hardened
recipes.addShaped("nexus_exp_te_mach_pulverizer_hardened", <thermalexpansion:machine:1>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:1>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация pulverizer до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_pulverizer_reinforced", <thermalexpansion:machine:1>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:1>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация pulverizer до уровня signalum
recipes.addShaped("nexus_exp_te_mach_pulverizer_signalum", <thermalexpansion:machine:1>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:1>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация pulverizer до уровня resonant
recipes.addShaped("nexus_exp_te_mach_pulverizer_resonant", <thermalexpansion:machine:1>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:1>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация sawmill до уровня hardened
recipes.addShaped("nexus_exp_te_mach_sawmill_hardened", <thermalexpansion:machine:2>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:2>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация sawmill до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_sawmill_reinforced", <thermalexpansion:machine:2>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:2>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация sawmill до уровня signalum
recipes.addShaped("nexus_exp_te_mach_sawmill_signalum", <thermalexpansion:machine:2>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:2>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация sawmill до уровня resonant
recipes.addShaped("nexus_exp_te_mach_sawmill_resonant", <thermalexpansion:machine:2>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:2>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация smelter до уровня hardened
recipes.addShaped("nexus_exp_te_mach_smelter_hardened", <thermalexpansion:machine:3>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:3>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация smelter до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_smelter_reinforced", <thermalexpansion:machine:3>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:3>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация smelter до уровня signalum
recipes.addShaped("nexus_exp_te_mach_smelter_signalum", <thermalexpansion:machine:3>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:3>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация smelter до уровня resonant
recipes.addShaped("nexus_exp_te_mach_smelter_resonant", <thermalexpansion:machine:3>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:3>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация compactor до уровня hardened
recipes.addShaped("nexus_exp_te_mach_compactor_hardened", <thermalexpansion:machine:5>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:5>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация compactor до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_compactor_reinforced", <thermalexpansion:machine:5>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:5>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация compactor до уровня signalum
recipes.addShaped("nexus_exp_te_mach_compactor_signalum", <thermalexpansion:machine:5>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:5>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация compactor до уровня resonant
recipes.addShaped("nexus_exp_te_mach_compactor_resonant", <thermalexpansion:machine:5>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:5>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация crucible до уровня hardened
recipes.addShaped("nexus_exp_te_mach_crucible_hardened", <thermalexpansion:machine:6>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:6>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация crucible до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_crucible_reinforced", <thermalexpansion:machine:6>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:6>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация crucible до уровня signalum
recipes.addShaped("nexus_exp_te_mach_crucible_signalum", <thermalexpansion:machine:6>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:6>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация crucible до уровня resonant
recipes.addShaped("nexus_exp_te_mach_crucible_resonant", <thermalexpansion:machine:6>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:6>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация refinery до уровня hardened
recipes.addShaped("nexus_exp_te_mach_refinery_hardened", <thermalexpansion:machine:7>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:7>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация refinery до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_refinery_reinforced", <thermalexpansion:machine:7>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:7>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация refinery до уровня signalum
recipes.addShaped("nexus_exp_te_mach_refinery_signalum", <thermalexpansion:machine:7>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:7>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация refinery до уровня resonant
recipes.addShaped("nexus_exp_te_mach_refinery_resonant", <thermalexpansion:machine:7>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:7>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация transposer до уровня hardened
recipes.addShaped("nexus_exp_te_mach_transposer_hardened", <thermalexpansion:machine:8>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:8>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация transposer до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_transposer_reinforced", <thermalexpansion:machine:8>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:8>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация transposer до уровня signalum
recipes.addShaped("nexus_exp_te_mach_transposer_signalum", <thermalexpansion:machine:8>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:8>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация transposer до уровня resonant
recipes.addShaped("nexus_exp_te_mach_transposer_resonant", <thermalexpansion:machine:8>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:8>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация centrifuge до уровня hardened
recipes.addShaped("nexus_exp_te_mach_centrifuge_hardened", <thermalexpansion:machine:10>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:10>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация centrifuge до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_centrifuge_reinforced", <thermalexpansion:machine:10>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:10>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация centrifuge до уровня signalum
recipes.addShaped("nexus_exp_te_mach_centrifuge_signalum", <thermalexpansion:machine:10>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:10>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация centrifuge до уровня resonant
recipes.addShaped("nexus_exp_te_mach_centrifuge_resonant", <thermalexpansion:machine:10>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:10>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация crafter до уровня hardened
recipes.addShaped("nexus_exp_te_mach_crafter_hardened", <thermalexpansion:machine:11>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:11>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация crafter до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_crafter_reinforced", <thermalexpansion:machine:11>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:11>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация crafter до уровня signalum
recipes.addShaped("nexus_exp_te_mach_crafter_signalum", <thermalexpansion:machine:11>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:11>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация crafter до уровня resonant
recipes.addShaped("nexus_exp_te_mach_crafter_resonant", <thermalexpansion:machine:11>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:11>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация brewer до уровня hardened
recipes.addShaped("nexus_exp_te_mach_brewer_hardened", <thermalexpansion:machine:12>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:12>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация brewer до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_brewer_reinforced", <thermalexpansion:machine:12>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:12>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация brewer до уровня signalum
recipes.addShaped("nexus_exp_te_mach_brewer_signalum", <thermalexpansion:machine:12>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:12>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация brewer до уровня resonant
recipes.addShaped("nexus_exp_te_mach_brewer_resonant", <thermalexpansion:machine:12>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:12>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация enchanter до уровня hardened
recipes.addShaped("nexus_exp_te_mach_enchanter_hardened", <thermalexpansion:machine:13>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:13>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация enchanter до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_enchanter_reinforced", <thermalexpansion:machine:13>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:13>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация enchanter до уровня signalum
recipes.addShaped("nexus_exp_te_mach_enchanter_signalum", <thermalexpansion:machine:13>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:13>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация enchanter до уровня resonant
recipes.addShaped("nexus_exp_te_mach_enchanter_resonant", <thermalexpansion:machine:13>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:13>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация precipitator до уровня hardened
recipes.addShaped("nexus_exp_te_mach_precipitator_hardened", <thermalexpansion:machine:14>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:14>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация precipitator до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_precipitator_reinforced", <thermalexpansion:machine:14>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:14>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация precipitator до уровня signalum
recipes.addShaped("nexus_exp_te_mach_precipitator_signalum", <thermalexpansion:machine:14>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:14>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация precipitator до уровня resonant
recipes.addShaped("nexus_exp_te_mach_precipitator_resonant", <thermalexpansion:machine:14>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:14>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Модернизация extruder до уровня hardened
recipes.addShaped("nexus_exp_te_mach_extruder_hardened", <thermalexpansion:machine:15>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:256>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalexpansion:machine:15>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Модернизация extruder до уровня reinforced
recipes.addShaped("nexus_exp_te_mach_extruder_reinforced", <thermalexpansion:machine:15>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalexpansion:machine:15>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Модернизация extruder до уровня signalum
recipes.addShaped("nexus_exp_te_mach_extruder_signalum", <thermalexpansion:machine:15>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalexpansion:machine:15>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Модернизация extruder до уровня resonant
recipes.addShaped("nexus_exp_te_mach_extruder_resonant", <thermalexpansion:machine:15>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalexpansion:machine:15>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Комплект улучшения механизма: hardened
recipes.remove(<thermalfoundation:upgrade:0>);
recipes.addShaped("nexus_exp_te_kit_hardened", <thermalfoundation:upgrade:0>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:162>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:162>, <thermalfoundation:material:256>, <thermalfoundation:material:162>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:162>, <thermalfoundation:material:354>]
]);

// Комплект улучшения механизма: reinforced
recipes.remove(<thermalfoundation:upgrade:1>);
recipes.addShaped("nexus_exp_te_kit_reinforced", <thermalfoundation:upgrade:1>, [
    [<thermalfoundation:material:353>, <thermalfoundation:material:161>, <thermalfoundation:material:353>],
    [<thermalfoundation:material:161>, <thermalfoundation:material:290>, <thermalfoundation:material:161>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:161>, <thermalfoundation:material:353>]
]);

// Комплект улучшения механизма: signalum
recipes.remove(<thermalfoundation:upgrade:2>);
recipes.addShaped("nexus_exp_te_kit_signalum", <thermalfoundation:upgrade:2>, [
    [<thermalfoundation:material:357>, <thermalfoundation:material:165>, <thermalfoundation:material:357>],
    [<thermalfoundation:material:165>, <thermalfoundation:material:289>, <thermalfoundation:material:165>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:165>, <thermalfoundation:material:357>]
]);

// Комплект улучшения механизма: resonant
recipes.remove(<thermalfoundation:upgrade:3>);
recipes.addShaped("nexus_exp_te_kit_resonant", <thermalfoundation:upgrade:3>, [
    [<thermalfoundation:material:359>, <thermalfoundation:material:167>, <thermalfoundation:material:359>],
    [<thermalfoundation:material:167>, <thermalfoundation:material:293>, <thermalfoundation:material:167>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:167>, <thermalfoundation:material:359>]
]);

// Конверсионный комплект улучшения: base_to_reinforced
recipes.remove(<thermalfoundation:upgrade:33>);
recipes.addShaped("nexus_exp_te_conv_base_to_reinforced", <thermalfoundation:upgrade:33>, [
    [null, <thermalfoundation:upgrade:0>, null],
    [<thermalfoundation:upgrade:1>, <minecraft:ender_pearl>, <thermalfoundation:upgrade:1>],
    [null, <thermalfoundation:upgrade:0>, null]
]);

// Конверсионный комплект улучшения: base_to_signalum
recipes.remove(<thermalfoundation:upgrade:34>);
recipes.addShaped("nexus_exp_te_conv_base_to_signalum", <thermalfoundation:upgrade:34>, [
    [null, <thermalfoundation:upgrade:1>, null],
    [<thermalfoundation:upgrade:2>, <minecraft:ender_pearl>, <thermalfoundation:upgrade:2>],
    [null, <thermalfoundation:upgrade:1>, null]
]);

// Конверсионный комплект улучшения: base_to_resonant
recipes.remove(<thermalfoundation:upgrade:35>);
recipes.addShaped("nexus_exp_te_conv_base_to_resonant", <thermalfoundation:upgrade:35>, [
    [null, <thermalfoundation:upgrade:2>, null],
    [<thermalfoundation:upgrade:3>, <minecraft:ender_pearl>, <thermalfoundation:upgrade:3>],
    [null, <thermalfoundation:upgrade:2>, null]
]);

// Улучшение Thermal: auxiliary_reception
recipes.remove(<thermalexpansion:augment:128>);
recipes.addShaped("nexus_exp_te_augment_auxiliary_reception", <thermalexpansion:augment:128>, [
    [null, <thermalfoundation:material:512>, null],
    [<thermalfoundation:material:354>, <thermalfoundation:material:32>, <thermalfoundation:material:354>],
    [null, <thermalfoundation:material:512>, null]
]);

// Улучшение Thermal: flux_concentrator
recipes.remove(<thermalexpansion:augment:129>);
recipes.addShaped("nexus_exp_te_augment_flux_concentrator", <thermalexpansion:augment:129>, [
    [null, <thermalfoundation:material:513>, null],
    [<thermalfoundation:material:353>, <thermalfoundation:material:32>, <thermalfoundation:material:353>],
    [null, <thermalfoundation:material:513>, null]
]);

// Улучшение Thermal: space_time_flux
recipes.remove(<thermalexpansion:augment:130>);
recipes.addShaped("nexus_exp_te_augment_space_time_flux", <thermalexpansion:augment:130>, [
    [null, <thermalfoundation:material:512>, null],
    [<thermalfoundation:material:359>, <thermalfoundation:material:32>, <thermalfoundation:material:359>],
    [null, <thermalfoundation:material:512>, null]
]);

// Улучшение Thermal: auxiliary_sieve
recipes.remove(<thermalexpansion:augment:256>);
recipes.addShaped("nexus_exp_te_augment_auxiliary_sieve", <thermalexpansion:augment:256>, [
    [null, <minecraft:iron_bars>, null],
    [<thermalfoundation:material:320>, <thermalfoundation:material:32>, <thermalfoundation:material:320>],
    [null, <minecraft:iron_bars>, null]
]);

// Улучшение Thermal: pyroclastic_injection
recipes.remove(<thermalexpansion:augment:257>);
recipes.addShaped("nexus_exp_te_augment_pyroclastic_injection", <thermalexpansion:augment:257>, [
    [null, <minecraft:blaze_powder>, null],
    [<thermalfoundation:material:354>, <thermalfoundation:material:32>, <thermalfoundation:material:354>],
    [null, <minecraft:blaze_powder>, null]
]);

// Улучшение Thermal: cryotheum_coolant
recipes.remove(<thermalexpansion:augment:258>);
recipes.addShaped("nexus_exp_te_augment_cryotheum_coolant", <thermalexpansion:augment:258>, [
    [null, <thermalfoundation:material:1025>, null],
    [<thermalfoundation:material:358>, <thermalfoundation:material:32>, <thermalfoundation:material:358>],
    [null, <thermalfoundation:material:1025>, null]
]);

// Улучшение Thermal: boiler_conversion
recipes.remove(<thermalexpansion:augment:576>);
recipes.addShaped("nexus_exp_te_augment_boiler_conversion", <thermalexpansion:augment:576>, [
    [null, <minecraft:bucket>, null],
    [<thermalfoundation:material:352>, <thermalfoundation:material:32>, <thermalfoundation:material:352>],
    [null, <minecraft:bucket>, null]
]);

// Улучшение Thermal: turbine_conversion
recipes.remove(<thermalexpansion:augment:640>);
recipes.addShaped("nexus_exp_te_augment_turbine_conversion", <thermalexpansion:augment:640>, [
    [null, <thermalfoundation:material:288>, null],
    [<thermalfoundation:material:352>, <thermalfoundation:material:32>, <thermalfoundation:material:352>],
    [null, <thermalfoundation:material:288>, null]
]);

// Улучшение Thermal: isothermal_lamp
recipes.remove(<thermalexpansion:augment:656>);
recipes.addShaped("nexus_exp_te_augment_isothermal_lamp", <thermalexpansion:augment:656>, [
    [null, <minecraft:glowstone_dust>, null],
    [<thermalfoundation:material:358>, <thermalfoundation:material:32>, <thermalfoundation:material:358>],
    [null, <minecraft:glowstone_dust>, null]
]);

// Улучшение Thermal: motive_drive
recipes.remove(<thermalexpansion:augment:672>);
recipes.addShaped("nexus_exp_te_augment_motive_drive", <thermalexpansion:augment:672>, [
    [null, <minecraft:piston>, null],
    [<thermalfoundation:material:353>, <thermalfoundation:material:32>, <thermalfoundation:material:353>],
    [null, <minecraft:piston>, null]
]);

// Улучшение Thermal: gearbox_reduction
recipes.remove(<thermalexpansion:augment:688>);
recipes.addShaped("nexus_exp_te_augment_gearbox_reduction", <thermalexpansion:augment:688>, [
    [null, <thermalfoundation:material:256>, null],
    [<thermalfoundation:material:354>, <thermalfoundation:material:32>, <thermalfoundation:material:354>],
    [null, <thermalfoundation:material:256>, null]
]);

// Улучшение Thermal: feed_regulator
recipes.remove(<thermalexpansion:augment:704>);
recipes.addShaped("nexus_exp_te_augment_feed_regulator", <thermalexpansion:augment:704>, [
    [null, <minecraft:hopper>, null],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
    [null, <minecraft:hopper>, null]
]);

// Улучшение Thermal: fluid_tank_expansion
recipes.remove(<thermalexpansion:augment:400>);
recipes.addShaped("nexus_exp_te_augment_fluid_tank_expansion", <thermalexpansion:augment:400>, [
    [null, <minecraft:glass>, null],
    [<thermalfoundation:material:320>, <thermalfoundation:material:32>, <thermalfoundation:material:320>],
    [null, <minecraft:glass>, null]
]);

// Улучшение Thermal: closed_loop_cooling
recipes.remove(<thermalexpansion:augment:401>);
recipes.addShaped("nexus_exp_te_augment_closed_loop_cooling", <thermalexpansion:augment:401>, [
    [null, <minecraft:ice>, null],
    [<thermalfoundation:material:321>, <thermalfoundation:material:32>, <thermalfoundation:material:321>],
    [null, <minecraft:ice>, null]
]);

// Труба для предметов (Itemduct)
recipes.remove(<thermaldynamics:duct_32:0>);
recipes.addShaped("nexus_exp_te_duct_item_basic", <thermaldynamics:duct_32:0> * 6, [
    [<thermalfoundation:material:321>, <minecraft:glass>, <thermalfoundation:material:321>],
    [<minecraft:glass>, null, <minecraft:glass>],
    [<thermalfoundation:material:321>, <minecraft:glass>, <thermalfoundation:material:321>]
]);

// Непрозрачная труба для предметов
recipes.remove(<thermaldynamics:duct_32:1>);
recipes.addShaped("nexus_exp_te_duct_item_opaque", <thermaldynamics:duct_32:1> * 6, [
    [<thermalfoundation:material:321>, <thermalfoundation:material:323>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:323>, null, <thermalfoundation:material:323>],
    [<thermalfoundation:material:321>, <thermalfoundation:material:323>, <thermalfoundation:material:321>]
]);

// Импульсная труба для предметов
recipes.remove(<thermaldynamics:duct_32:2>);
recipes.addShaped("nexus_exp_te_duct_item_impulse", <thermaldynamics:duct_32:2> * 6, [
    [<thermalfoundation:material:358>, <minecraft:glowstone_dust>, <thermalfoundation:material:358>],
    [<minecraft:glowstone_dust>, <thermaldynamics:duct_32:0>, <minecraft:glowstone_dust>],
    [<thermalfoundation:material:358>, <minecraft:glowstone_dust>, <thermalfoundation:material:358>]
]);

// Жидкостная труба (Fluiduct)
recipes.remove(<thermaldynamics:duct_16:0>);
recipes.addShaped("nexus_exp_te_duct_fluid_basic", <thermaldynamics:duct_16:0> * 6, [
    [<thermalfoundation:material:320>, <minecraft:glass>, <thermalfoundation:material:320>],
    [<minecraft:glass>, null, <minecraft:glass>],
    [<thermalfoundation:material:320>, <minecraft:glass>, <thermalfoundation:material:320>]
]);

// Укрепленная жидкостная труба
recipes.remove(<thermaldynamics:duct_16:2>);
recipes.addShaped("nexus_exp_te_duct_fluid_hardened", <thermaldynamics:duct_16:2> * 6, [
    [<thermalfoundation:material:354>, <minecraft:glass>, <thermalfoundation:material:354>],
    [<minecraft:glass>, <thermaldynamics:duct_16:0>, <minecraft:glass>],
    [<thermalfoundation:material:354>, <minecraft:glass>, <thermalfoundation:material:354>]
]);

// Сверхламинарная жидкостная труба
recipes.remove(<thermaldynamics:duct_16:6>);
recipes.addShaped("nexus_exp_te_duct_fluid_superlaminar", <thermaldynamics:duct_16:6> * 6, [
    [<thermalfoundation:material:357>, <minecraft:glass>, <thermalfoundation:material:357>],
    [<minecraft:glass>, <thermaldynamics:duct_16:2>, <minecraft:glass>],
    [<thermalfoundation:material:357>, <minecraft:glass>, <thermalfoundation:material:357>]
]);

// Энергетическая труба (Fluxduct): leadstone
recipes.remove(<thermaldynamics:duct_0:0>);
recipes.addShaped("nexus_exp_te_fluxduct_leadstone", <thermaldynamics:duct_0:0> * 6, [
    [<thermalfoundation:material:323>, <minecraft:redstone>, <thermalfoundation:material:323>],
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:323>, <minecraft:redstone>, <thermalfoundation:material:323>]
]);

// Энергетическая труба (Fluxduct): hardened
recipes.remove(<thermaldynamics:duct_0:1>);
recipes.addShaped("nexus_exp_te_fluxduct_hardened", <thermaldynamics:duct_0:1> * 6, [
    [<thermalfoundation:material:354>, <minecraft:redstone>, <thermalfoundation:material:354>],
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:354>, <minecraft:redstone>, <thermalfoundation:material:354>]
]);

// Энергетическая труба (Fluxduct): signalum
recipes.remove(<thermaldynamics:duct_0:2>);
recipes.addShaped("nexus_exp_te_fluxduct_signalum", <thermaldynamics:duct_0:2> * 6, [
    [<thermalfoundation:material:357>, <minecraft:redstone>, <thermalfoundation:material:357>],
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:357>, <minecraft:redstone>, <thermalfoundation:material:357>]
]);

// Энергетическая труба (Fluxduct): resonant
recipes.remove(<thermaldynamics:duct_0:3>);
recipes.addShaped("nexus_exp_te_fluxduct_resonant", <thermaldynamics:duct_0:3> * 6, [
    [<thermalfoundation:material:359>, <minecraft:redstone>, <thermalfoundation:material:359>],
    [<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],
    [<thermalfoundation:material:359>, <minecraft:redstone>, <thermalfoundation:material:359>]
]);

// Энергетическая труба (Fluxduct): cryo
recipes.remove(<thermaldynamics:duct_0:4>);
recipes.addShaped("nexus_exp_te_fluxduct_cryo", <thermaldynamics:duct_0:4> * 6, [
    [<thermalfoundation:material:358>, <thermalfoundation:material:1025>, <thermalfoundation:material:358>],
    [<thermalfoundation:material:1025>, <minecraft:glass>, <thermalfoundation:material:1025>],
    [<thermalfoundation:material:358>, <thermalfoundation:material:1025>, <thermalfoundation:material:358>]
]);

// Сервомеханизм: basic
recipes.remove(<thermaldynamics:servo:0>);
recipes.addShaped("nexus_exp_te_servo_basic", <thermaldynamics:servo:0> * 2, [
    [null, <minecraft:redstone>, null],
    [<thermalfoundation:material:32>, <minecraft:iron_bars>, <thermalfoundation:material:32>],
    [null, <minecraft:redstone>, null]
]);

// Фильтр: basic
recipes.remove(<thermaldynamics:filter:0>);
recipes.addShaped("nexus_exp_te_filter_basic", <thermaldynamics:filter:0> * 2, [
    [null, <thermalfoundation:material:32>, null],
    [<minecraft:redstone>, <minecraft:paper>, <minecraft:redstone>],
    [null, <thermalfoundation:material:32>, null]
]);

// Поисковик: basic
recipes.remove(<thermaldynamics:retriever:0>);
recipes.addShaped("nexus_exp_te_retriever_basic", <thermaldynamics:retriever:0> * 2, [
    [null, <minecraft:ender_pearl>, null],
    [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>],
    [null, <thermalfoundation:material:32>, null]
]);

// Сервомеханизм: hardened
recipes.remove(<thermaldynamics:servo:1>);
recipes.addShaped("nexus_exp_te_servo_hardened", <thermaldynamics:servo:1> * 2, [
    [null, <minecraft:redstone>, null],
    [<thermalfoundation:material:354>, <minecraft:iron_bars>, <thermalfoundation:material:354>],
    [null, <minecraft:redstone>, null]
]);

// Фильтр: hardened
recipes.remove(<thermaldynamics:filter:1>);
recipes.addShaped("nexus_exp_te_filter_hardened", <thermaldynamics:filter:1> * 2, [
    [null, <thermalfoundation:material:354>, null],
    [<minecraft:redstone>, <minecraft:paper>, <minecraft:redstone>],
    [null, <thermalfoundation:material:354>, null]
]);

// Поисковик: hardened
recipes.remove(<thermaldynamics:retriever:1>);
recipes.addShaped("nexus_exp_te_retriever_hardened", <thermaldynamics:retriever:1> * 2, [
    [null, <minecraft:ender_pearl>, null],
    [<thermalfoundation:material:354>, <minecraft:redstone>, <thermalfoundation:material:354>],
    [null, <thermalfoundation:material:354>, null]
]);

// Сервомеханизм: reinforced
recipes.remove(<thermaldynamics:servo:2>);
recipes.addShaped("nexus_exp_te_servo_reinforced", <thermaldynamics:servo:2> * 2, [
    [null, <minecraft:redstone>, null],
    [<thermalfoundation:material:353>, <minecraft:iron_bars>, <thermalfoundation:material:353>],
    [null, <minecraft:redstone>, null]
]);

// Фильтр: reinforced
recipes.remove(<thermaldynamics:filter:2>);
recipes.addShaped("nexus_exp_te_filter_reinforced", <thermaldynamics:filter:2> * 2, [
    [null, <thermalfoundation:material:353>, null],
    [<minecraft:redstone>, <minecraft:paper>, <minecraft:redstone>],
    [null, <thermalfoundation:material:353>, null]
]);

// Поисковик: reinforced
recipes.remove(<thermaldynamics:retriever:2>);
recipes.addShaped("nexus_exp_te_retriever_reinforced", <thermaldynamics:retriever:2> * 2, [
    [null, <minecraft:ender_pearl>, null],
    [<thermalfoundation:material:353>, <minecraft:redstone>, <thermalfoundation:material:353>],
    [null, <thermalfoundation:material:353>, null]
]);

// Сервомеханизм: signalum
recipes.remove(<thermaldynamics:servo:3>);
recipes.addShaped("nexus_exp_te_servo_signalum", <thermaldynamics:servo:3> * 2, [
    [null, <minecraft:redstone>, null],
    [<thermalfoundation:material:357>, <minecraft:iron_bars>, <thermalfoundation:material:357>],
    [null, <minecraft:redstone>, null]
]);

// Фильтр: signalum
recipes.remove(<thermaldynamics:filter:3>);
recipes.addShaped("nexus_exp_te_filter_signalum", <thermaldynamics:filter:3> * 2, [
    [null, <thermalfoundation:material:357>, null],
    [<minecraft:redstone>, <minecraft:paper>, <minecraft:redstone>],
    [null, <thermalfoundation:material:357>, null]
]);

// Поисковик: signalum
recipes.remove(<thermaldynamics:retriever:3>);
recipes.addShaped("nexus_exp_te_retriever_signalum", <thermaldynamics:retriever:3> * 2, [
    [null, <minecraft:ender_pearl>, null],
    [<thermalfoundation:material:357>, <minecraft:redstone>, <thermalfoundation:material:357>],
    [null, <thermalfoundation:material:357>, null]
]);

// Сервомеханизм: resonant
recipes.remove(<thermaldynamics:servo:4>);
recipes.addShaped("nexus_exp_te_servo_resonant", <thermaldynamics:servo:4> * 2, [
    [null, <minecraft:redstone>, null],
    [<thermalfoundation:material:359>, <minecraft:iron_bars>, <thermalfoundation:material:359>],
    [null, <minecraft:redstone>, null]
]);

// Фильтр: resonant
recipes.remove(<thermaldynamics:filter:4>);
recipes.addShaped("nexus_exp_te_filter_resonant", <thermaldynamics:filter:4> * 2, [
    [null, <thermalfoundation:material:359>, null],
    [<minecraft:redstone>, <minecraft:paper>, <minecraft:redstone>],
    [null, <thermalfoundation:material:359>, null]
]);

// Поисковик: resonant
recipes.remove(<thermaldynamics:retriever:4>);
recipes.addShaped("nexus_exp_te_retriever_resonant", <thermaldynamics:retriever:4> * 2, [
    [null, <minecraft:ender_pearl>, null],
    [<thermalfoundation:material:359>, <minecraft:redstone>, <thermalfoundation:material:359>],
    [null, <thermalfoundation:material:359>, null]
]);

// Флаксовый конденсатор: basic
recipes.remove(<thermalexpansion:capacitor:0>);
recipes.addShaped("nexus_exp_te_flux_cap_basic", <thermalexpansion:capacitor:0>, [
    [<thermalfoundation:material:320>, <minecraft:redstone>, <thermalfoundation:material:320>],
    [<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:512>, <thermalfoundation:material:320>]
]);

// Резервуар: basic
recipes.remove(<thermalexpansion:reservoir:0>);
recipes.addShaped("nexus_exp_te_reservoir_basic", <thermalexpansion:reservoir:0>, [
    [<thermalfoundation:material:320>, <minecraft:bucket>, <thermalfoundation:material:320>],
    [<minecraft:bucket>, <minecraft:iron_ingot>, <minecraft:bucket>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:320>]
]);

// Сумка исследователя: basic
recipes.remove(<thermalexpansion:satchel:0>);
recipes.addShaped("nexus_exp_te_satchel_basic", <thermalexpansion:satchel:0>, [
    [<minecraft:leather>, <minecraft:wool>, <minecraft:leather>],
    [<thermalfoundation:material:320>, <minecraft:iron_ingot>, <thermalfoundation:material:320>],
    [<minecraft:leather>, <thermalfoundation:material:320>, <minecraft:leather>]
]);

// Энергетическая ячейка Thermal: basic
recipes.addShaped("nexus_exp_te_cell_basic", <thermalexpansion:cell:0>, [
    [<thermalfoundation:material:320>, <minecraft:redstone>, <thermalfoundation:material:320>],
    [<minecraft:redstone>, <thermalexpansion:frame:0>, <minecraft:redstone>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:512>, <thermalfoundation:material:320>]
]);

// Жидкостный резервуар Thermal: basic
recipes.addShaped("nexus_exp_te_tank_basic", <thermalexpansion:tank:0>, [
    [<thermalfoundation:material:320>, <minecraft:glass>, <thermalfoundation:material:320>],
    [<minecraft:glass>, <minecraft:bucket>, <minecraft:glass>],
    [<thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:320>]
]);

// Флаксовый конденсатор: hardened
recipes.remove(<thermalexpansion:capacitor:1>);
recipes.addShaped("nexus_exp_te_flux_cap_hardened", <thermalexpansion:capacitor:1>, [
    [<thermalfoundation:material:354>, <minecraft:redstone>, <thermalfoundation:material:354>],
    [<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:redstone>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Резервуар: hardened
recipes.remove(<thermalexpansion:reservoir:1>);
recipes.addShaped("nexus_exp_te_reservoir_hardened", <thermalexpansion:reservoir:1>, [
    [<thermalfoundation:material:354>, <minecraft:bucket>, <thermalfoundation:material:354>],
    [<minecraft:bucket>, <minecraft:gold_ingot>, <minecraft:bucket>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, <thermalfoundation:material:354>]
]);

// Сумка исследователя: hardened
recipes.remove(<thermalexpansion:satchel:1>);
recipes.addShaped("nexus_exp_te_satchel_hardened", <thermalexpansion:satchel:1>, [
    [<minecraft:leather>, <minecraft:wool>, <minecraft:leather>],
    [<thermalfoundation:material:354>, <minecraft:gold_ingot>, <thermalfoundation:material:354>],
    [<minecraft:leather>, <thermalfoundation:material:354>, <minecraft:leather>]
]);

// Энергетическая ячейка Thermal: hardened
recipes.addShaped("nexus_exp_te_cell_hardened", <thermalexpansion:cell:1>, [
    [<thermalfoundation:material:354>, <minecraft:redstone>, <thermalfoundation:material:354>],
    [<minecraft:redstone>, <thermalexpansion:frame:0>, <minecraft:redstone>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:512>, <thermalfoundation:material:354>]
]);

// Жидкостный резервуар Thermal: hardened
recipes.addShaped("nexus_exp_te_tank_hardened", <thermalexpansion:tank:1>, [
    [<thermalfoundation:material:354>, <minecraft:glass>, <thermalfoundation:material:354>],
    [<minecraft:glass>, <minecraft:bucket>, <minecraft:glass>],
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, <thermalfoundation:material:354>]
]);

// Флаксовый конденсатор: reinforced
recipes.remove(<thermalexpansion:capacitor:2>);
recipes.addShaped("nexus_exp_te_flux_cap_reinforced", <thermalexpansion:capacitor:2>, [
    [<thermalfoundation:material:353>, <minecraft:redstone>, <thermalfoundation:material:353>],
    [<minecraft:redstone>, <minecraft:diamond>, <minecraft:redstone>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Резервуар: reinforced
recipes.remove(<thermalexpansion:reservoir:2>);
recipes.addShaped("nexus_exp_te_reservoir_reinforced", <thermalexpansion:reservoir:2>, [
    [<thermalfoundation:material:353>, <minecraft:bucket>, <thermalfoundation:material:353>],
    [<minecraft:bucket>, <minecraft:diamond>, <minecraft:bucket>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:353>, <thermalfoundation:material:353>]
]);

// Сумка исследователя: reinforced
recipes.remove(<thermalexpansion:satchel:2>);
recipes.addShaped("nexus_exp_te_satchel_reinforced", <thermalexpansion:satchel:2>, [
    [<minecraft:leather>, <minecraft:wool>, <minecraft:leather>],
    [<thermalfoundation:material:353>, <minecraft:diamond>, <thermalfoundation:material:353>],
    [<minecraft:leather>, <thermalfoundation:material:353>, <minecraft:leather>]
]);

// Энергетическая ячейка Thermal: reinforced
recipes.addShaped("nexus_exp_te_cell_reinforced", <thermalexpansion:cell:2>, [
    [<thermalfoundation:material:353>, <minecraft:redstone>, <thermalfoundation:material:353>],
    [<minecraft:redstone>, <thermalexpansion:frame:0>, <minecraft:redstone>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:512>, <thermalfoundation:material:353>]
]);

// Жидкостный резервуар Thermal: reinforced
recipes.addShaped("nexus_exp_te_tank_reinforced", <thermalexpansion:tank:2>, [
    [<thermalfoundation:material:353>, <minecraft:glass>, <thermalfoundation:material:353>],
    [<minecraft:glass>, <minecraft:bucket>, <minecraft:glass>],
    [<thermalfoundation:material:353>, <thermalfoundation:material:353>, <thermalfoundation:material:353>]
]);

// Флаксовый конденсатор: signalum
recipes.remove(<thermalexpansion:capacitor:3>);
recipes.addShaped("nexus_exp_te_flux_cap_signalum", <thermalexpansion:capacitor:3>, [
    [<thermalfoundation:material:357>, <minecraft:redstone>, <thermalfoundation:material:357>],
    [<minecraft:redstone>, <minecraft:emerald>, <minecraft:redstone>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Резервуар: signalum
recipes.remove(<thermalexpansion:reservoir:3>);
recipes.addShaped("nexus_exp_te_reservoir_signalum", <thermalexpansion:reservoir:3>, [
    [<thermalfoundation:material:357>, <minecraft:bucket>, <thermalfoundation:material:357>],
    [<minecraft:bucket>, <minecraft:emerald>, <minecraft:bucket>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:357>, <thermalfoundation:material:357>]
]);

// Сумка исследователя: signalum
recipes.remove(<thermalexpansion:satchel:3>);
recipes.addShaped("nexus_exp_te_satchel_signalum", <thermalexpansion:satchel:3>, [
    [<minecraft:leather>, <minecraft:wool>, <minecraft:leather>],
    [<thermalfoundation:material:357>, <minecraft:emerald>, <thermalfoundation:material:357>],
    [<minecraft:leather>, <thermalfoundation:material:357>, <minecraft:leather>]
]);

// Энергетическая ячейка Thermal: signalum
recipes.addShaped("nexus_exp_te_cell_signalum", <thermalexpansion:cell:3>, [
    [<thermalfoundation:material:357>, <minecraft:redstone>, <thermalfoundation:material:357>],
    [<minecraft:redstone>, <thermalexpansion:frame:0>, <minecraft:redstone>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:512>, <thermalfoundation:material:357>]
]);

// Жидкостный резервуар Thermal: signalum
recipes.addShaped("nexus_exp_te_tank_signalum", <thermalexpansion:tank:3>, [
    [<thermalfoundation:material:357>, <minecraft:glass>, <thermalfoundation:material:357>],
    [<minecraft:glass>, <minecraft:bucket>, <minecraft:glass>],
    [<thermalfoundation:material:357>, <thermalfoundation:material:357>, <thermalfoundation:material:357>]
]);

// Флаксовый конденсатор: resonant
recipes.remove(<thermalexpansion:capacitor:4>);
recipes.addShaped("nexus_exp_te_flux_cap_resonant", <thermalexpansion:capacitor:4>, [
    [<thermalfoundation:material:359>, <minecraft:redstone>, <thermalfoundation:material:359>],
    [<minecraft:redstone>, <minecraft:nether_star>, <minecraft:redstone>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Резервуар: resonant
recipes.remove(<thermalexpansion:reservoir:4>);
recipes.addShaped("nexus_exp_te_reservoir_resonant", <thermalexpansion:reservoir:4>, [
    [<thermalfoundation:material:359>, <minecraft:bucket>, <thermalfoundation:material:359>],
    [<minecraft:bucket>, <minecraft:nether_star>, <minecraft:bucket>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>]
]);

// Сумка исследователя: resonant
recipes.remove(<thermalexpansion:satchel:4>);
recipes.addShaped("nexus_exp_te_satchel_resonant", <thermalexpansion:satchel:4>, [
    [<minecraft:leather>, <minecraft:wool>, <minecraft:leather>],
    [<thermalfoundation:material:359>, <minecraft:nether_star>, <thermalfoundation:material:359>],
    [<minecraft:leather>, <thermalfoundation:material:359>, <minecraft:leather>]
]);

// Энергетическая ячейка Thermal: resonant
recipes.addShaped("nexus_exp_te_cell_resonant", <thermalexpansion:cell:4>, [
    [<thermalfoundation:material:359>, <minecraft:redstone>, <thermalfoundation:material:359>],
    [<minecraft:redstone>, <thermalexpansion:frame:0>, <minecraft:redstone>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:512>, <thermalfoundation:material:359>]
]);

// Жидкостный резервуар Thermal: resonant
recipes.addShaped("nexus_exp_te_tank_resonant", <thermalexpansion:tank:4>, [
    [<thermalfoundation:material:359>, <minecraft:glass>, <thermalfoundation:material:359>],
    [<minecraft:glass>, <minecraft:bucket>, <minecraft:glass>],
    [<thermalfoundation:material:359>, <thermalfoundation:material:359>, <thermalfoundation:material:359>]
]);

// Флаксовая экипировка Redstone Arsenal: sword
recipes.remove(<redstonearsenal:tool.sword_flux>);
recipes.addShaped("nexus_exp_rsa_sword", <redstonearsenal:tool.sword_flux>, [
    [null, <redstonearsenal:material:128>, null],
    [null, <redstonearsenal:material:128>, null],
    [null, <immersiveengineering:material:3>, null]
]);

// Флаксовая экипировка Redstone Arsenal: pickaxe
recipes.remove(<redstonearsenal:tool.pickaxe_flux>);
recipes.addShaped("nexus_exp_rsa_pickaxe", <redstonearsenal:tool.pickaxe_flux>, [
    [<redstonearsenal:material:128>, <redstonearsenal:material:32>, <redstonearsenal:material:128>],
    [null, <immersiveengineering:material:3>, null],
    [null, <immersiveengineering:material:3>, null]
]);

// Флаксовая экипировка Redstone Arsenal: axe
recipes.remove(<redstonearsenal:tool.axe_flux>);
recipes.addShaped("nexus_exp_rsa_axe", <redstonearsenal:tool.axe_flux>, [
    [<redstonearsenal:material:128>, <redstonearsenal:material:128>, null],
    [<redstonearsenal:material:128>, <immersiveengineering:material:3>, null],
    [null, <immersiveengineering:material:3>, null]
]);

// Флаксовая экипировка Redstone Arsenal: shovel
recipes.remove(<redstonearsenal:tool.shovel_flux>);
recipes.addShaped("nexus_exp_rsa_shovel", <redstonearsenal:tool.shovel_flux>, [
    [null, <redstonearsenal:material:128>, null],
    [null, <immersiveengineering:material:3>, null],
    [null, <immersiveengineering:material:3>, null]
]);

// Флаксовая экипировка Redstone Arsenal: sickle
recipes.remove(<redstonearsenal:tool.sickle_flux>);
recipes.addShaped("nexus_exp_rsa_sickle", <redstonearsenal:tool.sickle_flux>, [
    [null, <redstonearsenal:material:128>, null],
    [null, null, <redstonearsenal:material:128>],
    [<immersiveengineering:material:3>, <redstonearsenal:material:128>, null]
]);

// Флаксовая экипировка Redstone Arsenal: bow
recipes.remove(<redstonearsenal:tool.bow_flux>);
recipes.addShaped("nexus_exp_rsa_bow", <redstonearsenal:tool.bow_flux>, [
    [null, <redstonearsenal:material:128>, <minecraft:string>],
    [<redstonearsenal:material:32>, null, <minecraft:string>],
    [null, <redstonearsenal:material:128>, <minecraft:string>]
]);

// Флаксовая экипировка Redstone Arsenal: wrench
recipes.remove(<redstonearsenal:tool.wrench_flux>);
recipes.addShaped("nexus_exp_rsa_wrench", <redstonearsenal:tool.wrench_flux>, [
    [<redstonearsenal:material:128>, null, <redstonearsenal:material:128>],
    [null, <redstonearsenal:material:64>, null],
    [null, <redstonearsenal:material:32>, null]
]);

// Флаксовая экипировка Redstone Arsenal: helmet
recipes.remove(<redstonearsenal:armor.helmet_flux>);
recipes.addShaped("nexus_exp_rsa_helmet", <redstonearsenal:armor.helmet_flux>, [
    [<redstonearsenal:material:128>, <redstonearsenal:material:128>, <redstonearsenal:material:128>],
    [<redstonearsenal:material:128>, <minecraft:diamond_helmet>, <redstonearsenal:material:128>]
]);

// Флаксовая экипировка Redstone Arsenal: plate
recipes.remove(<redstonearsenal:armor.plate_flux>);
recipes.addShaped("nexus_exp_rsa_plate", <redstonearsenal:armor.plate_flux>, [
    [<redstonearsenal:material:128>, <minecraft:diamond_chestplate>, <redstonearsenal:material:128>],
    [<redstonearsenal:material:128>, <redstonearsenal:material:64>, <redstonearsenal:material:128>],
    [<redstonearsenal:material:128>, <redstonearsenal:material:128>, <redstonearsenal:material:128>]
]);

// Флаксовая экипировка Redstone Arsenal: legs
recipes.remove(<redstonearsenal:armor.legs_flux>);
recipes.addShaped("nexus_exp_rsa_legs", <redstonearsenal:armor.legs_flux>, [
    [<redstonearsenal:material:128>, <redstonearsenal:material:128>, <redstonearsenal:material:128>],
    [<redstonearsenal:material:128>, <minecraft:diamond_leggings>, <redstonearsenal:material:128>],
    [<redstonearsenal:material:128>, null, <redstonearsenal:material:128>]
]);

// Флаксовая экипировка Redstone Arsenal: boots
recipes.remove(<redstonearsenal:armor.boots_flux>);
recipes.addShaped("nexus_exp_rsa_boots", <redstonearsenal:armor.boots_flux>, [
    [<redstonearsenal:material:128>, null, <redstonearsenal:material:128>],
    [<redstonearsenal:material:128>, <minecraft:diamond_boots>, <redstonearsenal:material:128>]
]);

// Пыль пиротеума
recipes.remove(<thermalfoundation:material:1024>);
recipes.addShaped("nexus_exp_te_pyrotheum_dust", <thermalfoundation:material:1024> * 2, [
    [<minecraft:blaze_powder>, <minecraft:redstone>, <minecraft:blaze_powder>],
    [<minecraft:redstone>, <minecraft:gunpowder>, <minecraft:redstone>],
    [<minecraft:blaze_powder>, <minecraft:redstone>, <minecraft:blaze_powder>]
]);

// Пыль криотеума
recipes.remove(<thermalfoundation:material:1025>);
recipes.addShaped("nexus_exp_te_cryotheum_dust", <thermalfoundation:material:1025> * 2, [
    [<minecraft:snowball>, <minecraft:redstone>, <minecraft:snowball>],
    [<minecraft:redstone>, <minecraft:gunpowder>, <minecraft:redstone>],
    [<minecraft:snowball>, <minecraft:redstone>, <minecraft:snowball>]
]);

// Пыль аэротеума
recipes.remove(<thermalfoundation:material:1026>);
recipes.addShaped("nexus_exp_te_aerotheum_dust", <thermalfoundation:material:1026> * 2, [
    [<minecraft:feather>, <minecraft:redstone>, <minecraft:feather>],
    [<minecraft:redstone>, <minecraft:gunpowder>, <minecraft:redstone>],
    [<minecraft:feather>, <minecraft:redstone>, <minecraft:feather>]
]);

// Пыль петротеума
recipes.remove(<thermalfoundation:material:1027>);
recipes.addShaped("nexus_exp_te_petrotheum_dust", <thermalfoundation:material:1027> * 2, [
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>],
    [<minecraft:redstone>, <minecraft:obsidian>, <minecraft:redstone>],
    [<minecraft:clay_ball>, <minecraft:redstone>, <minecraft:clay_ball>]
]);
