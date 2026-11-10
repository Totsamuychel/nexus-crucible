import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Tiered Equipment Balance & Progression
// Strictly ensures that high-tier tools & armor are crafted
// from their preceding tiers across all major mods
//
// Hierarchy:
// Tier 1: Tinkers / Iron / Steel
// Tier 2: Botania (Terrasteel)
// Tier 3: Redstone Arsenal (Flux-Infused)
// Tier 4: Industrial Upgrade (Nano)
// Tier 5: Industrial Upgrade (Quantum) & Arcane (Void Robes / Bound)
// Tier 6: Draconic Evolution (Wyvern -> Draconic Awakened)
// Tier 7: Avaritia (Infinity)
// ========================================================

// ========================================================
// 1. BOTANIA TERRASTEEL (Tier 2 - Nature & Mana)
// Requires Manasteel gear + Living Conductor + Terrasteel
// ========================================================

val manasteelHelm = <botania:manasteelhelm>;
val manasteelChest = <botania:manasteelchest>;
val manasteelLegs = <botania:manasteellegs>;
val manasteelBoots = <botania:manasteelboots>;

val manasteelPick = <botania:manasteelpick>;
val manasteelSword = <botania:manasteelsword>;

val terrasteelIngot = <botania:manaresource:4>;
val livingConductor = <contenttweaker:living_conductor>;

// Terrasteel Helmet
val terrasteelHelm = <botania:terrasteelhelm>;
recipes.remove(terrasteelHelm);
recipes.addShaped("nexus_botania_terrasteel_helm", terrasteelHelm, [
    [terrasteelIngot, livingConductor, terrasteelIngot],
    [terrasteelIngot, manasteelHelm, terrasteelIngot],
    [<botania:rune:0>, terrasteelIngot, <botania:rune:1>]
]);

// Terrasteel Chestplate
val terrasteelChest = <botania:terrasteelchest>;
recipes.remove(terrasteelChest);
recipes.addShaped("nexus_botania_terrasteel_chest", terrasteelChest, [
    [terrasteelIngot, manasteelChest, terrasteelIngot],
    [terrasteelIngot, livingConductor, terrasteelIngot],
    [<botania:rune:2>, terrasteelIngot, <botania:rune:3>]
]);

// Terrasteel Leggings
val terrasteelLegs = <botania:terrasteellegs>;
recipes.remove(terrasteelLegs);
recipes.addShaped("nexus_botania_terrasteel_legs", terrasteelLegs, [
    [terrasteelIngot, terrasteelIngot, terrasteelIngot],
    [terrasteelIngot, manasteelLegs, terrasteelIngot],
    [terrasteelIngot, livingConductor, terrasteelIngot]
]);

// Terrasteel Boots
val terrasteelBoots = <botania:terrasteelboots>;
recipes.remove(terrasteelBoots);
recipes.addShaped("nexus_botania_terrasteel_boots", terrasteelBoots, [
    [terrasteelIngot, livingConductor, terrasteelIngot],
    [terrasteelIngot, manasteelBoots, terrasteelIngot],
    [<botania:rune:8>, null, <botania:rune:8>]
]);

// Terra Shatterer (Terra Pick)
val terraPick = <botania:terrapick>;
recipes.remove(terraPick);
recipes.addShaped("nexus_botania_terra_pick", terraPick, [
    [terrasteelIngot, manasteelPick, terrasteelIngot],
    [null, livingConductor, null],
    [null, <botania:manaresource:3>, null]
]);

// Terra Blade (Terra Sword)
val terraSword = <botania:terrasword>;
recipes.remove(terraSword);
recipes.addShaped("nexus_botania_terra_sword", terraSword, [
    [null, terrasteelIngot, null],
    [null, manasteelSword, null],
    [null, livingConductor, null]
]);

// ========================================================
// 2. REDSTONE ARSENAL FLUX-INFUSED (Tier 3 - RF Powered)
// Requires Terrasteel gear + Fluxed Electrum + Insulated Core
// ========================================================

val fluxPlate = <redstonearsenal:material:224>;
val insulatedCore = <contenttweaker:insulated_industrial_core>;

val fluxHelm = <redstonearsenal:armor.helmet_flux>;
recipes.remove(fluxHelm);
recipes.addShaped("nexus_flux_helmet", fluxHelm, [
    [fluxPlate, fluxPlate, fluxPlate],
    [fluxPlate, terrasteelHelm, fluxPlate],
    [fluxPlate, insulatedCore, fluxPlate]
]);

