import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.avaritia.ExtremeCrafting;

// ========================================================
// Nexus Crucible: Avaritia Endgame & Avaritiaddons Customization
// Narrative culmination with stepwise armor and tool evolution
// ========================================================

val diamondLattice = <avaritia:resource:0>;
val crystalMatrix = <avaritia:resource:1>;
val neutronPile = <avaritia:resource:2>;
val neutronNugget = <avaritia:resource:3>;
val neutroniumIngot = <avaritia:resource:4>;
val infinityCatalyst = <avaritia:resource:5>;
val infinityIngot = <avaritia:resource:6>;
val recordFragment = <avaritia:resource:7>;

val compressedChest = <avaritiaddons:avaritiaddons_chest:0>;
val infinityChest = <avaritiaddons:avaritiaddons_chest:1>;
val extremeAutoCrafter = <avaritiaddons:extreme_auto_crafter>;

val nexusSingularity = <contenttweaker:nexus_singularity>;
val convergenceCore = <contenttweaker:convergence_core>;

// --------------------------------------------------------
// 1. INFINITY CATALYST (9x9)
// The culmination of all 10 major mods in Nexus Crucible
// --------------------------------------------------------
ExtremeCrafting.remove(infinityCatalyst);
ExtremeCrafting.addShaped("nexus_infinity_catalyst", infinityCatalyst, [
    [diamondLattice, crystalMatrix, <tconstruct:metal:2>, <botania:storage:1>, <astralsorcery:itemcraftingcomponent:4>, <botania:storage:1>, <tconstruct:metal:2>, crystalMatrix, diamondLattice],
    [crystalMatrix, neutroniumIngot, <immersiveengineering:metal_decoration0:5>, <thermalexpansion:frame:0>, <industrialforegoing:plastic>, <thermalexpansion:frame:0>, <immersiveengineering:metal_decoration0:5>, neutroniumIngot, crystalMatrix],
    [<tconstruct:metal:2>, <immersiveengineering:metal_decoration0:5>, <appliedenergistics2:material:38>, <nuclearcraft:fusion_core>, <thaumcraft:primordial_pearl>, <nuclearcraft:fusion_core>, <appliedenergistics2:material:38>, <immersiveengineering:metal_decoration0:5>, <tconstruct:metal:2>],
    [<botania:storage:1>, <thermalexpansion:frame:0>, <nuclearcraft:fusion_core>, <draconicevolution:awakened_core>, <twilightforest:fiery_ingot>, <draconicevolution:awakened_core>, <nuclearcraft:fusion_core>, <thermalexpansion:frame:0>, <botania:storage:1>],
    [<astralsorcery:itemcraftingcomponent:4>, <industrialforegoing:plastic>, <thaumcraft:primordial_pearl>, <twilightforest:fiery_ingot>, nexusSingularity, <twilightforest:fiery_ingot>, <thaumcraft:primordial_pearl>, <industrialforegoing:plastic>, <astralsorcery:itemcraftingcomponent:4>],
    [<botania:storage:1>, <thermalexpansion:frame:0>, <nuclearcraft:fusion_core>, <draconicevolution:awakened_core>, <twilightforest:fiery_ingot>, <draconicevolution:awakened_core>, <nuclearcraft:fusion_core>, <thermalexpansion:frame:0>, <botania:storage:1>],
    [<tconstruct:metal:2>, <immersiveengineering:metal_decoration0:5>, <appliedenergistics2:material:38>, <nuclearcraft:fusion_core>, <thaumcraft:primordial_pearl>, <nuclearcraft:fusion_core>, <appliedenergistics2:material:38>, <immersiveengineering:metal_decoration0:5>, <tconstruct:metal:2>],
    [crystalMatrix, neutroniumIngot, <immersiveengineering:metal_decoration0:5>, <thermalexpansion:frame:0>, <environmentaltech:litherite_crystal>, <thermalexpansion:frame:0>, <immersiveengineering:metal_decoration0:5>, neutroniumIngot, crystalMatrix],
    [diamondLattice, crystalMatrix, <avaritia:cosmic_meatballs>, <avaritia:ultimate_stew>, <avaritia:endest_pearl>, recordFragment, <avaritia:cosmic_meatballs>, crystalMatrix, diamondLattice]
]);

