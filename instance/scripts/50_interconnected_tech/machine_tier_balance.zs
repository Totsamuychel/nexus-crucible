import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Interconnected Machine & Mechanism Hierarchy
// Strict cross-mod progression: lower tier machinery is required
// to construct higher tier mechanisms across all eras.
// ========================================================

// --------------------------------------------------------
// 1. STEAM CASING (Industrial Upgrade) -> Tier 1
// Requires IE Light Engineering Block + Bronze + Pressure Assembly
// --------------------------------------------------------
val iuSteamCasing = <industrialupgrade:blockresource:12>;
val ieLightEng = <immersiveengineering:metal_decoration0:4>;
recipes.remove(iuSteamCasing);
recipes.addShaped("nexus_iu_steam_casing", iuSteamCasing, [
    [<ore:plateBronze>, <ore:gearTin>, <ore:plateBronze>],
    [<ore:ingotBronze>, ieLightEng, <ore:ingotBronze>],
    [<ore:plateBronze>, <contenttweaker:pressure_assembly>, <ore:plateBronze>]
]);

// --------------------------------------------------------
// 2. THERMAL MACHINE FRAME -> Tier 2
// Requires IU Steam Machine Casing + Treated Wood + Steel + Living Conductor
// --------------------------------------------------------
val thermalFrame = <thermalexpansion:frame:0>;
recipes.remove(thermalFrame);
recipes.addShaped("nexus_thermal_frame_tiered", thermalFrame, [
    [<ore:ingotSteel>, <ore:gearBronze>, <ore:ingotSteel>],
    [<ore:plankTreatedWood>, iuSteamCasing, <ore:plankTreatedWood>],
    [<ore:ingotSteel>, <contenttweaker:living_conductor>, <ore:ingotSteel>]
]);

// --------------------------------------------------------
// 3. INDUSTRIAL UPGRADE BASIC MACHINE CASING -> Tier 2
// Requires Thermal Machine Frame + Lead Plates + Insulated Core
// --------------------------------------------------------
val iuBasicCasing = <industrialupgrade:blockresource:8>;
recipes.remove(iuBasicCasing);
recipes.addShaped("nexus_iu_basic_casing", iuBasicCasing, [
    [<ore:plateLead>, <ore:plateIron>, <ore:plateLead>],
    [<ore:plateIron>, thermalFrame, <ore:plateIron>],
    [<ore:plateLead>, <contenttweaker:insulated_industrial_core>, <ore:plateLead>]
]);

// --------------------------------------------------------
// 4. ACTUALLY ADDITIONS IRON CASING -> Tier 2
// Requires IU Basic Machine Casing + Enori + Iron Plates
// --------------------------------------------------------
val aaIronCasing = <actuallyadditions:block_misc:9>;
recipes.remove(aaIronCasing);
recipes.addShaped("nexus_aa_iron_casing", aaIronCasing, [
    [<ore:plateIron>, <actuallyadditions:item_crystal:5>, <ore:plateIron>],
    [<ore:plateIron>, iuBasicCasing, <ore:plateIron>],
    [<ore:plateIron>, <contenttweaker:insulated_industrial_core>, <ore:plateIron>]
]);

// --------------------------------------------------------
// 5. ENDER IO SIMPLE MACHINE CHASSIS -> Tier 3
// Requires AA Iron Casing + Simple Chassi Parts + Iron Bars
// --------------------------------------------------------
val eioSimpleChassis = <enderio:item_material:0>;
recipes.remove(eioSimpleChassis);
recipes.addShaped("nexus_eio_simple_chassis", eioSimpleChassis, [
    [<minecraft:iron_bars>, <enderio:item_material:69>, <minecraft:iron_bars>],
    [<enderio:item_material:69>, aaIronCasing, <enderio:item_material:69>],
    [<minecraft:iron_bars>, <contenttweaker:alchemical_machine_frame>, <minecraft:iron_bars>]
]);

// --------------------------------------------------------
// 6. ENDER IO INDUSTRIAL MACHINE CHASSIS -> Tier 3
// Requires Ender IO Simple Chassis + Heavy Engineering + Soularium + Capacitors
// --------------------------------------------------------
val eioIndustrialChassis = <enderio:item_material:1>;
val ieHeavyEng = <immersiveengineering:metal_decoration0:5>;
recipes.remove(eioIndustrialChassis);
recipes.addShaped("nexus_eio_industrial_chassis", eioIndustrialChassis, [
    [<ore:ingotSoularium>, <enderio:item_basic_capacitor:0>, <ore:ingotSoularium>],
    [ieHeavyEng, eioSimpleChassis, ieHeavyEng],
    [<ore:ingotSoularium>, <contenttweaker:alchemical_machine_frame>, <ore:ingotSoularium>]
]);

