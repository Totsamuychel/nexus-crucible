import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Interconnected Tech & Global Mod Synergy
// Narrative storyline recipes binding all 10 major mods
// ========================================================

val machineFrame = <thermalexpansion:frame:0>;
val heavyEng = <immersiveengineering:metal_decoration0:5>;

// --- Immersive Engineering Heavy Engineering Block (Stage 03) ---
// Requires Thermal Invar, Tinkers Steel, and Machine Frame
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

// (ifMachineCase moved to machine_tier_balance.zs)

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

// --- Applied Energistics 2 Inscriber (Stage 06) ---
val inscriber = <appliedenergistics2:inscriber>;
recipes.remove(inscriber);
recipes.addShaped("nexus_ae2_inscriber", inscriber, [
    [<ore:plateIron>, <minecraft:piston>, <ore:plateIron>],
    [<appliedenergistics2:material:7>, machineFrame, <appliedenergistics2:material:7>],
    [<ore:plateIron>, <contenttweaker:runic_logic_core>, <ore:plateIron>]
]);

// --- AE2 Inscriber Presses (Storyline craftable alternatives) ---
recipes.addShaped("nexus_ae2_calc_press", <appliedenergistics2:material:13>, [
    [<ore:ingotIron>, <appliedenergistics2:material:0>, <ore:ingotIron>],
    [<appliedenergistics2:material:0>, <contenttweaker:living_conductor>, <appliedenergistics2:material:0>],
    [<ore:ingotIron>, <ore:blockIron>, <ore:ingotIron>]
]);

recipes.addShaped("nexus_ae2_eng_press", <appliedenergistics2:material:14>, [
    [<ore:ingotSteel>, <ore:gemDiamond>, <ore:ingotSteel>],
    [<ore:gemDiamond>, <contenttweaker:insulated_industrial_core>, <ore:gemDiamond>],
    [<ore:ingotSteel>, <ore:blockIron>, <ore:ingotSteel>]
]);

recipes.addShaped("nexus_ae2_logic_press", <appliedenergistics2:material:15>, [
    [<ore:ingotGold>, <minecraft:redstone>, <ore:ingotGold>],
    [<minecraft:redstone>, <contenttweaker:pressure_assembly>, <minecraft:redstone>],
    [<ore:ingotGold>, <ore:blockIron>, <ore:ingotGold>]
]);

recipes.addShaped("nexus_ae2_silicon_press", <appliedenergistics2:material:19>, [
    [<minecraft:clay_ball>, <minecraft:sand>, <minecraft:clay_ball>],
    [<minecraft:sand>, <contenttweaker:fired_foundation>, <minecraft:sand>],
    [<minecraft:clay_ball>, <ore:blockIron>, <minecraft:clay_ball>]
]);

// (steelCasing moved to machine_tier_balance.zs)

// --- Blood Magic Blood Altar (Stage 05) ---
val bloodAltar = <bloodmagic:altar>;
recipes.remove(bloodAltar);
recipes.addShaped("nexus_bm_blood_altar", bloodAltar, [
    [<botania:livingrock>, <ore:gemDiamond>, <botania:livingrock>],
    [<botania:livingrock>, <contenttweaker:alchemical_machine_frame>, <botania:livingrock>],
    [<botania:livingrock>, <ore:ingotGold>, <botania:livingrock>]
]);

// --- Draconic Evolution Draconic Core (Stage 08) ---
val draconicCore = <draconicevolution:draconic_core>;
recipes.remove(draconicCore);
recipes.addShaped("nexus_de_draconic_core", draconicCore, [
    [<draconicevolution:draconium_ingot>, <ore:ingotGold>, <draconicevolution:draconium_ingot>],
    [<ore:gemDiamond>, <contenttweaker:stabilized_quantum_substrate>, <ore:gemDiamond>],
    [<draconicevolution:draconium_ingot>, <ore:ingotGold>, <draconicevolution:draconium_ingot>]
]);

// --- Draconic Evolution Wyvern Core (Stage 08) ---
val wyvernCore = <draconicevolution:wyvern_core>;
recipes.remove(wyvernCore);
recipes.addShaped("nexus_de_wyvern_core", wyvernCore, [
    [draconicCore, <astralsorcery:itemcraftingcomponent:4>, draconicCore],
    [<minecraft:nether_star>, <contenttweaker:celestial_binding_matrix>, <minecraft:nether_star>],
    [draconicCore, <astralsorcery:itemcraftingcomponent:4>, draconicCore]
]);

print("[Nexus Crucible] Interconnected Tech cross-mod recipes registered.");
