import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 02 -> Stage 03 Transition
// Gate Item: Living Conductor
// Requires: Pressure Assembly + Botania Livingrock/Livingwood + Mana / Starlight
// ========================================================

val livingConductor = <contenttweaker:living_conductor>;
val pressureAssembly = <contenttweaker:pressure_assembly>;

// Botania livingrock or fallback polished stone / quartz / lapis
val livingMaterial = <ore:livingrock> | <ore:livingwood> | <minecraft:lapis_block>;
val starlightOrGold = <ore:ingotGold> | <minecraft:ender_pearl>;

recipes.addShaped("nexus_s02_living_conductor", livingConductor, [
    [starlightOrGold, livingMaterial, starlightOrGold],
    [livingMaterial, pressureAssembly, livingMaterial],
    [starlightOrGold, livingMaterial, starlightOrGold]
]);

print("[Nexus Crucible] Stage 02 (Awakened Nature) recipes registered.");
