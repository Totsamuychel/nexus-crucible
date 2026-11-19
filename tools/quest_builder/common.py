#!/usr/bin/env python3
"""
Common helper functions for building BetterQuesting questlines
"""

from typing import List, Dict, Any, Optional
from .models import Item, Quest, QuestLine

def make_item(spec: Any) -> Item:
    if isinstance(spec, Item):
        return spec
    if isinstance(spec, str):
        parts = spec.split(":")
        if len(parts) == 2:
            return Item(id=spec, count=1, damage=0)
        elif len(parts) == 3:
            return Item(id=f"{parts[0]}:{parts[1]}", count=1, damage=int(parts[2]))
    if isinstance(spec, tuple):
        item_id = spec[0]
        count = spec[1] if len(spec) > 1 else 1
        damage = spec[2] if len(spec) > 2 else 0
        oredict = spec[3] if len(spec) > 3 else ""
        return Item(id=item_id, count=count, damage=damage, ore_dict=oredict)
    if isinstance(spec, dict):
        return Item(
            id=spec.get("id", "minecraft:stone"),
            count=spec.get("count", 1),
            damage=spec.get("damage", 0),
            ore_dict=spec.get("oredict", "")
        )
    return Item(id="minecraft:stone")

def build_chapter(
    line_id: int,
    order: int,
    line_name: str,
    line_desc: str,
    line_icon_spec: Any,
    base_qid: int,
    quest_specs: List[Dict[str, Any]]
) -> QuestLine:
    quests: List[Quest] = []

    for spec in quest_specs:
        qid = base_qid + spec["id"]
        icon_item = make_item(spec["icon"])
        tasks = [make_item(t) for t in spec.get("tasks", [])]
        rewards = [make_item(r) for r in spec.get("rewards", [])]
        prereqs = [base_qid + p if p >= 0 else -p for p in spec.get("prereqs", [])]

        col = spec.get("col", 0)
        row = spec.get("row", 0)
        x = col * 36
        y = row * 36

        q = Quest(
            quest_id=qid,
            name=spec["name"],
            desc=spec["desc"],
            icon=icon_item,
            tasks=tasks,
            rewards=rewards,
            xp=spec.get("xp", 100),
            loot_tier=spec.get("loot_tier", 1),
            prerequisites=prereqs,
            x=x,
            y=y,
            command=spec.get("command"),
            command_desc=spec.get("command_desc"),
            is_main=spec.get("is_main", False)
        )
        quests.append(q)

    return QuestLine(
        line_id=line_id,
        order=order,
        name=line_name,
        desc=line_desc,
        icon=make_item(line_icon_spec),
        quests=quests
    )
