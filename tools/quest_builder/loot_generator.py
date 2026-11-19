#!/usr/bin/env python3
"""
Nexus Crucible - DefaultLoot.json Generator
Generates balanced, progression-safe loot boxes for Better Questing Standard Expansion.
Tiers:
  - Tier 1 (Damage 0): Common Survival Crate (Food, torches, clay, leather, string, storage)
  - Tier 2 (Damage 1): Steam & Foundry Crate (Nuggets, redstone, seared bricks, quartz, slime)
  - Tier 3 (Damage 2): Advanced Industrial Crate (Steel, electrum, conduits, manasteel, AE2 basics)
  - Tier 4 (Damage 3): Celestial & Endgame Crate (Terrasteel, enderium, storage cells, litherite)
"""

import json
from pathlib import Path

def generate_default_loot():
    loot_data = {
        "format:8": "2.0.0",
        "groups:9": [
            # TIER 1: Common Survival Crate (Damage 0)
            {
                "ID:3": 0,
                "name:8": "Ящик Первопроходца (Тир 1: Выживание и Ресурсы)",
                "weight:3": 50,
                "rewards:9": [
                    {
                        "ID:3": 0,
                        "name:8": "Провизия: Жареное мясо и Хлеб",
                        "weight:3": 30,
                        "items:9": [
                            {"id:8": "minecraft:cooked_beef", "Count:3": 8, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "minecraft:bread", "Count:3": 8, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 1,
                        "name:8": "Набор исследователя: Факелы и Уголь",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "minecraft:torch", "Count:3": 16, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "minecraft:coal", "Count:3": 8, "Damage:2": 1, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 2,
                        "name:8": "Природные материалы: Нити, Кожа и Кремень",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "minecraft:string", "Count:3": 6, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "minecraft:leather", "Count:3": 4, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "minecraft:flint", "Count:3": 4, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 3,
                        "name:8": "Строительная глина и Песок",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "minecraft:clay_ball", "Count:3": 16, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "minecraft:sand", "Count:3": 16, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 4,
                        "name:8": "Деревянные ящики Storage Drawers",
                        "weight:3": 15,
                        "items:9": [
                            {"id:8": "storagedrawers:basicdrawers", "Count:3": 2, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    }
                ]
            },
            # TIER 2: Steam & Foundry Crate (Damage 1)
            {
                "ID:3": 1,
                "name:8": "Инженерный Сундук (Тир 2: Механика и Сплавы)",
                "weight:3": 30,
                "rewards:9": [
                    {
                        "ID:3": 0,
                        "name:8": "Самородки железа и меди",
                        "weight:3": 30,
                        "items:9": [
                            {"id:8": "minecraft:iron_nugget", "Count:3": 18, "Damage:2": 0, "OreDict:8": "nuggetIron"},
                            {"id:8": "thermalfoundation:material", "Count:3": 18, "Damage:2": 192, "OreDict:8": "nuggetCopper"}
                        ]
                    },
                    {
                        "ID:3": 1,
                        "name:8": "Обожженные кирпичи Tinkers",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "tconstruct:materials", "Count:3": 8, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 2,
                        "name:8": "Редстоун и Кварц",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "minecraft:redstone", "Count:3": 12, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "minecraft:quartz", "Count:3": 8, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 3,
                        "name:8": "Слизь и Резина",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "minecraft:slime_ball", "Count:3": 4, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "industrialforegoing:plastic", "Count:3": 4, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    }
                ]
            },
            # TIER 3: Advanced Industrial Crate (Damage 2)
            {
                "ID:3": 2,
                "name:8": "Энергетический Контейнер (Тир 3: Продвинутые Сплавы)",
                "weight:3": 15,
                "rewards:9": [
                    {
                        "ID:3": 0,
                        "name:8": "Сталь и Электрум",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "thermalfoundation:material", "Count:3": 6, "Damage:2": 160, "OreDict:8": "ingotSteel"},
                            {"id:8": "thermalfoundation:material", "Count:3": 4, "Damage:2": 161, "OreDict:8": "ingotElectrum"}
                        ]
                    },
                    {
                        "ID:3": 1,
                        "name:8": "Базовые конденсаторы и Кондуиты",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "enderio:item_basic_capacitor", "Count:3": 1, "Damage:2": 0, "OreDict:8": ""},
                            {"id:8": "enderio:item_power_conduit", "Count:3": 8, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 2,
                        "name:8": "Манасталь и Жемчуг Botania",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "botania:manaresource", "Count:3": 4, "Damage:2": 0, "OreDict:8": "ingotManasteel"},
                            {"id:8": "botania:manaresource", "Count:3": 2, "Damage:2": 1, "OreDict:8": "manaPearl"}
                        ]
                    },
                    {
                        "ID:3": 3,
                        "name:8": "Логические процессоры AE2",
                        "weight:3": 20,
                        "items:9": [
                            {"id:8": "appliedenergistics2:material", "Count:3": 2, "Damage:2": 22, "OreDict:8": ""},
                            {"id:8": "appliedenergistics2:material", "Count:3": 2, "Damage:2": 23, "OreDict:8": ""}
                        ]
                    }
                ]
            },
            # TIER 4: Celestial & Endgame Crate (Damage 3)
            {
                "ID:3": 3,
                "name:8": "Сингулярная Капсула (Тир 4: Космический Эндгейм)",
                "weight:3": 5,
                "rewards:9": [
                    {
                        "ID:3": 0,
                        "name:8": "Террасталь и Темная Сталь",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "botania:manaresource", "Count:3": 2, "Damage:2": 4, "OreDict:8": "ingotTerrasteel"},
                            {"id:8": "enderio:item_alloy_ingot", "Count:3": 4, "Damage:2": 6, "OreDict:8": "ingotDarkSteel"}
                        ]
                    },
                    {
                        "ID:3": 1,
                        "name:8": "Эндериумные слитки",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "thermalfoundation:material", "Count:3": 2, "Damage:2": 167, "OreDict:8": "ingotEnderium"}
                        ]
                    },
                    {
                        "ID:3": 2,
                        "name:8": "16k Компонент Памяти AE2",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "appliedenergistics2:material", "Count:3": 1, "Damage:2": 37, "OreDict:8": ""}
                        ]
                    },
                    {
                        "ID:3": 3,
                        "name:8": "Кристаллы Литерита Environmental Tech",
                        "weight:3": 25,
                        "items:9": [
                            {"id:8": "environmentaltech:litherite_crystal", "Count:3": 4, "Damage:2": 0, "OreDict:8": ""}
                        ]
                    }
                ]
            }
        ]
    }
    return loot_data
