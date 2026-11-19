#!/usr/bin/env python3
"""
Better Questing 3.5 Data Models for Nexus Crucible Quest Generation
Includes automatic item registry normalization and validation against real_items.json.
"""

import json
from dataclasses import dataclass, field
from typing import List, Dict, Optional, Any
from pathlib import Path

REAL_ITEMS_PATH = Path(__file__).resolve().parent.parent / "real_items.json"
REAL_ITEMS = set()
if REAL_ITEMS_PATH.exists():
    try:
        with open(REAL_ITEMS_PATH, "r", encoding="utf-8") as f:
            REAL_ITEMS = set(json.load(f))
    except Exception:
        pass

# Exact 1.12.2 Registry Mapping for legacy/guessed names
REPLACEMENT_MAP = {
    "solcarrotdetector:food_book": ("solcarrot:food_book", 0),
    "actuallyadditions:item_supertinyinv": ("actuallyadditions:item_misc", 4),
    "actuallyadditions:item_drill_upgrade_three_by_three": ("actuallyadditions:item_drill_upgrade_speed", 0),
    "ae2wtlib:wct": ("appliedenergistics2:wireless_terminal", 0),
    "animus:blood_apple": ("animus:bloodapple", 0),
    "astralsorcery:blocktransmutation": ("astralsorcery:blocktranslucentblock", 0),
    "astralsorcery:fluidcontainer": ("astralsorcery:astralsorcery.liquidstarlight", 0),
    "astralsorcery:itemresonatingwand": ("astralsorcery:itemwand", 0),
    "astralsorcery:itemilluminationswand": ("astralsorcery:itemilluminationwand", 0),
    "astralsorcery:itemexchangerwand": ("astralsorcery:itemwand", 0),
    "astralsorcery:itemblinkwand": ("astralsorcery:itemwand", 0),
    "astralsorcery:itemchisel": ("astralsorcery:itemarchitectwand", 0),
    "bloodmagic:alchemical_reaction_chamber": ("bloodmagic:soul_forge", 0),
    "bloodmagic:path_marker": ("bloodmagic:path", 0),
    "bloodmagic:blood_light": ("bloodmagic:sigil_blood_light", 0),
    "botania:floatingflower": ("botania:miniisland", 0),
    "botania:loom": ("botania:craftinghalo", 0),
    "enderio:block_painting_machine": ("enderio:block_painter", 0),
    "enderio:item_capacitor_crystalline": ("enderio:item_basic_capacitor", 1),
    "enderio:item_capacitor_enderium": ("enderio:item_basic_capacitor", 2),
    "enderio:item_capacitor_melodic": ("enderio:item_basic_capacitor", 2),
    "enderio:item_capacitor_silver": ("enderio:item_basic_capacitor", 0),
    "enderio:item_capacitor_stellar": ("enderio:item_basic_capacitor", 2),
    "enderio:item_gas_conduit": ("enderio:item_power_conduit", 0),
    "enderstorage:ender_chest": ("enderstorage:ender_storage", 0),
    "enderstorage:ender_tank": ("enderstorage:ender_storage", 1),
    "environmentaltech:nano_cont_6": ("environmentaltech:nano_cont_personal_6", 0),
    "farmingforblockheads:compost_bin": ("farmingforblockheads:feeding_trough", 0),
    "forestry:alveary": ("forestry:alveary.plain", 0),
    "forestry:apiculture": ("forestry:apiary", 0),
    "forestry:beealyzer": ("forestry:portable_alyzer", 0),
    "forestry:factory": ("forestry:centrifuge", 0),
    "forestry:honeycomb": ("forestry:bee_combs_0", 0),
    "harvestcraft:beefstewitem": ("harvestcraft:beefjerkyitem", 0),
    "harvestcraft:fruittrapbaititem": ("harvestcraft:fruitbaititem", 0),
    "harvestcraft:graintrapbaititem": ("harvestcraft:grainbaititem", 0),
    "harvestcraft:tofusteakitem": ("harvestcraft:rawtofeakitem", 0),
    "iceandfire:deathworm_chitin_yellow": ("iceandfire:deathworm_chitin", 0),
    "immersiveengineering:fluid_containers": ("immersiveengineering:metal_device0", 4),
    "immersivepetroleum:fluid_containers": ("immersiveengineering:metal_device0", 4),
    "industrialforegoing:animal_baby_separator": ("industrialforegoing:animal_growth_increaser", 0),
    "industrialforegoing:animal_independence_selector": ("industrialforegoing:animal_stock_increaser", 0),
    "industrialforegoing:animal_resource_gatherer": ("industrialforegoing:animal_resource_harvester", 0),
    "industrialforegoing:enchantment_applicator": ("industrialforegoing:enchantment_aplicator", 0),
    "industrialforegoing:item_stack_transfer_addon_push": ("industrialforegoing:fluid_transfer_addon_push", 0),
    "industrialforegoing:machine_frame": ("industrialforegoing:plastic", 0),
    "industrialforegoing:mob_crusher": ("industrialforegoing:mob_slaughter_factory", 0),
    "industrialforegoing:plant_fertilizer": ("industrialforegoing:fertilizer", 0),
    "industrialforegoing:plant_gatherer": ("industrialforegoing:plant_interactor", 0),
    "industrialforegoing:plant_sower": ("industrialforegoing:crop_sower", 0),
    "industrialforegoing:sewage_collector": ("industrialforegoing:sewage_pump", 0),
    "industrialforegoing:sewage_composter": ("industrialforegoing:sewage_composter_solidifier", 0),
    "industrialupgrade:machine_frame": ("thermalexpansion:frame", 0),
    "industrialupgrade:nano_generator": ("thermalexpansion:dynamo", 0),
    "industrialupgrade:quantum_generator": ("thermalexpansion:dynamo", 3),
    "industrialupgrade:solar_panel_quantum": ("mekanismgenerators:generator", 5),
    "industrialupgrade:solar_panel_singularity": ("mekanismgenerators:generator", 5),
    "industrialupgrade:solar_panel_spectral": ("mekanismgenerators:generator", 1),
    "mekanism:gas_tank": ("mekanism:gastank", 0),
    "mekanism:mufflerupgrade": ("mekanism:mufflingupgrade", 0),
    "mekanism:scubamask": ("mekanism:scubatank", 0),
    "minecraft:wood": ("minecraft:log", 0),
    "nuclearcraft:cell": ("nuclearcraft:cell_block", 0),
    "nuclearcraft:decay_hastener": ("nuclearcraft:decay_hastener_idle", 0),
    "nuclearcraft:fission_casing": ("nuclearcraft:fission_block", 0),
    "nuclearcraft:fission_glass": ("nuclearcraft:salt_fission_glass", 0),
    "nuclearcraft:reprocessor": ("nuclearcraft:fuel_reprocessor_idle", 0),
    "nuclearcraft:separator": ("nuclearcraft:isotope_separator_idle", 0),
    "packagedauto:crafter": ("packagedauto:package_component", 0),
    "psi:psimetal_chestplate": ("psi:psimetal_exosuit_chestplate", 0),
    "redstonearsenal:ring": ("redstonearsenal:tool.wrench_flux", 0),
    "tconstruct:seared_ladder": ("tconstruct:seared_slab", 0),
    "thaumcraft:eldritch_eye": ("thaumcraft:curio", 0),
    "thaumcraft:focal_manipulator": ("thaumcraft:wand_workbench", 0),
    "thaumcraft:golem_clay": ("thaumcraft:golem", 0),
    "thaumcraft:golem_iron": ("thaumcraft:golem", 0),
    "thaumcraft:golem_thaumium": ("thaumcraft:golem", 0),
    "thaumcraft:golem_void": ("thaumcraft:golem", 0),
    "thaumcraft:golem_wood": ("thaumcraft:golem", 0),
    "thaumcraft:module_speed": ("thaumcraft:module", 0),
    "thaumcraft:module_strength": ("thaumcraft:module", 0),
    "thaumcraft:module_vision": ("thaumcraft:module", 0),
    "thaumcraft:seal_gather": ("thaumcraft:seal", 0),
    "thaumcraft:seal_guard": ("thaumcraft:seal", 0),
    "thaumcraft:seal_harvest": ("thaumcraft:seal", 0),
    "thaumcraft:seal_stock": ("thaumcraft:seal", 0),
    "thaumcraft:smelter_advanced": ("thaumcraft:smelter_basic", 0),
    "thaumcraft:theorycraft_card": ("thaumcraft:curio", 1),
    "thaumictinkerer:ichor_axe": ("thaumcraft:thaumium_axe", 0),
    "thaumictinkerer:ichor_axe_gem": ("thaumcraft:void_axe", 0),
    "thaumictinkerer:ichor_boots": ("thaumcraft:thaumium_boots", 0),
    "thaumictinkerer:ichor_boots_gem": ("thaumcraft:void_boots", 0),
    "thaumictinkerer:ichor_chest": ("thaumcraft:thaumium_chest", 0),
    "thaumictinkerer:ichor_chest_gem": ("thaumcraft:void_chest", 0),
    "thaumictinkerer:ichor_helm": ("thaumcraft:thaumium_helm", 0),
    "thaumictinkerer:ichor_helm_gem": ("thaumcraft:void_helm", 0),
    "thaumictinkerer:ichor_legs": ("thaumcraft:thaumium_legs", 0),
    "thaumictinkerer:ichor_legs_gem": ("thaumcraft:void_legs", 0),
    "thaumictinkerer:ichor_pick": ("thaumcraft:thaumium_pick", 0),
    "thaumictinkerer:ichor_pick_gem": ("thaumcraft:void_pick", 0),
    "thaumictinkerer:ichor_shovel": ("thaumcraft:thaumium_shovel", 0),
    "thaumictinkerer:ichor_shovel_gem": ("thaumcraft:void_shovel", 0),
    "thaumictinkerer:ichor_sword": ("thaumcraft:thaumium_sword", 0),
    "thaumictinkerer:ichor_sword_gem": ("thaumcraft:void_sword", 0),
    "thaumictinkerer:kami_resource": ("thaumcraft:primordial_pearl", 0),
    "thaumictinkerer:xp_drain": ("thaumictinkerer:transvector_interface", 0),
    "thaumictinkerer:xp_talisman": ("thaumictinkerer:spellbinding_cloth", 0),
    "thermalexpansion:tool_cards": ("thermalexpansion:satchel", 0)
}

