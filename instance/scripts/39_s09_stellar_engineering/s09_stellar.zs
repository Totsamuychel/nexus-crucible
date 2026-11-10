import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 09 -> Stage 10 Transition
// Gate Item: Nexus Singularity
// Combines celestial binding, dark matter and compressed energy
// ========================================================

val nexusSingularity = <contenttweaker:nexus_singularity>;
val celestialMatrix = <contenttweaker:celestial_binding_matrix>;

val dragonEgg = <minecraft:dragon_egg>;
val netherStar = <minecraft:nether_star>;
val emeraldBlock = <minecraft:emerald_block>;
val diamondBlock = <minecraft:diamond_block>;

recipes.addShaped("nexus_s09_nexus_singularity", nexusSingularity, [
    [diamondBlock, netherStar, diamondBlock],
    [emeraldBlock, celestialMatrix, emeraldBlock],
    [diamondBlock, dragonEgg, diamondBlock]
]);

print("[Nexus Crucible] Stage 09 (Stellar Engineering) recipes registered.");
