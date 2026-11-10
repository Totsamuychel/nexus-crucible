#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

// ========================================================
// Nexus Crucible: Gate Items Registration (s00 - s10)
// ========================================================

// s00 -> s01
var firedFoundation = VanillaFactory.createItem("fired_foundation");
firedFoundation.maxStackSize = 64;
firedFoundation.register();

// s01 -> s02
var pressureAssembly = VanillaFactory.createItem("pressure_assembly");
pressureAssembly.maxStackSize = 64;
pressureAssembly.register();

// s02 -> s03
var livingConductor = VanillaFactory.createItem("living_conductor");
livingConductor.maxStackSize = 64;
livingConductor.register();

// s03 -> s04
var insulatedCore = VanillaFactory.createItem("insulated_industrial_core");
insulatedCore.maxStackSize = 64;
insulatedCore.register();

// s04 -> s05
var alchemicalFrame = VanillaFactory.createItem("alchemical_machine_frame");
alchemicalFrame.maxStackSize = 64;
alchemicalFrame.register();

// s05 -> s06
var runicCore = VanillaFactory.createItem("runic_logic_core");
runicCore.maxStackSize = 64;
runicCore.register();

// s06 -> s07
var distributedMatrix = VanillaFactory.createItem("distributed_control_matrix");
distributedMatrix.maxStackSize = 64;
distributedMatrix.register();

// s07 -> s08
var quantumSubstrate = VanillaFactory.createItem("stabilized_quantum_substrate");
quantumSubstrate.maxStackSize = 64;
quantumSubstrate.register();

// s08 -> s09
var celestialMatrix = VanillaFactory.createItem("celestial_binding_matrix");
celestialMatrix.maxStackSize = 64;
celestialMatrix.register();

// s09 -> s10
var nexusSingularity = VanillaFactory.createItem("nexus_singularity");
nexusSingularity.maxStackSize = 16;
nexusSingularity.register();

// Endgame Completion Item
var convergenceCore = VanillaFactory.createItem("convergence_core");
convergenceCore.maxStackSize = 1;
convergenceCore.glowing = true;
convergenceCore.register();