val fluxChest = <redstonearsenal:armor.plate_flux>;
recipes.remove(fluxChest);
recipes.addShaped("nexus_flux_chest", fluxChest, [
    [fluxPlate, insulatedCore, fluxPlate],
    [fluxPlate, terrasteelChest, fluxPlate],
    [fluxPlate, fluxPlate, fluxPlate]
]);

val fluxLegs = <redstonearsenal:armor.legs_flux>;
recipes.remove(fluxLegs);
recipes.addShaped("nexus_flux_legs", fluxLegs, [
    [fluxPlate, fluxPlate, fluxPlate],
    [fluxPlate, terrasteelLegs, fluxPlate],
    [fluxPlate, insulatedCore, fluxPlate]
]);

val fluxBoots = <redstonearsenal:armor.boots_flux>;
recipes.remove(fluxBoots);
recipes.addShaped("nexus_flux_boots", fluxBoots, [
    [fluxPlate, insulatedCore, fluxPlate],
    [fluxPlate, terrasteelBoots, fluxPlate],
    [fluxPlate, null, fluxPlate]
]);

val fluxPick = <redstonearsenal:tool.pickaxe_flux>;
recipes.remove(fluxPick);
recipes.addShaped("nexus_flux_pick", fluxPick, [
    [fluxPlate, terraPick, fluxPlate],
    [null, insulatedCore, null],
    [null, <redstonearsenal:material:193>, null]
]);

val fluxSword = <redstonearsenal:tool.sword_flux>;
recipes.remove(fluxSword);
recipes.addShaped("nexus_flux_sword", fluxSword, [
    [null, fluxPlate, null],
    [null, terraSword, null],
    [null, insulatedCore, null]
]);

// ========================================================
// 3. INDUSTRIAL UPGRADE NANO (Tier 4 - Chemistry & Polymers)
// Requires Flux-Infused gear + Carbon Plates + Alchemical Frame
// ========================================================

val plateCarbon = <ore:plateCarbon>;
val alchemicalFrame = <contenttweaker:alchemical_machine_frame>;

val nanoHelm = <industrialupgrade:nano_helmet>;
recipes.remove(nanoHelm);
recipes.addShaped("nexus_nano_helmet", nanoHelm, [
    [plateCarbon, alchemicalFrame, plateCarbon],
    [plateCarbon, fluxHelm, plateCarbon],
    [plateCarbon, <ore:plateGlass>, plateCarbon]
]);

val nanoChest = <industrialupgrade:nano_chestplate>;
recipes.remove(nanoChest);
recipes.addShaped("nexus_nano_chest", nanoChest, [
    [plateCarbon, alchemicalFrame, plateCarbon],
    [plateCarbon, fluxChest, plateCarbon],
    [plateCarbon, plateCarbon, plateCarbon]
]);

val nanoLegs = <industrialupgrade:nano_leggings>;
recipes.remove(nanoLegs);
recipes.addShaped("nexus_nano_legs", nanoLegs, [
    [plateCarbon, plateCarbon, plateCarbon],
    [plateCarbon, fluxLegs, plateCarbon],
    [plateCarbon, alchemicalFrame, plateCarbon]
]);

val nanoBoots = <industrialupgrade:nano_boots>;
recipes.remove(nanoBoots);
recipes.addShaped("nexus_nano_boots", nanoBoots, [
    [plateCarbon, alchemicalFrame, plateCarbon],
    [plateCarbon, fluxBoots, plateCarbon],
    [plateCarbon, null, plateCarbon]
]);

val nanoDrill = <industrialupgrade:nanodrill>;
recipes.remove(nanoDrill);
recipes.addShaped("nexus_nano_drill", nanoDrill, [
    [plateCarbon, fluxPick, plateCarbon],
    [plateCarbon, alchemicalFrame, plateCarbon],
    [null, plateCarbon, null]
]);

val nanoSaber = <industrialupgrade:nano_saber>;
recipes.remove(nanoSaber);
recipes.addShaped("nexus_nano_saber", nanoSaber, [
    [null, plateCarbon, null],
    [null, fluxSword, null],
    [plateCarbon, alchemicalFrame, plateCarbon]
]);

