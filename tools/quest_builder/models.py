#!/usr/bin/env python3
"""
Better Questing 3.5 Data Models for Nexus Crucible Quest Generation
"""

from dataclasses import dataclass, field
from typing import List, Dict, Optional, Any

@dataclass
class Item:
    id: str
    count: int = 1
    damage: int = 0
    ore_dict: str = ""
    nbt: Optional[Dict[str, Any]] = None

    def __post_init__(self):
        parts = self.id.split(":")
        if len(parts) >= 3:
            self.id = f"{parts[0]}:{parts[1]}"
            try:
                self.damage = int(parts[2])
            except ValueError:
                pass

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

        # Loot chest reward
        if self.loot_tier > 0:
            reward_entries.append({
                "rewardID:8": "bq_standard:item",
                "index:3": reward_idx,
                "rewards:9": [{
                    "id:8": "bq_standard:loot_chest",
                    "Count:3": 1,
                    "Damage:2": 0,
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
