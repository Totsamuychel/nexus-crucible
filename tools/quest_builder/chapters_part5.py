#!/usr/bin/env python3
"""
Nexus Crucible - Quest Chapters Part 5 (Chapters 32-33, QIDs 1600-1704)
Chapters:
  32: Компактные Пространства и Хранилища: Storage Drawers, Iron Chests & Compact Machines (55 quests)
  33: Зал Славы и Великих Испытаний: Nexus Crucible Master (50 quests)
"""

from .common import build_chapter

def get_chapters_part5():
    chapters = []

    # =========================================================================
    # CHAPTER 32: Компактные Пространства и Хранилища (QIDs 1600-1654, 55 quests)
    # =========================================================================
    q_ch32 = []
    storage_nodes = [
        ("Медный сундук (Copper Chest - 45 слотов)", "ironchest:iron_chest:3", "ironchest:iron_chest:3", 1, 0, 0),
        ("Железный сундук (Iron Chest - 54 слота)", "ironchest:iron_chest:0", "ironchest:iron_chest:0", 1, 1, 0),
        ("Серебряный сундук (Silver Chest - 72 слота)", "ironchest:iron_chest:4", "ironchest:iron_chest:4", 1, 2, 0),
        ("Золотой сундук (Gold Chest - 81 слот)", "ironchest:iron_chest:1", "ironchest:iron_chest:1", 1, 3, 0),
        ("Алмазный сундук (Diamond Chest - 108 слотов)", "ironchest:iron_chest:2", "ironchest:iron_chest:2", 1, 4, 0),
        ("Кристальный сундук (Crystal Chest - Прозрачный)", "ironchest:iron_chest:5", "ironchest:iron_chest:5", 1, 5, 0),
        ("Обсидиановый сундук (Obsidian Chest - Взрывозащита)", "ironchest:iron_chest:6", "ironchest:iron_chest:6", 1, 5, 1),
        ("Сундук из земли (Dirt Chest 9000)", "ironchest:iron_chest:7", "ironchest:iron_chest:7", 1, 1, -1),
        ("Апгрейд: Дерево в Железо", "ironchest:wood_iron_chest_upgrade", "ironchest:wood_iron_chest_upgrade", 2, 2, -1),
        ("Апгрейд: Железо в Золото", "ironchest:iron_gold_chest_upgrade", "ironchest:iron_gold_chest_upgrade", 2, 3, -1),
        ("Апгрейд: Золото в Алмаз", "ironchest:gold_diamond_chest_upgrade", "ironchest:gold_diamond_chest_upgrade", 2, 4, -1),
        ("Апгрейд: Алмаз в Обсидиан", "ironchest:diamond_obsidian_chest_upgrade", "ironchest:diamond_obsidian_chest_upgrade", 2, 5, -1),
        ("Деревянный ящик Storage Drawers 1x1", "storagedrawers:basicdrawers:0", "storagedrawers:basicdrawers:0", 4, 0, 2),
        ("Деревянный ящик 1x2 (Два отсека)", "storagedrawers:basicdrawers:1", "storagedrawers:basicdrawers:1", 4, 1, 2),
        ("Деревянный ящик 2x2 (Четыре отсека)", "storagedrawers:basicdrawers:2", "storagedrawers:basicdrawers:2", 4, 2, 2),
        ("Компактный ящик (Compacting Drawer - Самопрессовка)", "storagedrawers:compdrawers", "storagedrawers:compdrawers", 2, 3, 2),
        ("Контроллер ящиков (Drawer Controller)", "storagedrawers:controller", "storagedrawers:controller", 1, 4, 2),
        ("Подчиненный контроллер (Controller Slave)", "storagedrawers:controllerslave", "storagedrawers:controllerslave", 1, 5, 2),
        ("Шаблон улучшения ящика (Upgrade Template)", "storagedrawers:upgrade_template", "storagedrawers:upgrade_template", 8, 3, 3),
        ("Улучшение емкости Железо (x2)", "storagedrawers:upgrade_storage:0", "storagedrawers:upgrade_storage:0", 4, 4, 3),
        ("Улучшение емкости Золото (x4)", "storagedrawers:upgrade_storage:1", "storagedrawers:upgrade_storage:1", 4, 5, 3),
        ("Улучшение емкости Обсидиан (x8)", "storagedrawers:upgrade_storage:2", "storagedrawers:upgrade_storage:2", 4, 6, 3),
        ("Улучшение емкости Алмаз (x16)", "storagedrawers:upgrade_storage:3", "storagedrawers:upgrade_storage:3", 4, 7, 3),
        ("Улучшение емкости Изумруд (x32)", "storagedrawers:upgrade_storage:4", "storagedrawers:upgrade_storage:4", 4, 8, 3),
        ("Улучшение: Сброс излишков (Void Upgrade)", "storagedrawers:upgrade_void", "storagedrawers:upgrade_void", 4, 6, 2),
        ("Улучшение: Преобразование (Conversion)", "storagedrawers:upgrade_conversion", "storagedrawers:upgrade_conversion", 2, 7, 2),
        ("Улучшение: Редстоун-сигнал наполненности", "storagedrawers:upgrade_redstone:0", "storagedrawers:upgrade_redstone:0", 2, 8, 2),
        ("Ключ блокировки ящиков (Drawer Key)", "storagedrawers:drawer_key", "storagedrawers:drawer_key", 1, 4, 1),
        ("Ключ отображения количества (Quantify Key)", "storagedrawers:quantify_key", "storagedrawers:quantify_key", 1, 5, 1),
        ("Ключ сокрытия содержимого (Shroud Key)", "storagedrawers:shroud_key", "storagedrawers:shroud_key", 1, 6, 1),
        ("Эндер-сундук Ender Storage (Единая сеть)", "enderstorage:ender_chest", "enderstorage:ender_chest", 2, 7, 0),
        ("Эндер-цистерна для жидкостей (Ender Tank)", "enderstorage:ender_tank", "enderstorage:ender_tank", 2, 8, 0),
        ("Эндер-сумка (Ender Pouch)", "enderstorage:ender_pouch", "enderstorage:ender_pouch", 1, 9, 0),
        ("Цветовая кодировка красителями (3 полосы)", "minecraft:dye:1", "minecraft:dye:1", 3, 9, 1),
        ("Алмазный замок приватности эндер-сети", "minecraft:diamond", "minecraft:diamond", 1, 10, 0),
        ("Персональное устройство сжатия (PSD)", "compactmachines3:psd", "compactmachines3:psd", 1, 7, -1),
        ("Полевой проектор структуры (Field Projector)", "compactmachines3:fieldprojector", "compactmachines3:fieldprojector", 4, 8, -1),
        ("Крошечная машина (Tiny Compact Machine 3x3x3)", "compactmachines3:machine:0", "compactmachines3:machine:0", 1, 9, -1),
        ("Малая машина (Small Machine 5x5x5)", "compactmachines3:machine:1", "compactmachines3:machine:1", 1, 10, -1),
        ("Обычная машина (Normal Machine 7x7x7)", "compactmachines3:machine:2", "compactmachines3:machine:2", 1, 11, -1),
        ("Большая машина (Large Machine 9x9x9)", "compactmachines3:machine:3", "compactmachines3:machine:3", 1, 12, -1),
        ("Гигантская машина (Giant Machine 11x11x11)", "compactmachines3:machine:4", "compactmachines3:machine:4", 1, 13, -1),
        ("Максимальная машина (Maximum 13x13x13)", "compactmachines3:machine:5", "compactmachines3:machine:5", 1, 14, -1),
        ("Туннель вывода кондуитов (Tunnel)", "compactmachines3:tunnel:0", "compactmachines3:tunnel:0", 6, 12, 0),
        ("Туннель передачи редстоуна", "compactmachines3:tunnel:1", "compactmachines3:tunnel:1", 2, 13, 0),
        ("Компактный ядерный реактор внутри машины", "compactmachines3:machine:5", "compactmachines3:machine:5", 1, 15, -1),
        ("Компактный термоядерный реактор", "compactmachines3:machine:5", "compactmachines3:machine:5", 1, 15, 0),
        ("Компактная 5x фабрика Mekanism", "compactmachines3:machine:5", "compactmachines3:machine:5", 1, 16, -1),
        ("Компактный автокрафт 9x9 PackagedAuto", "compactmachines3:machine:5", "compactmachines3:machine:5", 1, 16, 0),
        ("Бескрайний склад на миллионы предметов", "storagedrawers:controller", "storagedrawers:controller", 1, 10, 2),
        ("Сжатый сейф хранения материи", "ironchest:iron_chest:6", "ironchest:iron_chest:6", 4, 11, 2),
        ("Трансмерный карманный сервер", "compactmachines3:machine:5", "compactmachines3:machine:5", 1, 17, 0),
        ("Магнитный шлюз передачи ресурсов", "compactmachines3:tunnel:0", "compactmachines3:tunnel:0", 8, 17, 1),
        ("Квантовая карманная база в одном блоке", "compactmachines3:psd", "compactmachines3:psd", 1, 18, 0),
        ("Владыка Измерений и Хранилищ", "compactmachines3:machine:5", "compactmachines3:machine:5", 1, 19, 0)
    ]

    for idx, (sname, icon_id, task_id, cnt, c, r) in enumerate(storage_nodes):
        q_ch32.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 1 or idx == 4 or idx == 15 or idx == 16 or idx == 30 or idx == 35 or idx == 42),
            "name": sname,
            "desc": f"Системы хранения и карманные измерения: {sname}. Iron Chests, сеть Storage Drawers с контроллером и компактные комнаты 13x13x13 Compact Machines.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("storagedrawers:upgrade_storage:3", 2), ("storagedrawers:upgrade_void", 2)],
            "xp": 350, "loot_tier": 2 if idx < 30 else 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [8, 12, 18, 30, 35] else []
        })

    chapters.append(build_chapter(
        line_id=32, order=32,
        line_name="Глава 32: Хранилища и Измерения: Storage Drawers & Compact Machines",
        line_desc="Железные и алмазные сундуки, сеть ящиков Storage Drawers с автопрессовкой, Ender Chests и карманные миры Compact Machines.",
        line_icon_spec=("compactmachines3:psd", 1),
        base_qid=1600, quest_specs=q_ch32
    ))

    # =========================================================================
    # CHAPTER 33: Зал Славы и Великих Испытаний (QIDs 1655-1704, 50 quests)
    # =========================================================================
    q_ch33 = []
    hall_nodes = [
        ("Врата Зала Славы Nexus Crucible", "contenttweaker:fired_foundation", "contenttweaker:fired_foundation", 1, 0, 0),
        ("Испытание s00: Первобытная стойкость", "contenttweaker:fired_foundation", "contenttweaker:fired_foundation", 1, 1, 0),
        ("Испытание s01: Владычество над Паром", "contenttweaker:pressure_assembly", "contenttweaker:pressure_assembly", 1, 2, 0),
        ("Испытание s02: Пробуждение Природы", "contenttweaker:living_conductor", "contenttweaker:living_conductor", 1, 3, 0),
        ("Испытание s03: Мощь Электромеханики", "contenttweaker:insulated_industrial_core", "contenttweaker:insulated_industrial_core", 1, 4, 0),
        ("Испытание s04: Индустриальная Химия", "contenttweaker:alchemical_machine_frame", "contenttweaker:alchemical_machine_frame", 1, 5, 0),
        ("Испытание s05: Арканная Инженерия", "contenttweaker:runic_logic_core", "contenttweaker:runic_logic_core", 1, 6, 0),
        ("Испытание s06: Цифровой Разум Фабрики", "contenttweaker:distributed_control_matrix", "contenttweaker:distributed_control_matrix", 1, 7, 0),
        ("Испытание s07: Квантовое Расщепление", "contenttweaker:stabilized_quantum_substrate", "contenttweaker:stabilized_quantum_substrate", 1, 8, 0),
        ("Испытание s08: Небесный Синтез Эфира", "contenttweaker:celestial_binding_matrix", "contenttweaker:celestial_binding_matrix", 1, 9, 0),
        ("Испытание s09: Звездная Сингулярность", "contenttweaker:nexus_singularity", "contenttweaker:nexus_singularity", 1, 10, 0),
        ("Испытание s10: Великая Конвергенция", "contenttweaker:convergence_core", "contenttweaker:convergence_core", 1, 11, 0),
        ("Трофей: Повелитель Наги", "twilightforest:trophy:0", "twilightforest:trophy:0", 1, 2, 1),
        ("Трофей: Победитель Лича", "twilightforest:trophy:1", "twilightforest:trophy:1", 1, 3, 1),
        ("Трофей: Покоритель Гидры", "twilightforest:trophy:2", "twilightforest:trophy:2", 1, 4, 1),
        ("Трофей: Слезы Ур-Гаста", "twilightforest:trophy:3", "twilightforest:trophy:3", 1, 5, 1),
        ("Трофей: Снежная Королева", "twilightforest:trophy:5", "twilightforest:trophy:5", 1, 6, 1),
        ("Трофей: Грибной Минотавр", "twilightforest:trophy:6", "twilightforest:trophy:6", 1, 7, 1),
        ("Трофей: Сердце Огненного Дракона", "iceandfire:fire_dragon_heart", "iceandfire:fire_dragon_heart", 1, 8, 1),
        ("Трофей: Сердце Ледяного Дракона", "iceandfire:ice_dragon_heart", "iceandfire:ice_dragon_heart", 1, 9, 1),
        ("Трофей: Страж Гайи I Пал", "botania:manaresource:5", "botania:manaresource:5", 4, 3, -1),
        ("Трофей: Страж Гайи II Низвергнут", "botania:manaresource:5", "botania:manaresource:5", 16, 4, -1),
        ("Трофей: Кости Судьбы Богов", "botania:dice", "botania:dice", 1, 5, -1),
        ("Трофей: Первородная Жемчужина Тауматурга", "thaumcraft:primordial_pearl", "thaumcraft:primordial_pearl", 1, 6, -1),
        ("Трофей: Око Древнего Стража", "thaumcraft:eldritch_eye", "thaumcraft:eldritch_eye", 1, 7, -1),
        ("Трофей: Архимагическая Кровавая Сфера", "bloodmagic:blood_orb", "bloodmagic:blood_orb", 1, 8, -1),
        ("Трофей: Демонический Осколок Преисподней", "bloodmagic:blood_shard:1", "bloodmagic:blood_shard:1", 4, 9, -1),
        ("Трофей: Осколок Хаоса Дракона", "draconicevolution:chaos_shard", "draconicevolution:chaos_shard", 4, 10, -1),
        ("Трофей: Сердце Дракона Края", "draconicevolution:dragon_heart", "draconicevolution:dragon_heart", 1, 11, -1),
        ("Испытание Богатства: 1 000 000 Железа", "minecraft:iron_ingot", "minecraft:iron_ingot", 64, 12, 1),
        ("Испытание Богатства: 500 000 Золота", "minecraft:gold_ingot", "minecraft:gold_ingot", 64, 13, 1),
        ("Испытание Богатства: 100 000 Алмазов", "minecraft:diamond", "minecraft:diamond", 64, 14, 1),
        ("Испытание Богатства: 50 000 Изумрудов", "minecraft:emerald", "minecraft:emerald", 64, 15, 1),
        ("Испытание Богатства: 10 000 Звезд Незера", "minecraft:nether_star", "minecraft:nether_star", 64, 16, 1),
        ("Испытание Энергии: Хранилище 2.14 Триллиона RF", "draconicevolution:energy_storage_core", "draconicevolution:energy_storage_core", 1, 12, -1),
        ("Испытание Скорости: 1 000 000 Предметов/мин в AE2", "appliedenergistics2:controller", "appliedenergistics2:controller", 1, 13, -1),
        ("Испытание Пространства: 64 Комнаты Compact Machines", "compactmachines3:psd", "compactmachines3:psd", 1, 14, -1),
        ("Испытание Времени: 400 Часов в Мире", "minecraft:clock", "minecraft:clock", 1, 15, -1),
        ("Трофей: Крушитель Миров World Breaker", "avaritia:infinity_pickaxe", "avaritia:infinity_pickaxe", 1, 12, 0),
        ("Трофей: Меч Космоса Sword of the Cosmos", "avaritia:infinity_sword", "avaritia:infinity_sword", 1, 13, 0),
        ("Трофей: Лук Небес Longbow of the Heavens", "avaritia:infinity_bow", "avaritia:infinity_bow", 1, 14, 0),
        ("Трофей: Разрушитель Природы Nature's Ruin", "avaritia:infinity_axe", "avaritia:infinity_axe", 1, 15, 0),
        ("Трофей: Пожиратель Планет Planet Eater", "avaritia:infinity_shovel", "avaritia:infinity_shovel", 1, 16, 0),
        ("Трофей: Шлем Бесконечного Разума", "avaritia:infinity_helmet", "avaritia:infinity_helmet", 1, 17, -1),
        ("Трофей: Кираса Бесконечной Неуязвимости", "avaritia:infinity_chestplate", "avaritia:infinity_chestplate", 1, 17, 0),
        ("Трофей: Поножи Бесконечной Стойкости", "avaritia:infinity_pants", "avaritia:infinity_pants", 1, 17, 1),
        ("Трофей: Ботинки Бесконечной Скорости", "avaritia:infinity_boots", "avaritia:infinity_boots", 1, 17, 2),
        ("Полный Комплект Абсолютного Бога", "avaritia:infinity_chestplate", "avaritia:infinity_chestplate", 1, 18, 0),
        ("Золотой Монумент Триумфатора", "contenttweaker:convergence_core", "contenttweaker:convergence_core", 1, 19, 0),
        ("Легенда Nexus Crucible — Завершение Игры", "contenttweaker:convergence_core", "contenttweaker:convergence_core", 1, 20, 0)
    ]

    for idx, (hname, icon_id, task_id, cnt, c, r) in enumerate(hall_nodes):
        is_end = (idx == 48 or idx == 49)
        q_ch33.append({
            "id": idx, "col": c, "row": r, "is_main": (idx in [0, 1, 11, 27, 38, 39, 47, 48, 49]),
            "name": hname,
            "desc": f"Зал Славы и Великих Испытаний: {hname}. Подтверждение покорения всех стадий, победы над всеми мировыми боссами, накопления колоссальных богатств и абсолютного триумфа в Nexus Crucible.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("avaritia:resource:4", 8), ("avaritia:resource:5", 2)],
            "xp": 1000 if not is_end else 50000,
            "loot_tier": 4,
            "prereqs": [idx - 1] if idx > 0 and idx not in [12, 20, 29, 34, 38, 43] else []
        })

    chapters.append(build_chapter(
        line_id=33, order=33,
        line_name="Глава 33: Зал Славы и Великих Испытаний: Nexus Crucible Master",
        line_desc="Трофеи всех боссов, 11 стадий мастерства, колоссальные испытания богатства и Зал Славы Абсолютного Бога.",
        line_icon_spec=("contenttweaker:convergence_core", 1),
        base_qid=1655, quest_specs=q_ch33
    ))

    return chapters
