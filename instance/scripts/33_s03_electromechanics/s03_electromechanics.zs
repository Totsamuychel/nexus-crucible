import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 03 -> Stage 04 Transition
// Gate Item: Insulated Industrial Core
// Requires: Living Conductor + Electromechanics (Redstone, Steel/Iron, Insulator)
// ========================================================

val insulatedCore = <contenttweaker:insulated_industrial_core>;
val livingConductor = <contenttweaker:living_conductor>;

val redstoneBlock = <minecraft:redstone_block>;
val steelOrIron = <ore:ingotSteel> | <minecraft:iron_block>;
val insulatorGlass = <minecraft:glass> | <ore:plankTreatedWood>;

recipes.addShaped("nexus_s03_insulated_industrial_core", insulatedCore, [
    [insulatorGlass, redstoneBlock, insulatorGlass],
    [steelOrIron, livingConductor, steelOrIron],
    [insulatorGlass, steelOrIron, insulatorGlass]
]);

print("[Nexus Crucible] Stage 03 (Electromechanics) recipes registered.");
