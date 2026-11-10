import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 06 -> Stage 07 Transition
// Gate Item: Distributed Control Matrix
// Requires: Runic Logic Core + Digital Logic Processors & High-Speed Routing
// ========================================================

val distributedMatrix = <contenttweaker:distributed_control_matrix>;
val runicCore = <contenttweaker:runic_logic_core>;

val diamondBlock = <minecraft:diamond_block>;
val comparator = <minecraft:comparator>;
val prismarine = <minecraft:prismarine>;

recipes.addShaped("nexus_s06_distributed_control_matrix", distributedMatrix, [
    [prismarine, comparator, prismarine],
    [diamondBlock, runicCore, diamondBlock],
    [prismarine, comparator, prismarine]
]);

print("[Nexus Crucible] Stage 06 (Networked Factory) recipes registered.");
