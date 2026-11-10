import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

// ========================================================
// Nexus Crucible: Ore Dictionary & Materials Unification
// ========================================================

// Ensure standard oredict tags exist for base metallurgy
val oreCopper = <ore:oreCopper>;
val ingotCopper = <ore:ingotCopper>;
val dustCopper = <ore:dustCopper>;
val plateCopper = <ore:plateCopper>;

val oreTin = <ore:oreTin>;
val ingotTin = <ore:ingotTin>;
val dustTin = <ore:dustTin>;

val ingotBronze = <ore:ingotBronze>;
val plateBronze = <ore:plateBronze>;

val ingotSteel = <ore:ingotSteel>;
val plateSteel = <ore:plateSteel>;

// Custom Gate Items OreDict registrations
<ore:nexusGatePrimitive>.add(<contenttweaker:fired_foundation>);
<ore:nexusGateSteam>.add(<contenttweaker:pressure_assembly>);
<ore:nexusGateNature>.add(<contenttweaker:living_conductor>);
<ore:nexusGateElectro>.add(<contenttweaker:insulated_industrial_core>);
<ore:nexusGateAlchemical>.add(<contenttweaker:alchemical_machine_frame>);
<ore:nexusGateArcane>.add(<contenttweaker:runic_logic_core>);
<ore:nexusGateNetwork>.add(<contenttweaker:distributed_control_matrix>);
<ore:nexusGateQuantum>.add(<contenttweaker:stabilized_quantum_substrate>);
<ore:nexusGateCelestial>.add(<contenttweaker:celestial_binding_matrix>);
<ore:nexusGateSingularity>.add(<contenttweaker:nexus_singularity>);
<ore:nexusGateEndgame>.add(<contenttweaker:convergence_core>);

print("[Nexus Crucible] Materials & Gate OreDict entries registered successfully.");
