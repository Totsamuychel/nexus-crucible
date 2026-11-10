import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ========================================================
// Nexus Crucible: Stage 00 -> Stage 01 Transition
// Gate Item: Fired Foundation
// Requires: Primitive Tinkers grout/seared brick + clay + stone rods
// ========================================================

val firedFoundation = <contenttweaker:fired_foundation>;

// Seared Brick or Grout or Clay Block base
val searedBrick = <tconstruct:materials:0> | <tconstruct:soil:0> | <minecraft:brick>;
val clayBall = <minecraft:clay_ball>;
val flint = <minecraft:flint>;

recipes.addShaped("nexus_s00_fired_foundation", firedFoundation, [
    [flint, clayBall, flint],
    [clayBall, searedBrick, clayBall],
    [flint, clayBall, flint]
]);

print("[Nexus Crucible] Stage 00 (Primitive) recipes registered.");