// --------------------------------------------------------
// 2. INFINITY INGOT (9x9)
// --------------------------------------------------------
ExtremeCrafting.remove(infinityIngot);
ExtremeCrafting.addShaped("nexus_infinity_ingot", infinityIngot, [
    [neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot],
    [neutroniumIngot, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, neutroniumIngot],
    [neutroniumIngot, crystalMatrix, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, crystalMatrix, neutroniumIngot],
    [neutroniumIngot, crystalMatrix, <draconicevolution:draconic_ingot>, infinityCatalyst, infinityCatalyst, infinityCatalyst, <draconicevolution:draconic_ingot>, crystalMatrix, neutroniumIngot],
    [neutroniumIngot, crystalMatrix, <draconicevolution:draconic_ingot>, infinityCatalyst, nexusSingularity, infinityCatalyst, <draconicevolution:draconic_ingot>, crystalMatrix, neutroniumIngot],
    [neutroniumIngot, crystalMatrix, <draconicevolution:draconic_ingot>, infinityCatalyst, infinityCatalyst, infinityCatalyst, <draconicevolution:draconic_ingot>, crystalMatrix, neutroniumIngot],
    [neutroniumIngot, crystalMatrix, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, crystalMatrix, neutroniumIngot],
    [neutroniumIngot, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, neutroniumIngot],
    [neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot, neutroniumIngot]
]);

// --------------------------------------------------------
// 3. AVARITIADDONS: INFINITY CHEST (9x9)
// --------------------------------------------------------
ExtremeCrafting.remove(infinityChest);
ExtremeCrafting.addShaped("nexus_infinity_chest", infinityChest, [
    [infinityIngot, neutroniumIngot, neutroniumIngot, infinityIngot, <avaritia:resource:4>, infinityIngot, neutroniumIngot, neutroniumIngot, infinityIngot],
    [neutroniumIngot, crystalMatrix, <draconicevolution:draconic_ingot>, infinityIngot, infinityIngot, infinityIngot, <draconicevolution:draconic_ingot>, crystalMatrix, neutroniumIngot],
    [neutroniumIngot, <draconicevolution:draconic_ingot>, infinityCatalyst, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, infinityCatalyst, <draconicevolution:draconic_ingot>, neutroniumIngot],
    [infinityIngot, infinityIngot, <extendedcrafting:material:40>, compressedChest, compressedChest, compressedChest, <extendedcrafting:material:40>, infinityIngot, infinityIngot],
    [<avaritia:resource:4>, infinityIngot, <extendedcrafting:material:40>, compressedChest, nexusSingularity, compressedChest, <extendedcrafting:material:40>, infinityIngot, <avaritia:resource:4>],
    [infinityIngot, infinityIngot, <extendedcrafting:material:40>, compressedChest, compressedChest, compressedChest, <extendedcrafting:material:40>, infinityIngot, infinityIngot],
    [neutroniumIngot, <draconicevolution:draconic_ingot>, infinityCatalyst, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, infinityCatalyst, <draconicevolution:draconic_ingot>, neutroniumIngot],
    [neutroniumIngot, crystalMatrix, <draconicevolution:draconic_ingot>, infinityIngot, infinityIngot, infinityIngot, <draconicevolution:draconic_ingot>, crystalMatrix, neutroniumIngot],
    [infinityIngot, neutroniumIngot, neutroniumIngot, infinityIngot, <avaritia:resource:4>, infinityIngot, neutroniumIngot, neutroniumIngot, infinityIngot]
]);

