import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.extendedcrafting.TableCrafting;

// ========================================================
// Nexus Crucible: Tiered Extended Crafting (3x3, 5x5, 7x7, 9x9)
// ========================================================

val blackIron = <extendedcrafting:material:0>;
val blackIronBlock = <extendedcrafting:storage:0>;
val luminessence = <extendedcrafting:material:7>;

val basicComponent = <extendedcrafting:material:14>;
val basicCatalyst = <extendedcrafting:material:8>;
val advancedComponent = <extendedcrafting:material:15>;
val advancedCatalyst = <extendedcrafting:material:9>;
val eliteComponent = <extendedcrafting:material:16>;
val eliteCatalyst = <extendedcrafting:material:10>;
val ultimateComponent = <extendedcrafting:material:17>;
val ultimateCatalyst = <extendedcrafting:material:11>;
val crystaltineIngot = <extendedcrafting:material:24>;

val tableBasic = <extendedcrafting:table_basic>;
val tableAdvanced = <extendedcrafting:table_advanced>;
val tableElite = <extendedcrafting:table_elite>;
val tableUltimate = <extendedcrafting:table_ultimate>;

// --------------------------------------------------------
// 1. BASIC TABLE (3x3 Tier 1)
// Crafting Basic Table in Vanilla Crafting Table
// --------------------------------------------------------
recipes.remove(tableBasic);
recipes.addShaped("nexus_table_basic", tableBasic, [
    [blackIron, <contenttweaker:pressure_assembly>, blackIron],
    [blackIron, <ore:workbench>, blackIron],
    [blackIron, <ore:blockBronze>, blackIron]
]);

// Basic Component
recipes.remove(basicComponent);
recipes.addShaped("nexus_basic_component", basicComponent * 2, [
    [luminessence, blackIron, luminessence],
    [<ore:plateGold>, <contenttweaker:living_conductor>, <ore:plateGold>],
    [luminessence, blackIron, luminessence]
]);

// --------------------------------------------------------
// 2. ADVANCED TABLE (5x5 Tier 2)
// Crafted inside Basic Table (3x3)
// --------------------------------------------------------
TableCrafting.remove(tableAdvanced);
TableCrafting.addShaped(1, tableAdvanced, [
    [advancedComponent, blackIronBlock, advancedComponent],
    [blackIronBlock, tableBasic, blackIronBlock],
    [advancedComponent, <contenttweaker:insulated_industrial_core>, advancedComponent]
]);

// Advanced Component (3x3)
recipes.remove(advancedComponent);
TableCrafting.addShaped(1, advancedComponent * 2, [
    [luminessence, <ore:plateSteel>, luminessence],
    [basicComponent, <contenttweaker:insulated_industrial_core>, basicComponent],
    [luminessence, <ore:plateSteel>, luminessence]
]);

// --- 5x5 RECIPES in Advanced Table ---

// AE2 ME Controller (5x5)
val meController = <appliedenergistics2:controller>;
recipes.remove(meController);
TableCrafting.addShaped(2, meController, [
    [<appliedenergistics2:material:7>, <appliedenergistics2:material:24>, <ore:platePlastic>, <appliedenergistics2:material:24>, <appliedenergistics2:material:7>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:material:12>, <appliedenergistics2:material:23>, <appliedenergistics2:material:12>, <appliedenergistics2:material:24>],
    [<ore:platePlastic>, <appliedenergistics2:material:22>, <contenttweaker:runic_logic_core>, <appliedenergistics2:material:22>, <ore:platePlastic>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:material:12>, <appliedenergistics2:material:23>, <appliedenergistics2:material:12>, <appliedenergistics2:material:24>],
    [<appliedenergistics2:material:7>, <appliedenergistics2:material:24>, <ore:platePlastic>, <appliedenergistics2:material:24>, <appliedenergistics2:material:7>]
]);

