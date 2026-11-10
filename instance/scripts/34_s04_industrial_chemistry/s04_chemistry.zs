import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 04 -> Stage 05 Transition
// Gate Item: Alchemical Machine Frame
// Requires: Insulated Industrial Core + Industrial Frame + Alchemical reagents
// ========================================================

val alchemicalFrame = <contenttweaker:alchemical_machine_frame>;
val insulatedCore = <contenttweaker:insulated_industrial_core>;

val obsidian = <minecraft:obsidian>;
val netherQuartz = <minecraft:quartz_block>;
val blazePowder = <minecraft:blaze_powder>;

recipes.addShaped("nexus_s04_alchemical_machine_frame", alchemicalFrame, [
    [obsidian, netherQuartz, obsidian],
    [blazePowder, insulatedCore, blazePowder],
    [obsidian, netherQuartz, obsidian]
]);

print("[Nexus Crucible] Stage 04 (Industrial Chemistry) recipes registered.");
