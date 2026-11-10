import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 08 -> Stage 09 Transition
// Gate Item: Celestial Binding Matrix
// Requires: Stabilized Quantum Substrate + Celestial / Void Infusion
// ========================================================

val celestialMatrix = <contenttweaker:celestial_binding_matrix>;
val quantumSubstrate = <contenttweaker:stabilized_quantum_substrate>;

val dragonBreath = <minecraft:dragon_breath>;
val totem = <minecraft:totem_of_undying>;
val seaLantern = <minecraft:sea_lantern>;

recipes.addShaped("nexus_s08_celestial_binding_matrix", celestialMatrix, [
    [seaLantern, dragonBreath, seaLantern],
    [totem, quantumSubstrate, totem],
    [seaLantern, dragonBreath, seaLantern]
]);

print("[Nexus Crucible] Stage 08 (Celestial Synthesis) recipes registered.");