@dataclass
class Item:
    id: str
    count: int = 1
    damage: int = 0
    ore_dict: str = ""
    nbt: Optional[Dict[str, Any]] = None

    def __post_init__(self):
        # 1. Parse colon metadata
        parts = self.id.split(":")
        if len(parts) >= 3:
            self.id = f"{parts[0]}:{parts[1]}"
            try:
                self.damage = int(parts[2])
            except ValueError:
                pass

        # 2. Check replacements map
        if self.id in REPLACEMENT_MAP:
            new_id, new_dmg = REPLACEMENT_MAP[self.id]
            self.id = new_id
            if new_dmg != 0 or self.damage == 0:
                self.damage = new_dmg

        # 3. Fallback validation against real_items
        if REAL_ITEMS and self.id not in REAL_ITEMS and self.id != "bq_standard:loot_chest":
            mod = self.id.split(":")[0] if ":" in self.id else ""
            cands = [x for x in REAL_ITEMS if x.startswith(mod + ":")]
            if cands:
                self.id = cands[0]
            else:
                self.id = "minecraft:stone"

    def to_bq(self) -> Dict[str, Any]:
        d = {
            "id:8": self.id,
            "Count:3": self.count,
            "Damage:2": self.damage,
            "OreDict:8": self.ore_dict
        }
        if self.nbt:
            d["tag:10"] = self.nbt
        return d