// --------------------------------------------------------
// 4. AVARITIADDONS: EXTREME AUTO CRAFTER (9x9)
// --------------------------------------------------------
ExtremeCrafting.remove(extremeAutoCrafter);
ExtremeCrafting.addShaped("nexus_extreme_auto_crafter", extremeAutoCrafter, [
    [neutroniumIngot, infinityIngot, crystalMatrix, <appliedenergistics2:material:24>, crystalMatrix, <appliedenergistics2:material:24>, crystalMatrix, infinityIngot, neutroniumIngot],
    [infinityIngot, crystalMatrix, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:molecular_assembler>, crystalMatrix, infinityIngot],
    [crystalMatrix, <appliedenergistics2:molecular_assembler>, infinityCatalyst, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, infinityCatalyst, <appliedenergistics2:molecular_assembler>, crystalMatrix],
    [<appliedenergistics2:material:24>, <appliedenergistics2:molecular_assembler>, <draconicevolution:draconic_ingot>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <draconicevolution:draconic_ingot>, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:material:24>],
    [crystalMatrix, <appliedenergistics2:molecular_assembler>, <draconicevolution:draconic_ingot>, <avaritia:extreme_crafting_table>, nexusSingularity, <avaritia:extreme_crafting_table>, <draconicevolution:draconic_ingot>, <appliedenergistics2:molecular_assembler>, crystalMatrix],
    [<appliedenergistics2:material:24>, <appliedenergistics2:molecular_assembler>, <draconicevolution:draconic_ingot>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <draconicevolution:draconic_ingot>, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:material:24>],
    [crystalMatrix, <appliedenergistics2:molecular_assembler>, infinityCatalyst, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, infinityCatalyst, <appliedenergistics2:molecular_assembler>, crystalMatrix],
    [infinityIngot, crystalMatrix, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:molecular_assembler>, crystalMatrix, infinityIngot],
    [neutroniumIngot, infinityIngot, crystalMatrix, <appliedenergistics2:material:24>, crystalMatrix, <appliedenergistics2:material:24>, crystalMatrix, infinityIngot, neutroniumIngot]
]);

// --------------------------------------------------------
// 5. STEPWISE INFINITY ARMOR (9x9)
// Culmination requiring Awakened Draconic, Quantum, and Terrasteel armor!
// --------------------------------------------------------

val infHelm = <avaritia:infinity_helmet>;
ExtremeCrafting.remove(infHelm);
ExtremeCrafting.addShaped("nexus_infinity_helmet", infHelm, [
    [null, null, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, null, null],
    [null, infinityIngot, <industrialupgrade:quantum_helmet>, crystalMatrix, crystalMatrix, crystalMatrix, <botania:terrasteelhelm>, infinityIngot, null],
    [infinityIngot, crystalMatrix, infinityCatalyst, neutroniumIngot, neutroniumIngot, neutroniumIngot, infinityCatalyst, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, <draconicevolution:awakened_core>, <draconicevolution:draconic_helm>, <draconicevolution:awakened_core>, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, <draconicevolution:awakened_core>, nexusSingularity, <draconicevolution:awakened_core>, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, <draconicevolution:awakened_core>, <thaumcraft:void_robe_helm>, <draconicevolution:awakened_core>, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, infinityCatalyst, neutroniumIngot, neutroniumIngot, neutroniumIngot, infinityCatalyst, crystalMatrix, infinityIngot],
    [null, infinityIngot, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, infinityIngot, null],
    [null, null, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, null, null]
]);

val infChest = <avaritia:infinity_chestplate>;
ExtremeCrafting.remove(infChest);
ExtremeCrafting.addShaped("nexus_infinity_chestplate", infChest, [
    [infinityIngot, null, null, null, null, null, null, null, infinityIngot],
    [infinityIngot, infinityIngot, null, infinityIngot, infinityIngot, infinityIngot, null, infinityIngot, infinityIngot],
    [infinityIngot, <industrialupgrade:quantum_chestplate>, infinityCatalyst, neutroniumIngot, <botania:terrasteelchest>, neutroniumIngot, infinityCatalyst, <bloodmagic:living_armour_chest>, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, <draconicevolution:awakened_core>, <draconicevolution:draconic_chest>, <draconicevolution:awakened_core>, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, <draconicevolution:awakened_core>, nexusSingularity, <draconicevolution:awakened_core>, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, <draconicevolution:awakened_core>, <thaumcraft:void_robe_chest>, <draconicevolution:awakened_core>, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, infinityCatalyst, neutroniumIngot, neutroniumIngot, neutroniumIngot, infinityCatalyst, crystalMatrix, infinityIngot],
    [infinityIngot, infinityIngot, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, crystalMatrix, infinityIngot, infinityIngot],
    [infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot]
]);

