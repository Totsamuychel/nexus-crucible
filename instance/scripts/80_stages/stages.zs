import mods.ItemStages;
import mods.recipestages.Recipes;

// ========================================================
// Nexus Crucible: Progression Stages Configuration
// ========================================================

val stage_s00 = "s00_primitive";
val stage_s01 = "s01_steam";
val stage_s02 = "s02_awakened_nature";
val stage_s03 = "s03_electromechanics";
val stage_s04 = "s04_industrial_chemistry";
val stage_s05 = "s05_arcane_engineering";
val stage_s06 = "s06_networked_factory";
val stage_s07 = "s07_advanced_industry";
val stage_s08 = "s08_celestial_synthesis";
val stage_s09 = "s09_stellar_engineering";
val stage_s10 = "s10_convergence";

// Stage gate items associations
ItemStages.addItemStage(stage_s01, <contenttweaker:fired_foundation>);
ItemStages.addItemStage(stage_s02, <contenttweaker:pressure_assembly>);
ItemStages.addItemStage(stage_s03, <contenttweaker:living_conductor>);
ItemStages.addItemStage(stage_s04, <contenttweaker:insulated_industrial_core>);
ItemStages.addItemStage(stage_s05, <contenttweaker:alchemical_machine_frame>);
ItemStages.addItemStage(stage_s06, <contenttweaker:runic_logic_core>);
ItemStages.addItemStage(stage_s07, <contenttweaker:distributed_control_matrix>);
ItemStages.addItemStage(stage_s08, <contenttweaker:stabilized_quantum_substrate>);
ItemStages.addItemStage(stage_s09, <contenttweaker:celestial_binding_matrix>);
ItemStages.addItemStage(stage_s10, <contenttweaker:nexus_singularity>);
ItemStages.addItemStage(stage_s10, <contenttweaker:convergence_core>);