// AE2 Molecular Assembler (5x5)
val molecularAssembler = <appliedenergistics2:molecular_assembler>;
recipes.remove(molecularAssembler);
TableCrafting.addShaped(2, molecularAssembler, [
    [<ore:plateSteel>, <ore:workbench>, <ore:platePlastic>, <ore:workbench>, <ore:plateSteel>],
    [<ore:workbench>, <appliedenergistics2:material:24>, <appliedenergistics2:material:43>, <appliedenergistics2:material:24>, <ore:workbench>],
    [<ore:platePlastic>, <appliedenergistics2:material:44>, <contenttweaker:distributed_control_matrix>, <appliedenergistics2:material:44>, <ore:platePlastic>],
    [<ore:workbench>, <appliedenergistics2:material:24>, <appliedenergistics2:material:43>, <appliedenergistics2:material:24>, <ore:workbench>],
    [<ore:plateSteel>, <ore:workbench>, <ore:platePlastic>, <ore:workbench>, <ore:plateSteel>]
]);

// NuclearCraft Fission Controller (5x5)
val ncController = <nuclearcraft:fission_controller_new_fixed>;
recipes.remove(ncController);
TableCrafting.addShaped(2, ncController, [
    [<nuclearcraft:part:1>, <nuclearcraft:part:0>, <ore:ingotTough>, <nuclearcraft:part:0>, <nuclearcraft:part:1>],
    [<nuclearcraft:part:0>, meController, <nuclearcraft:alloy:1>, meController, <nuclearcraft:part:0>],
    [<ore:ingotTough>, <nuclearcraft:alloy:2>, <contenttweaker:distributed_control_matrix>, <nuclearcraft:alloy:2>, <ore:ingotTough>],
    [<nuclearcraft:part:0>, meController, <nuclearcraft:alloy:1>, meController, <nuclearcraft:part:0>],
    [<nuclearcraft:part:1>, <nuclearcraft:part:0>, <ore:ingotTough>, <nuclearcraft:part:0>, <nuclearcraft:part:1>]
]);

// --------------------------------------------------------
// 3. ELITE TABLE (7x7 Tier 3)
// Crafted inside Advanced Table (5x5)
// --------------------------------------------------------
TableCrafting.remove(tableElite);
TableCrafting.addShaped(2, tableElite, [
    [eliteComponent, crystaltineIngot, blackIronBlock, crystaltineIngot, eliteComponent],
    [crystaltineIngot, advancedComponent, tableAdvanced, advancedComponent, crystaltineIngot],
    [blackIronBlock, tableAdvanced, <contenttweaker:stabilized_quantum_substrate>, tableAdvanced, blackIronBlock],
    [crystaltineIngot, advancedComponent, tableAdvanced, advancedComponent, crystaltineIngot],
    [eliteComponent, crystaltineIngot, blackIronBlock, crystaltineIngot, eliteComponent]
]);

// Elite Component (5x5)
recipes.remove(eliteComponent);
TableCrafting.addShaped(2, eliteComponent * 2, [
    [luminessence, crystaltineIngot, <ore:ingotTough>, crystaltineIngot, luminessence],
    [crystaltineIngot, advancedComponent, <ore:ingotTerrasteel>, advancedComponent, crystaltineIngot],
    [<ore:ingotTough>, <ore:ingotTerrasteel>, <contenttweaker:distributed_control_matrix>, <ore:ingotTerrasteel>, <ore:ingotTough>],
    [crystaltineIngot, advancedComponent, <ore:ingotTerrasteel>, advancedComponent, crystaltineIngot],
    [luminessence, crystaltineIngot, <ore:ingotTough>, crystaltineIngot, luminessence]
]);

// --- 7x7 RECIPES in Elite Table ---

// Draconic Evolution Fusion Crafting Core (7x7)
val fusionCore = <draconicevolution:fusion_crafting_core>;
recipes.remove(fusionCore);
TableCrafting.addShaped(3, fusionCore, [
    [crystaltineIngot, <draconicevolution:draconium_ingot>, <ore:ingotTough>, <draconicevolution:draconic_core>, <ore:ingotTough>, <draconicevolution:draconium_ingot>, crystaltineIngot],
    [<draconicevolution:draconium_ingot>, eliteComponent, <ore:ingotTerrasteel>, <minecraft:nether_star>, <ore:ingotTerrasteel>, eliteComponent, <draconicevolution:draconium_ingot>],
    [<ore:ingotTough>, <ore:ingotTerrasteel>, <astralsorcery:itemcraftingcomponent:4>, <contenttweaker:celestial_binding_matrix>, <astralsorcery:itemcraftingcomponent:4>, <ore:ingotTerrasteel>, <ore:ingotTough>],
    [<draconicevolution:draconic_core>, <minecraft:nether_star>, <contenttweaker:celestial_binding_matrix>, <botania:storage:2>, <contenttweaker:celestial_binding_matrix>, <minecraft:nether_star>, <draconicevolution:draconic_core>],
    [<ore:ingotTough>, <ore:ingotTerrasteel>, <astralsorcery:itemcraftingcomponent:4>, <contenttweaker:celestial_binding_matrix>, <astralsorcery:itemcraftingcomponent:4>, <ore:ingotTerrasteel>, <ore:ingotTough>],
    [<draconicevolution:draconium_ingot>, eliteComponent, <ore:ingotTerrasteel>, <minecraft:nether_star>, <ore:ingotTerrasteel>, eliteComponent, <draconicevolution:draconium_ingot>],
    [crystaltineIngot, <draconicevolution:draconium_ingot>, <ore:ingotTough>, <draconicevolution:draconic_core>, <ore:ingotTough>, <draconicevolution:draconium_ingot>, crystaltineIngot]
]);

