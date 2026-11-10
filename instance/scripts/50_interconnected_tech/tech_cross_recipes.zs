import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Interconnected Tech & Global Mod Synergy
// ========================================================

// --- Thermal Expansion Machine Frame (Stage 03) ---
// Requires Immersive Engineering Treated Wood, Tinkers Steel, Bronze, and Living Conductor
val machineFrame = <thermalexpansion:frame:0>;
recipes.remove(machineFrame);
recipes.addShaped("nexus_thermal_machine_frame", machineFrame, [
    [<ore:ingotSteel>, <ore:gearBronze>, <ore:ingotSteel>],
    [<ore:plankTreatedWood>, <contenttweaker:living_conductor>, <ore:plankTreatedWood>],
    [<ore:ingotSteel>, <ore:gearBronze>, <ore:ingotSteel>]
]);

// --- Immersive Engineering Heavy Engineering Block (Stage 03) ---
// Requires Thermal Invar, Tinkers Steel, and Machine Frame
val heavyEng = <immersiveengineering:metal_decoration0:5>;
recipes.remove(heavyEng);
recipes.addShaped("nexus_ie_heavy_eng", heavyEng * 2, [
    [<ore:plateSteel>, <ore:gearInvar>, <ore:plateSteel>],
    [<ore:ingotSteel>, machineFrame, <ore:ingotSteel>],
    [<ore:plateSteel>, <ore:gearInvar>, <ore:plateSteel>]
]);

// --- Immersive Engineering Light Engineering Block ---
val lightEng = <immersiveengineering:metal_decoration0:4>;
recipes.remove(lightEng);
recipes.addShaped("nexus_ie_light_eng", lightEng * 2, [
    [<ore:plateIron>, <ore:gearCopper>, <ore:plateIron>],
    [<ore:ingotIron>, <contenttweaker:pressure_assembly>, <ore:ingotIron>],
    [<ore:plateIron>, <ore:gearCopper>, <ore:plateIron>]
]);

// --- Industrial Foregoing Machine Case (Stage 04) ---
// Requires Thermal Machine Frame, Plastic, and Polymer Resin
val ifMachineCase = <teslacorelib:machine_case>;
recipes.remove(ifMachineCase);
recipes.addShaped("nexus_if_machine_case", ifMachineCase, [
    [<ore:platePlastic>, <ore:gearGold>, <ore:platePlastic>],
    [<contenttweaker:alchemical_machine_frame>, machineFrame, <contenttweaker:alchemical_machine_frame>],
    [<ore:platePlastic>, <ore:gearGold>, <ore:platePlastic>]
]);

// --- Botania Runic Altar (Stage 02) ---
// Requires Livingrock, Mana Pearl, and Pressure Assembly
val runicAltar = <botania:runealtar>;
recipes.remove(runicAltar);
recipes.addShaped("nexus_botania_runic_altar", runicAltar, [
    [<botania:livingrock>, <botania:manaresource:1>, <botania:livingrock>],
    [<botania:livingrock>, <contenttweaker:pressure_assembly>, <botania:livingrock>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

// --- Astral Sorcery Luminous Crafting Table (Stage 02) ---
// Requires Marble, Manasteel, Rock Crystal, and Living Conductor
val luminousTable = <astralsorcery:blockaltar:0>;
recipes.remove(luminousTable);
recipes.addShaped("nexus_astral_luminous_table", luminousTable, [
    [<astralsorcery:blockmarble:0>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:blockmarble:0>],
    [<botania:manaresource:0>, <contenttweaker:living_conductor>, <botania:manaresource:0>],
    [<astralsorcery:blockmarble:0>, <astralsorcery:blockmarble:0>, <astralsorcery:blockmarble:0>]
]);

print("[Nexus Crucible] Interconnected Tech cross-mod recipes registered.");