// --------------------------------------------------------
// 7. INDUSTRIAL FOREGOING MACHINE CASE -> Tier 3
// Requires Ender IO Industrial Chassis + Plastic + Gold Gears
// --------------------------------------------------------
val ifMachineCase = <teslacorelib:machine_case>;
recipes.remove(ifMachineCase);
recipes.addShaped("nexus_if_case_tiered", ifMachineCase, [
    [<ore:platePlastic>, <ore:gearGold>, <ore:platePlastic>],
    [<contenttweaker:alchemical_machine_frame>, eioIndustrialChassis, <contenttweaker:alchemical_machine_frame>],
    [<ore:platePlastic>, <ore:gearGold>, <ore:platePlastic>]
]);

// --------------------------------------------------------
// 8. NUCLEARCRAFT MACHINE CHASSIS -> Tier 4
// Requires Industrial Foregoing Machine Case + Basic Plating + Solenoids + Lead
// --------------------------------------------------------
val ncChassis = <nuclearcraft:part:10>;
recipes.remove(ncChassis);
recipes.addShaped("nexus_nc_chassis", ncChassis, [
    [<nuclearcraft:part:0>, <ore:plateLead>, <nuclearcraft:part:0>],
    [<nuclearcraft:part:4>, ifMachineCase, <nuclearcraft:part:4>],
    [<nuclearcraft:part:0>, <contenttweaker:runic_logic_core>, <nuclearcraft:part:0>]
]);

// --------------------------------------------------------
// 9. MEKANISM STEEL CASING -> Tier 4
// Requires NuclearCraft Machine Chassis + Heavy Engineering + Steel + Osmium
// --------------------------------------------------------
val mekSteelCasing = <mekanism:basicblock:8>;
recipes.remove(mekSteelCasing);
recipes.addShaped("nexus_mek_steel_casing_tiered", mekSteelCasing, [
    [<ore:plateSteel>, <ore:ingotOsmium>, <ore:plateSteel>],
    [<ore:ingotInvar>, ncChassis, <ore:ingotInvar>],
    [<ore:plateSteel>, <contenttweaker:distributed_control_matrix>, <ore:plateSteel>]
]);

// --------------------------------------------------------
// 10. INDUSTRIAL UPGRADE ADVANCED MACHINE CASING -> Tier 4
// Requires Mekanism Steel Casing + Carbon Plates + Advanced Alloys + Control Matrix
// --------------------------------------------------------
val iuAdvancedCasing = <industrialupgrade:blockresource:9>;
recipes.remove(iuAdvancedCasing);
recipes.addShaped("nexus_iu_adv_casing", iuAdvancedCasing, [
    [<ore:plateCarbon>, <ore:plateAdvancedAlloy>, <ore:plateCarbon>],
    [<ore:plateAdvancedAlloy>, mekSteelCasing, <ore:plateAdvancedAlloy>],
    [<ore:plateCarbon>, <contenttweaker:distributed_control_matrix>, <ore:plateCarbon>]
]);

// --------------------------------------------------------
// 11. DRACONIC EVOLUTION INJECTORS & FUSION CORE -> Tier 5
// --------------------------------------------------------
val deFusionCore = <draconicevolution:fusion_crafting_core>;
recipes.remove(deFusionCore);
recipes.addShaped("nexus_de_fusion_core_tiered", deFusionCore, [
    [<draconicevolution:draconic_core>, <minecraft:nether_star>, <draconicevolution:draconic_core>],
    [<draconicevolution:wyvern_core>, iuAdvancedCasing, <draconicevolution:wyvern_core>],
    [<draconicevolution:draconic_core>, <contenttweaker:celestial_binding_matrix>, <draconicevolution:draconic_core>]
]);

// Basic Crafting Injector (requires Mekanism Steel Casing)
val deBasicInjector = <draconicevolution:crafting_injector:0>;
recipes.remove(deBasicInjector);
recipes.addShaped("nexus_de_injector_basic", deBasicInjector, [
    [<ore:gemDiamond>, <draconicevolution:draconic_core>, <ore:gemDiamond>],
    [<ore:plateSteel>, mekSteelCasing, <ore:plateSteel>],
    [<draconicevolution:draconium_ingot>, <contenttweaker:stabilized_quantum_substrate>, <draconicevolution:draconium_ingot>]
]);

// Wyvern Crafting Injector (requires Basic Crafting Injector)
val deWyvernInjector = <draconicevolution:crafting_injector:1>;
recipes.remove(deWyvernInjector);
recipes.addShaped("nexus_de_injector_wyvern", deWyvernInjector, [
    [<draconicevolution:wyvern_core>, <minecraft:nether_star>, <draconicevolution:wyvern_core>],
    [<draconicevolution:draconium_block>, deBasicInjector, <draconicevolution:draconium_block>],
    [<draconicevolution:wyvern_core>, <contenttweaker:celestial_binding_matrix>, <draconicevolution:wyvern_core>]
]);