val infLegs = <avaritia:infinity_pants>;
ExtremeCrafting.remove(infLegs);
ExtremeCrafting.addShaped("nexus_infinity_pants", infLegs, [
    [infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot],
    [infinityIngot, <industrialupgrade:quantum_leggings>, crystalMatrix, infinityCatalyst, <draconicevolution:draconic_legs>, infinityCatalyst, crystalMatrix, <botania:terrasteellegs>, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, neutroniumIngot, nexusSingularity, neutroniumIngot, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, <draconicevolution:awakened_core>, <thaumcraft:void_robe_legs>, <draconicevolution:awakened_core>, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, infinityCatalyst, neutroniumIngot, null, null, null, neutroniumIngot, infinityCatalyst, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, null, null, null, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, null, null, null, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, null, null, null, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, infinityIngot, infinityIngot, null, null, null, infinityIngot, infinityIngot, infinityIngot]
]);

val infBoots = <avaritia:infinity_boots>;
ExtremeCrafting.remove(infBoots);
ExtremeCrafting.addShaped("nexus_infinity_boots", infBoots, [
    [infinityIngot, infinityIngot, null, null, null, null, null, infinityIngot, infinityIngot],
    [infinityIngot, <industrialupgrade:quantum_boots>, infinityCatalyst, null, null, null, infinityCatalyst, <botania:terrasteelboots>, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, null, null, null, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, <draconicevolution:draconic_boots>, null, nexusSingularity, null, <thaumcraft:traveller_boots>, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, null, null, null, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, neutroniumIngot, null, null, null, neutroniumIngot, crystalMatrix, infinityIngot],
    [infinityIngot, infinityCatalyst, neutroniumIngot, null, null, null, neutroniumIngot, infinityCatalyst, infinityIngot],
    [infinityIngot, crystalMatrix, crystalMatrix, null, null, null, crystalMatrix, crystalMatrix, infinityIngot],
    [infinityIngot, infinityIngot, infinityIngot, null, null, null, infinityIngot, infinityIngot, infinityIngot]
]);

// --------------------------------------------------------
// 6. STEPWISE INFINITY TOOLS (9x9)
// --------------------------------------------------------

val infPick = <avaritia:infinity_pickaxe>;
ExtremeCrafting.remove(infPick);
ExtremeCrafting.addShaped("nexus_infinity_pickaxe", infPick, [
    [null, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, infinityIngot, null],
    [infinityIngot, crystalMatrix, <industrialupgrade:vajra>, <draconicevolution:draconic_staff_of_power>, nexusSingularity, <draconicevolution:draconic_pick>, <botania:terrapick>, crystalMatrix, infinityIngot],
    [infinityIngot, crystalMatrix, infinityCatalyst, neutroniumIngot, <draconicevolution:awakened_core>, neutroniumIngot, infinityCatalyst, crystalMatrix, infinityIngot],
    [null, null, null, neutroniumIngot, neutroniumIngot, neutroniumIngot, null, null, null],
    [null, null, null, null, neutroniumIngot, null, null, null, null],
    [null, null, null, null, neutroniumIngot, null, null, null, null],
    [null, null, null, null, neutroniumIngot, null, null, null, null],
    [null, null, null, null, neutroniumIngot, null, null, null, null],
    [null, null, null, null, neutroniumIngot, null, null, null, null]
]);

val infSword = <avaritia:infinity_sword>;
ExtremeCrafting.remove(infSword);
ExtremeCrafting.addShaped("nexus_infinity_sword", infSword, [
    [null, null, null, null, null, null, null, infinityIngot, infinityIngot],
    [null, null, null, null, null, null, infinityIngot, infinityIngot, infinityIngot],
    [null, null, null, null, null, infinityIngot, <draconicevolution:draconic_sword>, infinityIngot, null],
    [null, null, null, null, infinityIngot, <industrialupgrade:nano_saber>, infinityIngot, null, null],
    [null, null, null, infinityIngot, <botania:terrasword>, infinityIngot, null, null, null],
    [null, infinityIngot, infinityIngot, nexusSingularity, infinityIngot, null, null, null, null],
    [null, crystalMatrix, infinityCatalyst, infinityIngot, null, null, null, null, null],
    [crystalMatrix, neutroniumIngot, crystalMatrix, null, null, null, null, null, null],
    [neutroniumIngot, crystalMatrix, null, null, null, null, null, null, null]
]);