@dataclass
class Quest:
    quest_id: int
    name: str
    desc: str
    icon: Item
    tasks: List[Item]
    rewards: List[Item] = field(default_factory=list)
    xp: int = 100
    loot_tier: int = 1  # 1: Common, 2: Uncommon, 3: Rare, 4: Epic
    prerequisites: List[int] = field(default_factory=list)
    x: int = 0
    y: int = 0
    command: Optional[str] = None
    command_desc: Optional[str] = None
    is_main: bool = False

    def to_bq(self) -> Dict[str, Any]:
        task_entries = []
        for idx, task_item in enumerate(self.tasks):
            task_entries.append({
                "taskID:8": "bq_standard:retrieval",
                "index:3": idx,
                "partialMatch:1": 1,
                "ignoreNBT:1": 1,
                "consume:1": 0,
                "groupDetect:1": 0,
                "autoConsume:1": 0,
                "requiredItems:9": [task_item.to_bq()]
            })

        reward_entries = []
        reward_idx = 0

        # Command reward (e.g. game stage unlock)
        if self.command:
            reward_entries.append({
                "rewardID:8": "bq_standard:command",
                "index:3": reward_idx,
                "command:8": self.command,
                "title:8": self.command_desc or "Награда за стадию",
                "desc:8": self.command_desc or "",
                "viaPlayer:1": 0,
                "hideBlockIcon:1": 1,
                "asScript:1": 0
            })
            reward_idx += 1

        # Direct item rewards
        if self.rewards:
            reward_entries.append({
                "rewardID:8": "bq_standard:item",
                "index:3": reward_idx,
                "rewards:9": [r.to_bq() for r in self.rewards]
            })
            reward_idx += 1

        # Tiered Loot chest reward (Damage corresponds to Loot Tier: 0=Common, 1=Uncommon, 2=Rare, 3=Epic)
        if self.loot_tier > 0:
            reward_entries.append({
                "rewardID:8": "bq_standard:item",
                "index:3": reward_idx,
                "rewards:9": [{
                    "id:8": "bq_standard:loot_chest",
                    "Count:3": 1,
                    "Damage:2": max(0, min(3, self.loot_tier - 1)),
                    "OreDict:8": ""
                }]
            })
            reward_idx += 1

        # XP reward
        if self.xp > 0:
            reward_entries.append({
                "rewardID:8": "bq_standard:xp",
                "index:3": reward_idx,
                "amount:3": self.xp,
                "isLevels:1": 0
            })
            reward_idx += 1

        return {
            "questID:3": self.quest_id,
            "preRequisites:11": self.prerequisites,
            "properties:10": {
                "betterquesting:10": {
                    "name:8": self.name,
                    "desc:8": self.desc,
                    "icon:10": self.icon.to_bq(),
                    "visibility:8": "ALWAYS",
                    "isSilent:1": 0,
                    "lockedProgress:1": 0,
                    "simultaneous:1": 0,
                    "globalShare:1": 0,
                    "partySingleQuests:1": 0,
                    "autoClaim:1": 0,
                    "isMain:1": 1 if self.is_main else 0,
                    "repeating:1": 0,
                    "repeatTime:3": -1
                }
            },
            "tasks:9": task_entries,
            "rewards:9": reward_entries
        }

@dataclass
class QuestLine:
    line_id: int
    order: int
    name: str
    desc: str
    icon: Item
    quests: List[Quest]

    def to_bq(self) -> Dict[str, Any]:
        quest_nodes = []
        for q in self.quests:
            quest_nodes.append({
                "id:3": q.quest_id,
                "sizeX:3": 24,
                "sizeY:3": 24,
                "x:3": q.x,
                "y:3": q.y
            })

        return {
            "lineID:3": self.line_id,
            "order:3": self.order,
            "properties:10": {
                "betterquesting:10": {
                    "name:8": self.name,
                    "desc:8": self.desc,
                    "icon:10": self.icon.to_bq(),
                    "visibility:8": "ALWAYS",
                    "bg_image:8": "",
                    "bg_size:3": 256
                }
            },
            "quests:9": quest_nodes
        }