// Awakened Crafting Injector (requires Wyvern Crafting Injector)
val deDraconicInjector = <draconicevolution:crafting_injector:2>;
recipes.remove(deDraconicInjector);
recipes.addShaped("nexus_de_injector_draconic", deDraconicInjector, [
    [<draconicevolution:awakened_core>, <draconicevolution:dragon_heart>, <draconicevolution:awakened_core>],
    [<draconicevolution:draconic_block>, deWyvernInjector, <draconicevolution:draconic_block>],
    [<draconicevolution:awakened_core>, <contenttweaker:celestial_binding_matrix>, <draconicevolution:awakened_core>]
]);

// Chaotic Crafting Injector (requires Awakened Crafting Injector)
val deChaoticInjector = <draconicevolution:crafting_injector:3>;
recipes.remove(deChaoticInjector);
recipes.addShaped("nexus_de_injector_chaotic", deChaoticInjector, [
    [<draconicevolution:chaotic_core>, <draconicevolution:chaos_shard>, <draconicevolution:chaotic_core>],
    [<draconicevolution:draconic_block>, deDraconicInjector, <draconicevolution:draconic_block>],
    [<draconicevolution:chaotic_core>, <contenttweaker:nexus_singularity>, <draconicevolution:chaotic_core>]
]);

// --------------------------------------------------------
// 12. ORE PROCESSING & SMELTING SUCCESSION
// Pulverizer -> AA Crusher -> IU Macerator -> Mek Crusher -> NC Manufactory
// --------------------------------------------------------

// Thermal Pulverizer
val thermalPulverizer = <thermalexpansion:machine:1>;
recipes.remove(thermalPulverizer);
recipes.addShaped("nexus_thermal_pulverizer", thermalPulverizer, [
    [<minecraft:flint>, <minecraft:piston>, <minecraft:flint>],
    [<ore:gearCopper>, thermalFrame, <ore:gearCopper>],
    [<ore:ingotCopper>, <contenttweaker:living_conductor>, <ore:ingotCopper>]
]);

// Actually Additions Crusher
val aaGrinder = <actuallyadditions:block_grinder>;
recipes.remove(aaGrinder);
recipes.addShaped("nexus_aa_grinder", aaGrinder, [
    [<minecraft:flint>, <actuallyadditions:item_crystal:0>, <minecraft:flint>],
    [<ore:plateIron>, thermalPulverizer, <ore:plateIron>],
    [<minecraft:cobblestone>, aaIronCasing, <minecraft:cobblestone>]
]);

// Industrial Upgrade Macerator
val iuMacerator = <industrialupgrade:macerator>;
recipes.remove(iuMacerator);
recipes.addShaped("nexus_iu_macerator", iuMacerator, [
    [<minecraft:flint>, <ore:circuitBasic>, <minecraft:flint>],
    [<minecraft:cobblestone>, aaGrinder, <minecraft:cobblestone>],
    [<ore:circuitBasic>, iuBasicCasing, <ore:circuitBasic>]
]);

// Mekanism Crusher
val mekCrusher = <mekanism:machineblock:3>;
recipes.remove(mekCrusher);
recipes.addShaped("nexus_mek_crusher", mekCrusher, [
    [<ore:circuitAdvanced>, <minecraft:bucket>, <ore:circuitAdvanced>],
    [<ore:plateSteel>, iuMacerator, <ore:plateSteel>],
    [<ore:plateSteel>, mekSteelCasing, <ore:plateSteel>]
]);

// NuclearCraft Manufactory
val ncManufactory = <nuclearcraft:manufactory>;
recipes.remove(ncManufactory);
recipes.addShaped("nexus_nc_manufactory", ncManufactory, [
    [<nuclearcraft:part:0>, <minecraft:piston>, <nuclearcraft:part:0>],
    [<nuclearcraft:part:4>, mekCrusher, <nuclearcraft:part:4>],
    [<nuclearcraft:part:0>, ncChassis, <nuclearcraft:part:0>]
]);

// Thermal Induction Smelter
val thermalSmelter = <thermalexpansion:machine:3>;
recipes.remove(thermalSmelter);
recipes.addShaped("nexus_thermal_smelter", thermalSmelter, [
    [<minecraft:sand>, <minecraft:bucket>, <minecraft:sand>],
    [<ore:gearInvar>, thermalFrame, <ore:gearInvar>],
    [<ore:ingotInvar>, <contenttweaker:insulated_industrial_core>, <ore:ingotInvar>]
]);

// Ender IO Alloy Smelter
val eioSmelter = <enderio:block_alloy_smelter>;
recipes.remove(eioSmelter);
recipes.addShaped("nexus_eio_alloy_smelter", eioSmelter, [
    [<minecraft:furnace>, <minecraft:cauldron>, <minecraft:furnace>],
    [<ore:ingotDarkSteel>, thermalSmelter, <ore:ingotDarkSteel>],
    [<ore:gearDarkSteel>, eioIndustrialChassis, <ore:gearDarkSteel>]
]);

print("[Nexus Crucible] Machine & Mechanism Tier Balance recipes registered.");
