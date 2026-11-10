import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 10 Convergence (Final Endgame Craft)
// Result: Convergence Core
// Requiring: Nexus Singularity + Ultimate Material Matrix
// ========================================================

val convergenceCore = <contenttweaker:convergence_core>;
val nexusSingularity = <contenttweaker:nexus_singularity>;

val netherStar = <minecraft:nether_star>;
val dragonEgg = <minecraft:dragon_egg>;
val totem = <minecraft:totem_of_undying>;
val beacon = <minecraft:beacon>;

// 3x3 representation for basic crafting table (Extreme Crafting 9x9 expands upon this)
recipes.addShaped("nexus_s10_convergence_core", convergenceCore, [
    [beacon, netherStar, beacon],
    [totem, nexusSingularity, totem],
    [beacon, dragonEgg, beacon]
]);

print("[Nexus Crucible] Stage 10 (Convergence Core) recipes registered.");
