#!/usr/bin/env python3
"""
Nexus Crucible - DefaultLoot.json Generator
Generates balanced loot boxes for Better Questing Standard Expansion.
Tiers:
  - Tier 1: Common / Survival Crate (Food, basic ores, torches, storage, starter tools)
  - Tier 2: Uncommon / Tech & Magic Crate (Alloys, capacitors, crystals, mana items, processors)
  - Tier 3: Rare / High-Tech & Mystic Crate (Dark steel, terrasteel, dense plates, void items, reactor fuels)
  - Tier 4: Epic / Endgame Crate (Awakened draconic, neutronium, singularities, ultimate components)
"""

import json
from pathlib import Path

def generate_default_loot():
    loot_data = {
        "format:8": "2.0.0",
        "groups:9": [
            # TIER 1: Common Survival Crate
            {
                "ID:3": 0,
                "name:8": "Ящик Первопроходца (Тир 1: Выживание и Металлы)",
                "weight:3": 50,
                "rewards:9": [
                    {
                        "ID:3": 0,
                        "name:8": "Провизия: Стейки и Пироги",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "minecraft:cooked_beef", "Count:3": 16, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "harvestcraft:applepieitem", "Count:3": 4, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 1,
                        "name:8": "Стартовый набор шахтера: Факелы и Уголь",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "minecraft:torch", "Count:3": 32, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "minecraft:coal", "Count:3": 16, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 2,
                        "name:8": "Базовые слитки: Железо и Медь",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "minecraft:iron_ingot", "Count:3": 12, "Damage:2": 0, "OreDict:8": "ingotIron"},
                            {"id:8": "thermalfoundation:material", "Count:3": 16, "Damage:2": 128, "OreDict:8": "ingotCopper"}
                        ]
                    },
                    {
                        "ID:3": 3,
                        "name:8": "Олово и Бронза",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "thermalfoundation:material", "Count:3": 12, "Damage:2": 129, "OreDict:8": "ingotTin"},
                            {"id:8": "thermalfoundation:material", "Count:3": 8, "Damage:2": 163, "OreDict:8": "ingotBronze"}
                        ]
                    },
                    {
                        "ID:3": 4,
                        "name:8": "Деревянные ящики Storage Drawers",
                        "weight:3": 10,
                        "items:9": [
                            {"id:8": "storagedrawers:basicdrawers", "Count:3": 4, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    }
                ]
            },
            # TIER 2: Uncommon Tech & Magic Crate
            {
                "ID:3": 1,
                "name:8": "Инженерный Сундук (Тир 2: Механика и Мана)",
                "weight:3": 30,
                "rewards:9": [
                    {
                        "ID:3": 0,
                        "name:8": "Сталь и Электрум",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "thermalfoundation:material", "Count:3": 16, "Damage:2": 160, "OreDict:8": "ingotSteel"},
                            {"id:8": "thermalfoundation:material", "Count:3": 8, "Damage:2": 161, "OreDict:8": "ingotElectrum"}
                        ]
                    },
                    {
                        "ID:3": 1,
                        "name:8": "Конденсаторы и Проводка Ender IO",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "enderio:item_basic_capacitor", "Count:3": 2, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "enderio:item_power_conduit", "Count:3": 16, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 2,
                        "name:8": "Мана-металлы и Жемчуг Botania",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "botania:manaresource", "Count:3": 8, "Damage:2": 0, "OreDict:8": "ingotManasteel"},
                            {"id:8": "botania:manaresource", "Count:3": 4, "Damage:2": 1, "OreDict:8": "manaPearl"}
                        ]
                    },
                    {
                        "ID:3": 3,
                        "name:8": "Процессоры AE2",
                        "weight:3": 15,
                        "items:9": [
                            {"id:8": "appliedenergistics2:material", "Count:3": 4, "Damage:2": 22, "OreDict:8": ""},
                            {"id:8": "appliedenergistics2:material", "Count:3": 4, "Damage:2": 23, "OreDict:8": ""},
                            {"id:8": "appliedenergistics2:material", "Count:3": 4, "Damage:2": 24, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 4,
                        "name:8": "Кристаллы Actually Additions",
                        "weight:3": 15,
                        "items:9": [
                            {"id:8": "actuallyadditions:item_crystal", "Count:3": 8, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "actuallyadditions:item_crystal", "Count:3": 8, "Damage:2": 1, "OreDict:8": ""}
                        ]
                    }
                ]
            },
            # TIER 3: Rare High-Tech & Mystic Crate
            {
                "ID:3": 2,
                "name:8": "Энергетический Контейнер (Тир 3: Продвинутые Сплавы и Квант)",
                "weight:3": 15,
                "rewards:9": [
                    {
                        "ID:3": 0,
                        "name:8": "Террасталь и Эльфийские ресурсы",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "botania:manaresource", "Count:3": 4, "Damage:2": 4, "OreDict:8": "ingotTerrasteel"},
                            {"id:8": "botania:manaresource", "Count:3": 6, "Damage:2": 7, "OreDict:8": "elvenElementium"}
                        ]
                    },
                    {
                        "ID:3": 1,
                        "name:8": "Темная и Эндериумная сталь",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "enderio:item_alloy_ingot", "Count:3": 8, "Damage:2": 6, "OreDict:8": "ingotDarkSteel"},
                            {"id:8": "thermalfoundation:material", "Count:3": 6, "Damage:2": 167, "OreDict:8": "ingotEnderium"}
                        ]
                    },
                    {
                        "ID:3": 2,
                        "name:8": "Октадические конденсаторы Ender IO",
                        "weight:3": 15,
                        "items:9": [
                            {"id:8": "enderio:item_basic_capacitor", "Count:3": 2, "Damage:2": 2, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 3,
                        "name:8": "Ядерное топливо и Изотопы NuclearCraft",
                        "weight:3": 15,
                        "items:9": [
                            {"id:8": "nuclearcraft:fuel_uranium", "Count:3": 4, "Damage:2": 4, "OreDict:8": ""},
                            {"id:8": "nuclearcraft:part", "Count:3": 8, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 4,
                        "name:8": "64k Компоненты Памяти AE2",
                        "weight:3": 10,
                        "items:9": [
                            {"id:8": "appliedenergistics2:material", "Count:3": 2, "Damage:2": 38, "OreDict:8": ""}
                        ]
                    }
                ]
            },
            # TIER 4: Epic Endgame Crate
            {
                "ID:3": 3,
                "name:8": "Сингулярная Капсула (Тир 4: Космический Эндгейм)",
                "weight:3": 5,
                "rewards:9": [
                    {
                        "ID:3": 0,
                        "name:8": "Пробужденные Дракониевые Ядра",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "draconicevolution:awakened_core", "Count:3": 2, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "draconicevolution:draconic_ingot", "Count:3": 4, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 1,
                        "name:8": "Слитки Нейтрония Avaritia",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "avaritia:resource", "Count:3": 4, "Damage:2": 4, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 2,
                        "name:8": "Кристальная Матрица Avaritia",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "avaritia:resource", "Count:3": 6, "Damage:2": 1, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 3,
                        "name:8": "Сверхплотный Литерит и Этониум Environmental Tech",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "environmentaltech:litherite_crystal", "Count:3": 16, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "environmentaltech:erodium_crystal", "Count:3": 8, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 4,
                        "name:8": "Абсолютный Компонент Extended Crafting",
                        "weight:3": 15,
                        "items:9": [
                            {"id:8": "extendedcrafting:material", "Count:3": 2, "Damage:2": 17, "OreDict:8": ""}
                        ]
                    }
                ]
            }
        ]
    }
    return loot_data

if __name__ == "__main__":
    out_path = Path("/home/Danya/nexus-crucible/instance/config/betterquesting/DefaultLoot.json")
    data = generate_default_loot()
    with open(out_path, "w", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
    print(f"Generated {out_path} with {len(data['groups:9'])} loot tiers.")