val infBow = <avaritia:infinity_bow>;
ExtremeCrafting.remove(infBow);
ExtremeCrafting.addShaped("nexus_infinity_bow", infBow, [
    [null, null, null, infinityIngot, infinityIngot, null, null, null, null],
    [null, null, infinityIngot, crystalMatrix, <draconicevolution:draconic_bow>, null, null, null, null],
    [null, infinityIngot, crystalMatrix, <industrialupgrade:quantum_bow>, null, null, null, null, null],
    [infinityIngot, crystalMatrix, <botania:crystalbow>, null, null, null, null, null, null],
    [infinityIngot, nexusSingularity, null, null, null, null, null, null, null],
    [infinityIngot, crystalMatrix, <botania:crystalbow>, null, null, null, null, null, null],
    [null, infinityIngot, crystalMatrix, <industrialupgrade:quantum_bow>, null, null, null, null, null],
    [null, null, infinityIngot, crystalMatrix, <draconicevolution:draconic_bow>, null, null, null, null],
    [null, null, null, infinityIngot, infinityIngot, null, null, null, null]
]);

// --------------------------------------------------------
// 7. CONVERGENCE CORE (9x9 The Grand Finale)
// --------------------------------------------------------
ExtremeCrafting.remove(convergenceCore);
ExtremeCrafting.addShaped("nexus_convergence_core", convergenceCore, [
    [infinityIngot, <draconicevolution:draconic_ingot>, crystalMatrix, <botania:storage:2>, <minecraft:dragon_egg>, <botania:storage:2>, crystalMatrix, <draconicevolution:draconic_ingot>, infinityIngot],
    [<draconicevolution:draconic_ingot>, infinityIngot, infinityCatalyst, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, infinityCatalyst, infinityIngot, <draconicevolution:draconic_ingot>],
    [crystalMatrix, infinityCatalyst, infinityIngot, <thaumcraft:primordial_pearl>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:primordial_pearl>, infinityIngot, infinityCatalyst, crystalMatrix],
    [<botania:storage:2>, <draconicevolution:chaos_shard>, <thaumcraft:primordial_pearl>, infinityIngot, <draconicevolution:awakened_core>, infinityIngot, <thaumcraft:primordial_pearl>, <draconicevolution:chaos_shard>, <botania:storage:2>],
    [<minecraft:dragon_egg>, <draconicevolution:chaos_shard>, <astralsorcery:itemcraftingcomponent:4>, <draconicevolution:awakened_core>, nexusSingularity, <draconicevolution:awakened_core>, <astralsorcery:itemcraftingcomponent:4>, <draconicevolution:chaos_shard>, <minecraft:dragon_egg>],
    [<botania:storage:2>, <draconicevolution:chaos_shard>, <thaumcraft:primordial_pearl>, infinityIngot, <draconicevolution:awakened_core>, infinityIngot, <thaumcraft:primordial_pearl>, <draconicevolution:chaos_shard>, <botania:storage:2>],
    [crystalMatrix, infinityCatalyst, infinityIngot, <thaumcraft:primordial_pearl>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:primordial_pearl>, infinityIngot, infinityCatalyst, crystalMatrix],
    [<draconicevolution:draconic_ingot>, infinityIngot, infinityCatalyst, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, infinityCatalyst, infinityIngot, <draconicevolution:draconic_ingot>],
    [infinityIngot, <draconicevolution:draconic_ingot>, crystalMatrix, <botania:storage:2>, <minecraft:dragon_egg>, <botania:storage:2>, crystalMatrix, <draconicevolution:draconic_ingot>, infinityIngot]
]);

print("[Nexus Crucible] Avaritia Endgame & Avaritiaddons (Infinity Armor, Tools, Convergence) registered.");
