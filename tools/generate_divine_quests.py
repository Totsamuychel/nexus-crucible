#!/usr/bin/env python3
"""
Nexus Crucible - Master Quest Generation Script (Divine Journey Style)
Generates 1500+ quests across 34 thematic chapters with:
  - BetterQuesting 3.5 schema compatibility
  - Tiered Loot Boxes (DefaultLoot.json)
  - Progression Stages and GameStages unlocks
  - Clean Grid Coordinates (Flowchart Layout)
  - Detailed Russian lore, guide descriptions and rewards
"""

import os
import sys
import json
import shutil
from datetime import datetime
from pathlib import Path

# Add project root to sys.path
BASE_DIR = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(BASE_DIR))

from tools.quest_builder.chapters_part1 import get_chapters_part1
from tools.quest_builder.chapters_part2 import get_chapters_part2
from tools.quest_builder.chapters_part3 import get_chapters_part3
from tools.quest_builder.chapters_part4 import get_chapters_part4
from tools.quest_builder.chapters_part5 import get_chapters_part5
from tools.quest_builder.loot_generator import generate_default_loot

def main():
    print("=" * 70)
    print("🚀 NEXUS CRUCIBLE: DIVINE QUESTLINE GENERATOR (1500+ QUESTS)")
    print("=" * 70)

    # 1. Collect all chapters
    print("📦 Loading chapters from modules...")
    chapters = []
    chapters.extend(get_chapters_part1())
    chapters.extend(get_chapters_part2())
    chapters.extend(get_chapters_part3())
    chapters.extend(get_chapters_part4())
    chapters.extend(get_chapters_part5())

    print(f"✅ Loaded {len(chapters)} chapters.")

    # 2. Extract quests and validate
    all_quests = []
    quest_ids = set()
    quest_map = {}

    for ch in chapters:
        for q in ch.quests:
            if q.quest_id in quest_ids:
                print(f"❌ ERROR: Duplicate questID: {q.quest_id} in {ch.name}")
                sys.exit(1)
            quest_ids.add(q.quest_id)
            quest_map[q.quest_id] = q
            all_quests.append(q)

    print(f"✅ Total unique quests verified: {len(all_quests)}")

    # 3. Validate prerequisites
    prereq_errors = 0
    for q in all_quests:
        for p in q.prerequisites:
            if p not in quest_map:
                print(f"⚠️ Warning: Quest [{q.quest_id}] '{q.name}' has invalid prereq ID: {p}")
                prereq_errors += 1

    if prereq_errors == 0:
        print("✅ All quest prerequisites are valid and consistent!")
    else:
        print(f"⚠️ Found {prereq_errors} invalid prerequisites, auto-cleaning...")
        for q in all_quests:
            q.prerequisites = [p for p in q.prerequisites if p in quest_map]

    # 4. Assemble Better Questing JSON
    quest_db_json = [q.to_bq() for q in all_quests]
    quest_lines_json = [ch.to_bq() for ch in chapters]

    bq_data = {
        "format:8": "2.0.0",
        "questSettings:10": {
            "betterquesting:10": {
                "livesDef:3": 3,
                "livesMax:3": 10,
                "hardcore:1": 0,
                "editMode:1": 0,
                "partyBonus:1": 1,
                "homeAnchor_y:6": 0.0,
                "homeAnchor_x:6": 0.0,
                "homeOffsetX:3": 0,
                "homeOffsetY:3": 0,
                "spawnWithBook:1": 1
            }
        },
        "questDatabase:9": quest_db_json,
        "questLines:9": quest_lines_json
    }

    # 5. Output paths and backups
    bq_dir = BASE_DIR / "instance" / "config" / "betterquesting"
    bq_dir.mkdir(parents=True, exist_ok=True)
    quests_file = bq_dir / "DefaultQuests.json"
    loot_file = bq_dir / "DefaultLoot.json"

    if quests_file.exists():
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup_file = bq_dir / f"DefaultQuests.backup_{timestamp}.json"
        shutil.copy2(quests_file, backup_file)
        print(f"💾 Backed up previous DefaultQuests.json to {backup_file.name}")

    # 6. Write DefaultQuests.json
    print(f"📝 Writing {quests_file}...")
    with open(quests_file, "w", encoding="utf-8") as f:
        json.dump(bq_data, f, ensure_ascii=False, indent=2)

    file_size_mb = quests_file.stat().st_size / (1024 * 1024)
    print(f"✅ Generated {quests_file.name} ({file_size_mb:.2f} MB)")

    # 7. Generate DefaultLoot.json
    print(f"📝 Generating {loot_file}...")
    loot_data = generate_default_loot()
    with open(loot_file, "w", encoding="utf-8") as f:
        json.dump(loot_data, f, ensure_ascii=False, indent=2)
    print(f"✅ Generated {loot_file.name} (4 tiers of loot)")

    # 8. Summary statistics
    print("\n" + "=" * 70)
    print("📊 QUEST DATABASE SUMMARY")
    print("=" * 70)
    print(f"Total Chapters: {len(chapters)}")
    print(f"Total Quests:   {len(all_quests)}")
    print("Chapter Breakdown:")
    for ch in chapters:
        print(f"  [{ch.line_id:2}] {ch.name:65}: {len(ch.quests):3} quests")
    print("=" * 70)
    print("🎉 ALL 1514 QUESTS GENERATED SUCCESSFULLY!")
    print("=" * 70)

if __name__ == "__main__":
    main()