// ========================================================
// 4. INDUSTRIAL UPGRADE QUANTUM (Tier 5 - Nuclear & Control)
// Requires Nano gear + Arcane Robes / Bound + Tough Alloy + Matrix
// ========================================================

val toughAlloy = <ore:ingotTough> | <ore:plateIridium>;
val distributedMatrix = <contenttweaker:distributed_control_matrix>;

val voidRobeHelm = <thaumcraft:void_robe_helm> | <bloodmagic:living_armour_helmet>;
val voidRobeChest = <thaumcraft:void_robe_chest> | <bloodmagic:living_armour_chest>;
val voidRobeLegs = <thaumcraft:void_robe_legs> | <bloodmagic:living_armour_leggings>;
val travellerBoots = <thaumcraft:traveller_boots> | <bloodmagic:living_armour_boots>;

val quantumHelm = <industrialupgrade:quantum_helmet>;
recipes.remove(quantumHelm);
recipes.addShaped("nexus_quantum_helmet", quantumHelm, [
    [toughAlloy, voidRobeHelm, toughAlloy],
    [toughAlloy, nanoHelm, toughAlloy],
    [toughAlloy, distributedMatrix, toughAlloy]
]);

val quantumChest = <industrialupgrade:quantum_chestplate>;
recipes.remove(quantumChest);
recipes.addShaped("nexus_quantum_chest", quantumChest, [
    [toughAlloy, voidRobeChest, toughAlloy],
    [toughAlloy, nanoChest, toughAlloy],
    [toughAlloy, distributedMatrix, toughAlloy]
]);

val quantumLegs = <industrialupgrade:quantum_leggings>;
recipes.remove(quantumLegs);
recipes.addShaped("nexus_quantum_legs", quantumLegs, [
    [toughAlloy, voidRobeLegs, toughAlloy],
    [toughAlloy, nanoLegs, toughAlloy],
    [toughAlloy, distributedMatrix, toughAlloy]
]);

val quantumBoots = <industrialupgrade:quantum_boots>;
recipes.remove(quantumBoots);
recipes.addShaped("nexus_quantum_boots", quantumBoots, [
    [toughAlloy, travellerBoots, toughAlloy],
    [toughAlloy, nanoBoots, toughAlloy],
    [toughAlloy, distributedMatrix, toughAlloy]
]);

val quantumDrill = <industrialupgrade:quantumdrill>;
recipes.remove(quantumDrill);
recipes.addShaped("nexus_quantum_drill", quantumDrill, [
    [toughAlloy, nanoDrill, toughAlloy],
    [toughAlloy, distributedMatrix, toughAlloy],
    [null, toughAlloy, null]
]);

val vajra = <industrialupgrade:vajra>;
recipes.remove(vajra);
recipes.addShaped("nexus_vajra", vajra, [
    [toughAlloy, quantumDrill, toughAlloy],
    [toughAlloy, <contenttweaker:stabilized_quantum_substrate>, toughAlloy],
    [null, <bloodmagic:bound_pickaxe> | <thaumcraft:void_pick>, null]
]);

// ========================================================
// 5. DRACONIC EVOLUTION WYVERN & DRACONIC (Tier 6 - Celestial)
// Requires Quantum gear + Draconic / Awakened Cores + Matrix
// ========================================================

val draconiumIngot = <draconicevolution:draconium_ingot>;
val draconicIngot = <draconicevolution:draconic_ingot>;
val wyvernCore = <draconicevolution:wyvern_core>;
val awakenedCore = <draconicevolution:awakened_core>;
val celestialMatrix = <contenttweaker:celestial_binding_matrix>;

// Wyvern Armor
val wyvernHelm = <draconicevolution:wyvern_helm>;
recipes.remove(wyvernHelm);
recipes.addShaped("nexus_wyvern_helm", wyvernHelm, [
    [draconiumIngot, wyvernCore, draconiumIngot],
    [draconiumIngot, quantumHelm, draconiumIngot],
    [draconiumIngot, celestialMatrix, draconiumIngot]
]);

val wyvernChest = <draconicevolution:wyvern_chest>;
recipes.remove(wyvernChest);
recipes.addShaped("nexus_wyvern_chest", wyvernChest, [
    [draconiumIngot, wyvernCore, draconiumIngot],
    [draconiumIngot, quantumChest, draconiumIngot],
    [draconiumIngot, celestialMatrix, draconiumIngot]
]);