// Astral Sorcery Iridescent Altar (7x7)
val iridescentAltar = <astralsorcery:blockaltar:3>;
recipes.remove(iridescentAltar);
TableCrafting.addShaped(3, iridescentAltar, [
    [<astralsorcery:blockmarble:0>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:blockmarble:0>, <botania:manaresource:5>, <astralsorcery:blockmarble:0>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:blockmarble:0>],
    [<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:2>, crystaltineIngot, <thaumcraft:primordial_pearl>, crystaltineIngot, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:4>],
    [<astralsorcery:blockmarble:0>, crystaltineIngot, <astralsorcery:blockaltar:2>, <contenttweaker:celestial_binding_matrix>, <astralsorcery:blockaltar:2>, crystaltineIngot, <astralsorcery:blockmarble:0>],
    [<botania:manaresource:5>, <thaumcraft:primordial_pearl>, <contenttweaker:celestial_binding_matrix>, <botania:storage:2>, <contenttweaker:celestial_binding_matrix>, <thaumcraft:primordial_pearl>, <botania:manaresource:5>],
    [<astralsorcery:blockmarble:0>, crystaltineIngot, <astralsorcery:blockaltar:2>, <contenttweaker:celestial_binding_matrix>, <astralsorcery:blockaltar:2>, crystaltineIngot, <astralsorcery:blockmarble:0>],
    [<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:2>, crystaltineIngot, <thaumcraft:primordial_pearl>, crystaltineIngot, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:4>],
    [<astralsorcery:blockmarble:0>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:blockmarble:0>, <botania:manaresource:5>, <astralsorcery:blockmarble:0>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:blockmarble:0>]
]);

// Avaritiaddons: Compressed Chest (7x7)
val compressedChest = <avaritiaddons:avaritiaddons_chest:0>;
recipes.remove(compressedChest);
TableCrafting.addShaped(3, compressedChest, [
    [blackIronBlock, crystaltineIngot, <ore:plateDenseIron>, <ore:chest>, <ore:plateDenseIron>, crystaltineIngot, blackIronBlock],
    [crystaltineIngot, eliteComponent, <ironchest:iron_chest:2>, <ironchest:iron_chest:6>, <ironchest:iron_chest:2>, eliteComponent, crystaltineIngot],
    [<ore:plateDenseIron>, <ironchest:iron_chest:2>, <extendedcrafting:storage:0>, <contenttweaker:stabilized_quantum_substrate>, <extendedcrafting:storage:0>, <ironchest:iron_chest:2>, <ore:plateDenseIron>],
    [<ore:chest>, <ironchest:iron_chest:6>, <contenttweaker:stabilized_quantum_substrate>, <extendedcrafting:storage:0>, <contenttweaker:stabilized_quantum_substrate>, <ironchest:iron_chest:6>, <ore:chest>],
    [<ore:plateDenseIron>, <ironchest:iron_chest:2>, <extendedcrafting:storage:0>, <contenttweaker:stabilized_quantum_substrate>, <extendedcrafting:storage:0>, <ironchest:iron_chest:2>, <ore:plateDenseIron>],
    [crystaltineIngot, eliteComponent, <ironchest:iron_chest:2>, <ironchest:iron_chest:6>, <ironchest:iron_chest:2>, eliteComponent, crystaltineIngot],
    [blackIronBlock, crystaltineIngot, <ore:plateDenseIron>, <ore:chest>, <ore:plateDenseIron>, crystaltineIngot, blackIronBlock]
]);

