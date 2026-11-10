import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 05 -> Stage 06 Transition
// Gate Item: Runic Logic Core
// Requires: Alchemical Machine Frame + Arcane Runes & Infusion
// ========================================================

val runicCore = <contenttweaker:runic_logic_core>;
val alchemicalFrame = <contenttweaker:alchemical_machine_frame>;

val eyeOfEnder = <minecraft:ender_eye>;
val emerald = <minecraft:emerald>;
val glowstone = <minecraft:glowstone>;

recipes.addShaped("nexus_s05_runic_logic_core", runicCore, [
    [glowstone, emerald, glowstone],
    [eyeOfEnder, alchemicalFrame, eyeOfEnder],
    [glowstone, eyeOfEnder, glowstone]
]);

print("[Nexus Crucible] Stage 05 (Arcane Engineering) recipes registered.");