val wyvernLegs = <draconicevolution:wyvern_legs>;
recipes.remove(wyvernLegs);
recipes.addShaped("nexus_wyvern_legs", wyvernLegs, [
    [draconiumIngot, wyvernCore, draconiumIngot],
    [draconiumIngot, quantumLegs, draconiumIngot],
    [draconiumIngot, celestialMatrix, draconiumIngot]
]);

val wyvernBoots = <draconicevolution:wyvern_boots>;
recipes.remove(wyvernBoots);
recipes.addShaped("nexus_wyvern_boots", wyvernBoots, [
    [draconiumIngot, wyvernCore, draconiumIngot],
    [draconiumIngot, quantumBoots, draconiumIngot],
    [draconiumIngot, celestialMatrix, draconiumIngot]
]);

val wyvernPick = <draconicevolution:wyvern_pick>;
recipes.remove(wyvernPick);
recipes.addShaped("nexus_wyvern_pick", wyvernPick, [
    [draconiumIngot, wyvernCore, draconiumIngot],
    [draconiumIngot, vajra, draconiumIngot],
    [null, celestialMatrix, null]
]);

val wyvernSword = <draconicevolution:wyvern_sword>;
recipes.remove(wyvernSword);
recipes.addShaped("nexus_wyvern_sword", wyvernSword, [
    [null, draconiumIngot, null],
    [null, nanoSaber, null],
    [draconiumIngot, wyvernCore, draconiumIngot]
]);

// Draconic (Awakened) Armor
val draconicHelm = <draconicevolution:draconic_helm>;
recipes.remove(draconicHelm);
recipes.addShaped("nexus_draconic_helm", draconicHelm, [
    [draconicIngot, awakenedCore, draconicIngot],
    [draconicIngot, wyvernHelm, draconicIngot],
    [draconicIngot, <draconicevolution:dragon_heart>, draconicIngot]
]);

val draconicChest = <draconicevolution:draconic_chest>;
recipes.remove(draconicChest);
recipes.addShaped("nexus_draconic_chest", draconicChest, [
    [draconicIngot, awakenedCore, draconicIngot],
    [draconicIngot, wyvernChest, draconicIngot],
    [draconicIngot, <draconicevolution:dragon_heart>, draconicIngot]
]);

val draconicLegs = <draconicevolution:draconic_legs>;
recipes.remove(draconicLegs);
recipes.addShaped("nexus_draconic_legs", draconicLegs, [
    [draconicIngot, awakenedCore, draconicIngot],
    [draconicIngot, wyvernLegs, draconicIngot],
    [draconicIngot, <draconicevolution:dragon_heart>, draconicIngot]
]);

val draconicBoots = <draconicevolution:draconic_boots>;
recipes.remove(draconicBoots);
recipes.addShaped("nexus_draconic_boots", draconicBoots, [
    [draconicIngot, awakenedCore, draconicIngot],
    [draconicIngot, wyvernBoots, draconicIngot],
    [draconicIngot, <draconicevolution:dragon_heart>, draconicIngot]
]);

// Draconic Tools
val draconicPick = <draconicevolution:draconic_pick>;
recipes.remove(draconicPick);
recipes.addShaped("nexus_draconic_pick", draconicPick, [
    [draconicIngot, awakenedCore, draconicIngot],
    [draconicIngot, wyvernPick, draconicIngot],
    [null, <minecraft:nether_star>, null]
]);

val draconicSword = <draconicevolution:draconic_sword>;
recipes.remove(draconicSword);
recipes.addShaped("nexus_draconic_sword", draconicSword, [
    [null, draconicIngot, null],
    [null, wyvernSword, null],
    [draconicIngot, awakenedCore, draconicIngot]
]);

val draconicStaff = <draconicevolution:draconic_staff_of_power>;
recipes.remove(draconicStaff);
recipes.addShaped("nexus_draconic_staff", draconicStaff, [
    [draconicIngot, draconicPick, draconicSword],
    [draconicIngot, awakenedCore, <draconicevolution:draconic_shovel>],
    [draconicIngot, celestialMatrix, draconicIngot]
]);

print("[Nexus Crucible] Tiered Equipment Balance & Progression recipes registered.");
