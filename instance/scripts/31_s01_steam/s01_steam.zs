import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 01 -> Stage 02 Transition
// Gate Item: Pressure Assembly
// Requires: Fired Foundation + Early Metallurgy (Copper / Bronze / Piston)
// ========================================================

val pressureAssembly = <contenttweaker:pressure_assembly>;
val firedFoundation = <contenttweaker:fired_foundation>;
val copperIngot = <ore:ingotCopper>;
val bronzeOrIron = <ore:ingotBronze> | <minecraft:iron_ingot>;
val piston = <minecraft:piston>;

recipes.addShaped("nexus_s01_pressure_assembly", pressureAssembly, [
    [copperIngot, piston, copperIngot],
    [bronzeOrIron, firedFoundation, bronzeOrIron],
    [copperIngot, bronzeOrIron, copperIngot]
]);

print("[Nexus Crucible] Stage 01 (Steam) recipes registered.");