// --------------------------------------------------------
// 4. ULTIMATE TABLE (9x9 Tier 4)
// Crafted inside Elite Table (7x7)
// --------------------------------------------------------
TableCrafting.remove(tableUltimate);
TableCrafting.addShaped(3, tableUltimate, [
    [ultimateComponent, crystaltineIngot, <extendedcrafting:material:40>, blackIronBlock, <extendedcrafting:material:40>, crystaltineIngot, ultimateComponent],
    [crystaltineIngot, eliteComponent, tableElite, eliteComponent, tableElite, eliteComponent, crystaltineIngot],
    [<extendedcrafting:material:40>, eliteComponent, crystaltineIngot, <contenttweaker:celestial_binding_matrix>, crystaltineIngot, eliteComponent, <extendedcrafting:material:40>],
    [blackIronBlock, tableElite, <contenttweaker:celestial_binding_matrix>, <contenttweaker:nexus_singularity>, <contenttweaker:celestial_binding_matrix>, tableElite, blackIronBlock],
    [<extendedcrafting:material:40>, eliteComponent, crystaltineIngot, <contenttweaker:celestial_binding_matrix>, crystaltineIngot, eliteComponent, <extendedcrafting:material:40>],
    [crystaltineIngot, eliteComponent, tableElite, eliteComponent, tableElite, eliteComponent, crystaltineIngot],
    [ultimateComponent, crystaltineIngot, <extendedcrafting:material:40>, blackIronBlock, <extendedcrafting:material:40>, crystaltineIngot, ultimateComponent]
]);

// Avaritia: Extreme Crafting Table (9x9)
val extremeTable = <avaritia:extreme_crafting_table>;
recipes.remove(extremeTable);
TableCrafting.addShaped(4, extremeTable, [
    [crystaltineIngot, crystaltineIngot, crystaltineIngot, <avaritia:resource:1>, <avaritia:resource:4>, <avaritia:resource:1>, crystaltineIngot, crystaltineIngot, crystaltineIngot],
    [crystaltineIngot, ultimateComponent, <extendedcrafting:material:40>, <avaritia:resource:1>, <avaritia:resource:4>, <avaritia:resource:1>, <extendedcrafting:material:40>, ultimateComponent, crystaltineIngot],
    [crystaltineIngot, <extendedcrafting:material:40>, <draconicevolution:awakened_core>, crystaltineIngot, <contenttweaker:nexus_singularity>, crystaltineIngot, <draconicevolution:awakened_core>, <extendedcrafting:material:40>, crystaltineIngot],
    [<avaritia:resource:1>, <avaritia:resource:1>, crystaltineIngot, tableUltimate, tableUltimate, tableUltimate, crystaltineIngot, <avaritia:resource:1>, <avaritia:resource:1>],
    [<avaritia:resource:4>, <avaritia:resource:4>, <contenttweaker:nexus_singularity>, tableUltimate, <minecraft:dragon_egg>, tableUltimate, <contenttweaker:nexus_singularity>, <avaritia:resource:4>, <avaritia:resource:4>],
    [<avaritia:resource:1>, <avaritia:resource:1>, crystaltineIngot, tableUltimate, tableUltimate, tableUltimate, crystaltineIngot, <avaritia:resource:1>, <avaritia:resource:1>],
    [crystaltineIngot, <extendedcrafting:material:40>, <draconicevolution:awakened_core>, crystaltineIngot, <contenttweaker:nexus_singularity>, crystaltineIngot, <draconicevolution:awakened_core>, <extendedcrafting:material:40>, crystaltineIngot],
    [crystaltineIngot, ultimateComponent, <extendedcrafting:material:40>, <avaritia:resource:1>, <avaritia:resource:4>, <avaritia:resource:1>, <extendedcrafting:material:40>, ultimateComponent, crystaltineIngot],
    [crystaltineIngot, crystaltineIngot, crystaltineIngot, <avaritia:resource:1>, <avaritia:resource:4>, <avaritia:resource:1>, crystaltineIngot, crystaltineIngot, crystaltineIngot]
]);

print("[Nexus Crucible] Extended Crafting Tier 1-4 (3x3, 5x5, 7x7, 9x9) recipes registered.");
