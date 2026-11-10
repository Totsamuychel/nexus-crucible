import crafttweaker.item.IItemStack;

// ========================================================
// Nexus Crucible: Progression Bypass Removals
// Forces players to use Tinkers' Construct primitive flint/stone tools
// ========================================================

val vanillaToolsToDisable as IItemStack[] = [
    <minecraft:wooden_sword>,
    <minecraft:wooden_pickaxe>,
    <minecraft:wooden_axe>,
    <minecraft:wooden_shovel>,
    <minecraft:wooden_hoe>,
    <minecraft:stone_sword>,
    <minecraft:stone_pickaxe>,
    <minecraft:stone_axe>,
    <minecraft:stone_shovel>,
    <minecraft:stone_hoe>,
    <minecraft:iron_pickaxe>,
    <minecraft:iron_axe>,
    <minecraft:iron_sword>,
    <minecraft:iron_shovel>,
    <minecraft:diamond_pickaxe>,
    <minecraft:diamond_sword>,
    <minecraft:diamond_axe>
];

for tool in vanillaToolsToDisable {
    recipes.remove(tool);
}

print("[Nexus Crucible] Vanilla tool bypasses removed. Primitive Tinkers tools enforced.");
