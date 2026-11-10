import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 07 -> Stage 08 Transition
// Gate Item: Stabilized Quantum Substrate
// Requires: Distributed Control Matrix + High-Energy Subatomic Compression
// ========================================================

val quantumSubstrate = <contenttweaker:stabilized_quantum_substrate>;
val distributedMatrix = <contenttweaker:distributed_control_matrix>;

val netherStar = <minecraft:nether_star>;
val shulkerShell = <minecraft:shulker_shell>;
val endStone = <minecraft:end_stone>;

recipes.addShaped("nexus_s07_stabilized_quantum_substrate", quantumSubstrate, [
    [shulkerShell, netherStar, shulkerShell],
    [endStone, distributedMatrix, endStone],
    [shulkerShell, netherStar, shulkerShell]
]);

print("[Nexus Crucible] Stage 07 (Advanced Industry) recipes registered.");
