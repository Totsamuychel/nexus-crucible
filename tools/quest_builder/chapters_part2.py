#!/usr/bin/env python3
"""
Nexus Crucible - Quest Chapters Part 2 (Chapters 8-15, QIDs 400-799)
Chapters:
  8: Астральное Вознесение: Astral Sorcery — Ритуалы
  9: Энергия RF: Thermal Expansion
  10: Продвинутые Апгрейды: Thermal & Redstone Arsenal
  11: Атомная Реконструкция: Actually Additions
  12: Алхимия Крови: Blood Magic — Жертвоприношения
  13: Демоническая Воля: Blood Magic & Animus
  14: Древние Тайны: Thaumcraft 6 — Аспекты и Теория
  15: Тауматургия и Големы: Thaumcraft 6 — Инфузия
"""

from .common import build_chapter

def get_chapters_part2():
    chapters = []

    # =========================================================================
    # CHAPTER 8: Астральное Вознесение: Astral Sorcery — Ритуалы (QIDs 400-449)
    # =========================================================================
    q_ch8 = []
    as_adv_nodes = [
        ("Алтарь сонастройки (Attunement Altar)", "astralsorcery:blockattunementaltar", "astralsorcery:blockattunementaltar", 1, 0, 0),
        ("Спектральное реле сонастройки", "astralsorcery:blockattunementrelay", "astralsorcery:blockattunementrelay", 4, 1, 0),
        ("Сонастройка игрока с созвездием", "astralsorcery:itemjournal", "astralsorcery:itemjournal", 1, 2, 0),
        ("Астральное древо навыков (Perk Tree)", "astralsorcery:itemperkseal", "astralsorcery:itemperkseal", 1, 3, 0),
        ("Стеклянный шар судьбы (Glass Lens)", "astralsorcery:itemcraftingcomponent:3", "astralsorcery:itemcraftingcomponent:3", 4, 3, 1),
        ("Печать сброса навыков", "astralsorcery:itemperkseal", "astralsorcery:itemperkseal", 1, 4, 1),
        ("Сонастройка кристалла скалы", "astralsorcery:itemrockcrystalsimple", "astralsorcery:itemrockcrystalsimple", 1, 4, 0),
        ("Ритуальный постамент (Ritual Pedestal)", "astralsorcery:blockritualpedestal", "astralsorcery:blockritualpedestal", 1, 5, 0),
        ("Ритуал: Дискадия (Урон и Ярость)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 6, -1),
        ("Ритуал: Армара (Неуязвимость)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 6, 0),
        ("Ритуал: Эвицио (Ускорение роста)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 6, 1),
        ("Ритуал: Ворче (Сверхскорость и полет)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 7, -1),
        ("Ритуал: Луцелла (Абсолютное освещение)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 7, 0),
        ("Ритуал: Минералис (Трансмутация руд)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 7, 1),
        ("Ритуал: Бувидар (Стада и фермерство)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 8, 1),
        ("Ритуал: Горологиум (Остановка времени)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 8, 0),
        ("Фокусирующая линза ритуала", "astralsorcery:blocklens", "astralsorcery:blocklens", 4, 8, -1),
        ("Астральные врата телепортации", "astralsorcery:blockcelestialgateway", "astralsorcery:blockcelestialgateway", 2, 9, 0),
        ("Сеть врат между базами и мирами", "astralsorcery:blockcelestialgateway", "astralsorcery:blockcelestialgateway", 1, 10, 0),
        ("Звездный резонатор сущностей", "astralsorcery:itemskyresonator:0", "astralsorcery:itemskyresonator:0", 1, 5, -2),
        ("Мантия созвездий (Mantle of Stars)", "astralsorcery:itemcape", "astralsorcery:itemcape", 1, 9, -1),
        ("Мантия Ворче (Творческий полет)", "astralsorcery:itemcape", "astralsorcery:itemcape", 1, 10, -1),
        ("Мантия Дискадии (Отражение урона)", "astralsorcery:itemcape", "astralsorcery:itemcape", 1, 10, -2),
        ("Мантия Армары (Абсолютный щит)", "astralsorcery:itemcape", "astralsorcery:itemcape", 1, 11, -1),
        ("Обсерватория Астрала (Observatory)", "astralsorcery:blockobservatory", "astralsorcery:blockobservatory", 1, 11, 0),
        ("Слабые созвездия дальнего космоса", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 12, 0),
        ("Созвездие: Пелатрикс (Pelotris)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 12, 1),
        ("Созвездие: Гелу (Gelu)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 12, -1),
        ("Созвездие: Ульгард (Ulgar)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 13, 0),
        ("Сияющий алтарь (Radiant Altar T4)", "astralsorcery:blockaltar:3", "astralsorcery:blockaltar:3", 1, 13, 1),
        ("Резонирующий звездный самоцвет", "astralsorcery:itemcraftingcomponent:4", "astralsorcery:itemcraftingcomponent:4", 4, 14, 0),
        ("Камера насыщения звездным светом", "astralsorcery:blockwell", "astralsorcery:blockwell", 1, 9, 2),
        ("Звездный трансмогрификатор", "astralsorcery:blocktransmutation", "astralsorcery:blocktransmutation", 1, 10, 2),
        ("Печать сбора маны и света", "astralsorcery:itemperkseal", "astralsorcery:itemperkseal", 1, 11, 2),
        ("Кристальный бур бесконечности", "astralsorcery:itemcrystalpickaxe", "astralsorcery:itemcrystalpickaxe", 1, 12, 2),
        ("Астральная звездная наковальня", "astralsorcery:blockmapdrawingtable", "astralsorcery:blockmapdrawingtable", 1, 13, 2),
        ("Небесный резонатор мыслей", "astralsorcery:itemskyresonator:0", "astralsorcery:itemskyresonator:0", 1, 14, 1),
        ("Призма бесконечного фокуса", "astralsorcery:blockprism", "astralsorcery:blockprism", 2, 14, 2),
        ("Коллектор звездного света", "astralsorcery:blockcollectorcrystal", "astralsorcery:blockcollectorcrystal", 1, 15, 0),
        ("Улучшенный кристалл небес 100/100", "astralsorcery:itemcelestialcrystal", "astralsorcery:itemcelestialcrystal", 1, 15, 1),
        ("Звездный резонатор материи", "astralsorcery:itemcraftingcomponent:4", "astralsorcery:itemcraftingcomponent:4", 8, 15, 2),
        ("Мантия Эвицио (Регенерация жизни)", "astralsorcery:itemcape", "astralsorcery:itemcape", 1, 11, -2),
        ("Мантия Луцеллы (Ночное зрение)", "astralsorcery:itemcape", "astralsorcery:itemcape", 1, 12, -2),
        ("Астральное зелье звездного очищения", "astralsorcery:itemusabledust:0", "astralsorcery:itemusabledust:0", 4, 13, -1),
        ("Созвездие: Алкара (Alcara)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 14, -1),
        ("Созвездие: Вориксис (Vorux)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 15, -1),
        ("Алтарь сияния высшего тира", "astralsorcery:blockaltar:3", "astralsorcery:blockaltar:3", 1, 16, 0),
        ("Кристальный фокус первородного света", "astralsorcery:itemcraftingcomponent:4", "astralsorcery:itemcraftingcomponent:4", 16, 16, 1),
        ("Небесная связующая матрица (Гейт s08)", "contenttweaker:celestial_binding_matrix", "contenttweaker:celestial_binding_matrix", 1, 17, 0),
        ("Архитектор Звездных Сфер", "astralsorcery:blockaltar:3", "astralsorcery:blockaltar:3", 1, 18, 0)
    ]

    for idx, (aname, icon_id, task_id, cnt, c, r) in enumerate(as_adv_nodes):
        is_gate = (idx == 48)
        q_ch8.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 7 or idx == 17 or idx == 24 or idx == 29 or is_gate),
            "name": aname,
            "desc": f"Высшие ритуалы Astral Sorcery: {aname}. Алтарь сонастройки, обсерватория, мантии созвездий и небесная матрица.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("astralsorcery:itemcraftingcomponent:4", 2), ("astralsorcery:itemcraftingcomponent:2", 8)],
            "xp": 350 if not is_gate else 800,
            "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [20, 31, 41] else [],
            "command": "/gamestage add VAR_NAME s09_stellar_engineering" if is_gate else None,
            "command_desc": "Переход в эпоху звездной инженерии (s09_stellar_engineering)" if is_gate else None
        })

    chapters.append(build_chapter(
        line_id=8, order=8,
        line_name="Глава 8: Астральное Вознесение: Astral Sorcery — Ритуалы",
        line_desc="Алтарь сонастройки, ритуальные постаменты, мантии созвездий, обсерватория и сияющий алтарь T4.",
        line_icon_spec=("astralsorcery:itemcraftingcomponent:4", 1),
        base_qid=400, quest_specs=q_ch8
    ))

    # =========================================================================
    # CHAPTER 9: Энергия RF: Thermal Expansion (QIDs 450-499)
    # =========================================================================
    q_ch9 = []
    te_nodes = [
        ("Базовый каркас механизма", "thermalexpansion:frame:0", "thermalexpansion:frame:0", 1, 0, 0),
        ("Медная катушка приема Redstone Flux", "thermalfoundation:material:512", "thermalfoundation:material:512", 4, 1, 0),
        ("Электромагнитная катушка передачи", "thermalfoundation:material:513", "thermalfoundation:material:513", 4, 1, 1),
        ("Паровое динамо (Steam Dynamo)", "thermalexpansion:dynamo:0", "thermalexpansion:dynamo:0", 1, 2, 0),
        ("Магматическое динамо", "thermalexpansion:dynamo:1", "thermalexpansion:dynamo:1", 1, 2, 1),
        ("Компрессионное динамо на топливе", "thermalexpansion:dynamo:2", "thermalexpansion:dynamo:2", 1, 2, -1),
        ("Энергетическая ячейка Leadstone", "thermalexpansion:cell", "thermalexpansion:cell", 1, 3, 0),
        ("Красная печь (Redstone Furnace)", "thermalexpansion:machine:0", "thermalexpansion:machine:0", 1, 4, 0),
        ("Измельчитель (Pulverizer)", "thermalexpansion:machine:1", "thermalexpansion:machine:1", 1, 4, 1),
        ("Пиролитический шлак и песок", "thermalfoundation:material:864", "thermalfoundation:material:864", 16, 5, 1),
        ("Индукционная плавильня (Induction Smelter)", "thermalexpansion:machine:3", "thermalexpansion:machine:3", 1, 4, -1),
        ("Инварный сплав (Invar Ingot)", "thermalfoundation:material:162", "thermalfoundation:material:162", 16, 5, -1),
        ("Центробежный сепаратор (Centrifuge)", "thermalexpansion:machine:10", "thermalexpansion:machine:10", 1, 5, 0),
        ("Фракционный перегонный куб", "thermalexpansion:machine:7", "thermalexpansion:machine:7", 1, 6, 0),
        ("Жидкостный распределитель (Fluid Transposer)", "thermalexpansion:machine:8", "thermalexpansion:machine:8", 1, 6, 1),
        ("Эндериумная пыль", "thermalfoundation:material:101", "thermalfoundation:material:101", 8, 7, 1),
        ("Слиток Эндериума (Enderium Ingot)", "thermalfoundation:material:167", "thermalfoundation:material:167", 8, 8, 1),
        ("Люмиумный сплав (Lumium Ingot)", "thermalfoundation:material:166", "thermalfoundation:material:166", 8, 7, 0),
        ("Сигналиумный сплав (Signalum Ingot)", "thermalfoundation:material:165", "thermalfoundation:material:165", 8, 7, -1),
        ("Труба передачи предметов (Itemduct)", "thermaldynamics:duct_32:0", "thermaldynamics:duct_32:0", 16, 5, 2),
        ("Труба передачи жидкостей (Fluiduct)", "thermaldynamics:duct_16:0", "thermaldynamics:duct_16:0", 16, 6, 2),
        ("Энергетическая труба (Fluxduct)", "thermaldynamics:duct_0:0", "thermaldynamics:duct_0:0", 16, 7, 2),
        ("Базовый сервопривод (Servo)", "thermalfoundation:material:512", "thermalfoundation:material:512", 4, 8, 2),
        ("Фильтр предметов (Filter)", "thermalfoundation:material:512", "thermalfoundation:material:512", 4, 9, 2),
        ("Резонаторный сервопривод Resonant", "thermalfoundation:material:512", "thermalfoundation:material:512", 2, 10, 2),
        ("Энергетическая ячейка Hardened", "thermalexpansion:cell", "thermalexpansion:cell", 1, 8, 0),
        ("Энергетическая ячейка Reinforced", "thermalexpansion:cell", "thermalexpansion:cell", 1, 9, 0),
        ("Энергетическая ячейка Signalum", "thermalexpansion:cell", "thermalexpansion:cell", 1, 10, 0),
        ("Энергетическая ячейка Resonant (50M RF)", "thermalexpansion:cell", "thermalexpansion:cell", 1, 11, 0),
        ("Резервуар для жидкостей Resonant", "thermalexpansion:tank", "thermalexpansion:tank", 1, 11, 1),
        ("Транслокатор предметов", "thermalexpansion:device:3", "thermalexpansion:device:3", 1, 9, -1),
        ("Транслокатор жидкостей", "thermalexpansion:device:3", "thermalexpansion:device:3", 1, 10, -1),
        ("Водный аккумулятор (Aqueous Accumulator)", "thermalexpansion:device:0", "thermalexpansion:device:0", 1, 8, -2),
        ("Ледниковый осадитель (Glacial Precipitator)", "thermalexpansion:device:1", "thermalexpansion:device:1", 1, 9, -2),
        ("Извергатель лавы (Igneous Extruder)", "thermalexpansion:device:2", "thermalexpansion:device:2", 1, 10, -2),
        ("Верстак автокрафта (Sequential Fabricator)", "thermalexpansion:machine:11", "thermalexpansion:machine:11", 1, 11, -1),
        ("Морозильный криотек (Cryotheum Dust)", "thermalfoundation:material:1025", "thermalfoundation:material:1025", 8, 12, 1),
        ("Огненный пиротек (Pyrotheum Dust)", "thermalfoundation:material:1024", "thermalfoundation:material:1024", 8, 12, 0),
        ("Аэротек пыль (Aerotheum Dust)", "thermalfoundation:material:1026", "thermalfoundation:material:1026", 8, 12, -1),
        ("Петротек пыль (Petrotheum Dust)", "thermalfoundation:material:1027", "thermalfoundation:material:1027", 8, 13, -1),
        ("Криогенный охладитель реакторов", "thermalfoundation:material:1025", "thermalfoundation:material:1025", 16, 13, 1),
        ("Криогенная энергетическая труба", "thermaldynamics:duct_0:5", "thermaldynamics:duct_0:5", 8, 13, 2),
        ("Сверхпроводящий флаксдакт (Бесконечный RF/t)", "thermaldynamics:duct_0:5", "thermaldynamics:duct_0:5", 8, 14, 2),
        ("Каркас резонирующего механизма", "thermalexpansion:frame:1", "thermalexpansion:frame:1", 1, 13, 0),
        ("Модуль расширения: Вспомогательное сито", "thermalexpansion:augment:128", "thermalexpansion:augment:128", 1, 14, 0),
        ("Модуль расширения: Тройной разгон скорости", "thermalexpansion:augment:129", "thermalexpansion:augment:129", 1, 14, 1),
        ("Изолированный индустриальный сердечник (Гейт s03)", "contenttweaker:insulated_industrial_core", "contenttweaker:insulated_industrial_core", 1, 15, 0),
        ("Магнат Тепловой Энергии", "thermalexpansion:cell", "thermalexpansion:cell", 1, 16, 0)
    ]

    for idx, (tname, icon_id, task_id, cnt, c, r) in enumerate(te_nodes):
        is_gate = (idx == 46)
        q_ch9.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 7 or idx == 10 or idx == 16 or idx == 28 or is_gate),
            "name": tname,
            "desc": f"Энергетические механизмы Thermal Expansion: {tname}. Постройте автоматизированный завод, сплавляйте эндериум и разгоняйте машины модулями.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("thermalfoundation:material:162", 8), ("thermalfoundation:material:167", 4)],
            "xp": 250 if not is_gate else 500,
            "loot_tier": 2 if idx < 30 else 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [19, 30, 36] else [],
            "command": "/gamestage add VAR_NAME s04_industrial_chemistry" if is_gate else None,
            "command_desc": "Переход в эпоху индустриальной химии (s04_industrial_chemistry)" if is_gate else None
        })

    chapters.append(build_chapter(
        line_id=9, order=9,
        line_name="Глава 9: Энергия RF: Thermal Expansion",
        line_desc="Базовые каркасы, динамо-генераторы, индукционные плавильни, эндериум, флюксдукты и модули расширения.",
        line_icon_spec=("thermalexpansion:frame:0", 1),
        base_qid=450, quest_specs=q_ch9
    ))

    # =========================================================================
    # CHAPTER 10: Продвинутые Апгрейды: Thermal & Redstone Arsenal (QIDs 500-549)
    # =========================================================================
    q_ch10 = []
    ra_nodes = [
        ("Флаксовый слиток (Fluxed Electrum)", "redstonearsenal:material:32", "redstonearsenal:material:32", 8, 0, 0),
        ("Флаксовая пластина", "redstonearsenal:material:128", "redstonearsenal:material:128", 4, 1, 0),
        ("Флаксовый стержень", "redstonearsenal:material:192", "redstonearsenal:material:192", 4, 1, 1),
        ("Флаксовый меч (Flux-Infused Sword)", "redstonearsenal:tool.sword_flux", "redstonearsenal:tool.sword_flux", 1, 2, 0),
        ("Флаксовая кирка (Flux-Infused Pickaxe)", "redstonearsenal:tool.pickaxe_flux", "redstonearsenal:tool.pickaxe_flux", 1, 2, 1),
        ("Флаксовая лопата", "redstonearsenal:tool.shovel_flux", "redstonearsenal:tool.shovel_flux", 1, 2, -1),
        ("Флаксовый топор", "redstonearsenal:tool.axe_flux", "redstonearsenal:tool.axe_flux", 1, 3, 0),
        ("Флаксовый боевой серп (Sickle)", "redstonearsenal:tool.sickle_flux", "redstonearsenal:tool.sickle_flux", 1, 3, 1),
        ("Флаксовый лук (Flux-Infused Bow)", "redstonearsenal:tool.bow_flux", "redstonearsenal:tool.bow_flux", 1, 3, -1),
        ("Флаксовый боевой молот (Hammer 3x3)", "redstonearsenal:tool.hammer_flux", "redstonearsenal:tool.hammer_flux", 1, 4, 0),
        ("Флаксовый экскаватор (Excavator 3x3)", "redstonearsenal:tool.excavator_flux", "redstonearsenal:tool.excavator_flux", 1, 4, 1),
        ("Флаксовый боевой ключ (BattleWrench)", "redstonearsenal:tool.battlewrench_flux", "redstonearsenal:tool.battlewrench_flux", 1, 4, -1),
        ("Флаксовый шлем", "redstonearsenal:armor.helmet_flux", "redstonearsenal:armor.helmet_flux", 1, 5, -1),
        ("Флаксовый нагрудник", "redstonearsenal:armor.plate_flux", "redstonearsenal:armor.plate_flux", 1, 5, 0),
        ("Флаксовые поножи", "redstonearsenal:armor.legs_flux", "redstonearsenal:armor.legs_flux", 1, 5, 1),
        ("Флаксовые сапоги", "redstonearsenal:armor.boots_flux", "redstonearsenal:armor.boots_flux", 1, 5, 2),
        ("Энергетический щит костюма", "redstonearsenal:armor.plate_flux", "redstonearsenal:armor.plate_flux", 1, 6, 0),
        ("Зарядное устройство Flux Capacitor", "thermalexpansion:capacitor:0", "thermalexpansion:capacitor:0", 1, 6, 1),
        ("Продвинутый Flux Capacitor Reinforced", "thermalexpansion:capacitor:2", "thermalexpansion:capacitor:2", 1, 7, 1),
        ("Резонирующий Flux Capacitor (25M RF)", "thermalexpansion:capacitor:4", "thermalexpansion:capacitor:4", 1, 8, 1),
        ("Флаксовый колчан бесконечных стрел", "redstonearsenal:tool.bow_flux", "redstonearsenal:tool.bow_flux", 1, 7, -1),
        ("Модуль расширения: Пространственная индукция", "thermalexpansion:augment:256", "thermalexpansion:augment:256", 1, 7, 0),
        ("Модуль расширения: Вторичная пиро-обработка", "thermalexpansion:augment:257", "thermalexpansion:augment:257", 1, 8, 0),
        ("Модуль расширения: Избыточный крутящий момент", "thermalexpansion:augment:258", "thermalexpansion:augment:258", 1, 9, 0),
        ("Модуль расширения: Турбокомпрессия RF", "thermalexpansion:augment:259", "thermalexpansion:augment:259", 1, 10, 0),
        ("Слиток гель-эндериума", "redstonearsenal:material:32", "redstonearsenal:material:32", 16, 9, 1),
        ("Закаленное стекло Thermal", "thermalfoundation:glass:0", "thermalfoundation:glass:0", 16, 8, -1),
        ("Закаленное стекло с эндериумом", "thermalfoundation:glass_alloy:7", "thermalfoundation:glass_alloy:7", 16, 9, -1),
        ("Флаксовый аннигилятор материи", "redstonearsenal:tool.hammer_flux", "redstonearsenal:tool.hammer_flux", 1, 10, 1),
        ("Кольцо магнита Redstone Baubles", "redstonearsenal:ring", "redstonearsenal:ring", 1, 10, -1),
        ("Амулет защиты от лавы", "redstonearsenal:ring", "redstonearsenal:ring", 1, 11, -1),
        ("Флаксовый пояс ускорения", "redstonearsenal:ring", "redstonearsenal:ring", 1, 11, 0),
        ("Портативный верстак инженера", "thermalexpansion:tool_cards", "thermalexpansion:tool_cards", 1, 11, 1),
        ("Энергетический ранец Flux Pack", "redstonearsenal:armor.plate_flux", "redstonearsenal:armor.plate_flux", 1, 12, 0),
        ("Сверхплотный накопитель 100M RF", "thermalexpansion:cell", "thermalexpansion:cell", 1, 12, 1),
        ("Квантовый индуктор передачи энергии", "thermaldynamics:duct_0:5", "thermaldynamics:duct_0:5", 16, 13, 0),
        ("Термальная супер-катушка", "thermalfoundation:material:513", "thermalfoundation:material:513", 8, 13, 1),
        ("Сплав платины и иридия", "thermalfoundation:material:167", "thermalfoundation:material:167", 8, 13, -1),
        ("Нано-покрытие флаксового костюма", "redstonearsenal:armor.plate_flux", "redstonearsenal:armor.plate_flux", 1, 14, 0),
        ("Флаксовый деструктор измерений", "redstonearsenal:tool.battlewrench_flux", "redstonearsenal:tool.battlewrench_flux", 1, 14, 1),
        ("Катализатор плазменной резки", "thermalexpansion:augment:258", "thermalexpansion:augment:258", 1, 14, -1),
        ("Резонирующий комплект экипировки", "redstonearsenal:armor.plate_flux", "redstonearsenal:armor.plate_flux", 1, 15, 0),
        ("Флаксовый арсенал полного превосходства", "redstonearsenal:tool.sword_flux", "redstonearsenal:tool.sword_flux", 1, 15, 1),
        ("Индукционный плазменный регенератор", "thermalexpansion:machine:3", "thermalexpansion:machine:3", 1, 15, -1),
        ("Сверхпроводящая флаксовая броня", "redstonearsenal:armor.plate_flux", "redstonearsenal:armor.plate_flux", 1, 16, 0),
        ("Мастер Флаксового Вооружения", "redstonearsenal:tool.hammer_flux", "redstonearsenal:tool.hammer_flux", 1, 17, 0)
    ]

    for idx, (rname, icon_id, task_id, cnt, c, r) in enumerate(ra_nodes):
        q_ch10.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 3 or idx == 13 or idx == 19),
            "name": rname,
            "desc": f"Энергетическое вооружение Redstone Arsenal: {rname}. Флаксовые инструменты 3x3, броня с силовым щитом и бездонные накопители RF.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("redstonearsenal:material:32", 4), ("thermalfoundation:material:167", 2)],
            "xp": 300, "loot_tier": 2 if idx < 20 else 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [12, 21, 29] else []
        })

    chapters.append(build_chapter(
        line_id=10, order=10,
        line_name="Глава 10: Продвинутые Апгрейды: Thermal & Redstone Arsenal",
        line_desc="Флаксовый электрум, разрушительные молоты 3x3, силовая броня с подпиткой от RF и резонирующие конденсаторы.",
        line_icon_spec=("redstonearsenal:tool.sword_flux", 1),
        base_qid=500, quest_specs=q_ch10
    ))

    # =========================================================================
    # CHAPTER 11: Атомная Реконструкция: Actually Additions (QIDs 550-599)
    # =========================================================================
    q_ch11 = []
    aa_nodes = [
        ("Атомный реконструктор (Atomic Reconstructor)", "actuallyadditions:block_atomic_reconstructor", "actuallyadditions:block_atomic_reconstructor", 1, 0, 0),
        ("Линза реконструктора (Lens of Color)", "actuallyadditions:item_misc:18", "actuallyadditions:item_misc:18", 1, 0, 1),
        ("Линза детонации (Lens of Detonation)", "actuallyadditions:item_misc:19", "actuallyadditions:item_misc:19", 1, 0, -1),
        ("Кристалл Рестонии (Restonia Crystal)", "actuallyadditions:item_crystal:0", "actuallyadditions:item_crystal:0", 8, 1, 0),
        ("Кристалл Палиса (Palis Crystal)", "actuallyadditions:item_crystal:1", "actuallyadditions:item_crystal:1", 8, 1, 1),
        ("Кристалл Диаматина (Diamatine Crystal)", "actuallyadditions:item_crystal:2", "actuallyadditions:item_crystal:2", 4, 1, -1),
        ("Кристалл Войдита (Void Crystal)", "actuallyadditions:item_crystal:3", "actuallyadditions:item_crystal:3", 8, 2, 0),
        ("Кристалл Эмерадика (Emeradic Crystal)", "actuallyadditions:item_crystal:4", "actuallyadditions:item_crystal:4", 4, 2, 1),
        ("Кристалл Энори (Enori Crystal)", "actuallyadditions:item_crystal:5", "actuallyadditions:item_crystal:5", 8, 2, -1),
        ("Железный каркас механизма AA", "actuallyadditions:block_misc:9", "actuallyadditions:block_misc:9", 2, 3, 0),
        ("Дробитель Actually Additions (Crusher)", "actuallyadditions:block_grinder", "actuallyadditions:block_grinder", 1, 4, 0),
        ("Двойной дробитель (Double Crusher)", "actuallyadditions:block_grinder_double", "actuallyadditions:block_grinder_double", 1, 5, 0),
        ("Энергетический лазер (Laser Relay)", "actuallyadditions:block_laser_relay", "actuallyadditions:block_laser_relay", 4, 4, 1),
        ("Продвинутый лазер Advanced", "actuallyadditions:block_laser_relay_advanced", "actuallyadditions:block_laser_relay_advanced", 4, 5, 1),
        ("Экстремальный лазер Extreme", "actuallyadditions:block_laser_relay_extreme", "actuallyadditions:block_laser_relay_extreme", 2, 6, 1),
        ("Предметный лазерный транспортер", "actuallyadditions:block_laser_relay_item", "actuallyadditions:block_laser_relay_item", 4, 5, 2),
        ("Компас настройки лазеров", "actuallyadditions:item_laser_wrench", "actuallyadditions:item_laser_wrench", 1, 4, 2),
        ("Автоматический фермер (Farmer)", "actuallyadditions:block_farmer", "actuallyadditions:block_farmer", 1, 6, 0),
        ("Автоматический рыболов (Fishing Net)", "actuallyadditions:block_fishing_net", "actuallyadditions:block_fishing_net", 1, 6, -1),
        ("Сборщик предметов (Ranged Collector)", "actuallyadditions:block_ranged_collector", "actuallyadditions:block_ranged_collector", 1, 7, -1),
        ("Генератор биомассы (Bio Reactor)", "actuallyadditions:block_bio_reactor", "actuallyadditions:block_bio_reactor", 1, 7, 0),
        ("Каноническая батарея Single (200k RF)", "actuallyadditions:item_battery", "actuallyadditions:item_battery", 1, 7, 1),
        ("Двойная батарея Double (400k RF)", "actuallyadditions:item_battery_double", "actuallyadditions:item_battery_double", 1, 8, 1),
        ("Тройная батарея Triple (800k RF)", "actuallyadditions:item_battery_triple", "actuallyadditions:item_battery_triple", 1, 9, 1),
        ("Квадро-батарея Quadruple (1.6M RF)", "actuallyadditions:item_battery_quadruple", "actuallyadditions:item_battery_quadruple", 1, 10, 1),
        ("Квинтупл-батарея Quintuple (3.2M RF)", "actuallyadditions:item_battery_quintuple", "actuallyadditions:item_battery_quintuple", 1, 11, 1),
        ("Хранилище энергии Energy Laser", "actuallyadditions:block_energizer", "actuallyadditions:block_energizer", 1, 8, 0),
        ("Разрядник энергии Energy De-Energizer", "actuallyadditions:block_enervator", "actuallyadditions:block_enervator", 1, 9, 0),
        ("Шахтер руд шахты (Miner AA)", "actuallyadditions:block_miner", "actuallyadditions:block_miner", 1, 10, 0),
        ("Буровая установка Drill", "actuallyadditions:item_drill:0", "actuallyadditions:item_drill:0", 1, 8, -1),
        ("Улучшение бура: Скорость I-III", "actuallyadditions:item_drill_upgrade_speed", "actuallyadditions:item_drill_upgrade_speed", 1, 9, -1),
        ("Улучшение бура: Добыча 3x3", "actuallyadditions:item_drill_upgrade_three_by_three", "actuallyadditions:item_drill_upgrade_three_by_three", 1, 10, -1),
        ("Улучшение бура: Шелковое касание", "actuallyadditions:item_drill_upgrade_silk_touch", "actuallyadditions:item_drill_upgrade_silk_touch", 1, 11, -1),
        ("Спавнер мобов Spawner Changer", "actuallyadditions:item_spawner_changer", "actuallyadditions:item_spawner_changer", 1, 11, 0),
        ("Призматический кристалл Prismatic", "actuallyadditions:item_crystal:0", "actuallyadditions:item_crystal:0", 16, 12, 0),
        ("Устройство кормления (Feeder)", "actuallyadditions:block_feeder", "actuallyadditions:block_feeder", 1, 7, -2),
        ("Разрушитель блоков (Breaker)", "actuallyadditions:block_breaker", "actuallyadditions:block_breaker", 1, 8, -2),
        ("Установщик блоков (Placer)", "actuallyadditions:block_placer", "actuallyadditions:block_placer", 1, 9, -2),
        ("Жидкостный лазер Fluid Laser Relay", "actuallyadditions:block_laser_relay_fluids", "actuallyadditions:block_laser_relay_fluids", 4, 6, 2),
        ("Телепорт предметов ESD", "actuallyadditions:block_directional_breaker", "actuallyadditions:block_directional_breaker", 1, 10, 2),
        ("Кофейный автомат (Coffee Machine)", "actuallyadditions:block_coffee_machine", "actuallyadditions:block_coffee_machine", 1, 11, 2),
        ("Чашка эспрессо с эффектами", "actuallyadditions:item_coffee", "actuallyadditions:item_coffee", 4, 12, 2),
        ("Магнитное кольцо Ring of Magnetism", "actuallyadditions:item_supertinyinv", "actuallyadditions:item_supertinyinv", 1, 12, 1),
        ("Кольцо роста культур Ring of Growth", "actuallyadditions:item_supertinyinv", "actuallyadditions:item_supertinyinv", 1, 13, 1),
        ("Кольцо насыщения Ring of Feeding", "actuallyadditions:item_supertinyinv", "actuallyadditions:item_supertinyinv", 1, 13, 0),
        ("Атомарный расщепитель материи", "actuallyadditions:block_atomic_reconstructor", "actuallyadditions:block_atomic_reconstructor", 1, 14, 0),
        ("Индустриальная кристальная матрица", "actuallyadditions:item_crystal:2", "actuallyadditions:item_crystal:2", 16, 14, 1),
        ("Кристальный реактор реконструкции", "actuallyadditions:block_atomic_reconstructor", "actuallyadditions:block_atomic_reconstructor", 1, 15, 0),
        ("Алхимический каркас механизмов (Гейт s04)", "contenttweaker:alchemical_machine_frame", "contenttweaker:alchemical_machine_frame", 1, 16, 0),
        ("Мастер Атомной Реконструкции", "actuallyadditions:block_atomic_reconstructor", "actuallyadditions:block_atomic_reconstructor", 1, 17, 0)
    ]

    for idx, (aname, icon_id, task_id, cnt, c, r) in enumerate(aa_nodes):
        is_gate = (idx == 48)
        q_ch11.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 3 or idx == 10 or idx == 17 or idx == 25 or is_gate),
            "name": aname,
            "desc": f"Атомная трансмутация Actually Additions: {aname}. Реконструкция кристаллов лазерами, беспроводные лазерные сети и буры 3x3.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("actuallyadditions:item_crystal:0", 8), ("actuallyadditions:item_crystal:2", 4)],
            "xp": 300 if not is_gate else 600,
            "loot_tier": 2 if idx < 25 else 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [12, 21, 29, 35] else [],
            "command": "/gamestage add VAR_NAME s05_arcane_engineering" if is_gate else None,
            "command_desc": "Переход в эпоху арканной инженерии (s05_arcane_engineering)" if is_gate else None
        })

    chapters.append(build_chapter(
        line_id=11, order=11,
        line_name="Глава 11: Атомная Реконструкция: Actually Additions",
        line_desc="Атомный реконструктор, цветные лазерные кристаллы, лазерная передача энергии и автофермерство.",
        line_icon_spec=("actuallyadditions:block_atomic_reconstructor", 1),
        base_qid=550, quest_specs=q_ch11
    ))

    # =========================================================================
    # CHAPTER 12: Алхимия Крови: Blood Magic — Жертвоприношения (QIDs 600-649)
    # =========================================================================
    q_ch12 = []
    bm_nodes = [
        ("Кровавый алтарь (Blood Altar T1)", "bloodmagic:altar", "bloodmagic:altar", 1, 0, 0),
        ("Жертвенный кинжал (Sacrificial Dagger)", "bloodmagic:sacrificial_dagger:0", "bloodmagic:sacrificial_dagger:0", 1, 1, 0),
        ("Кинжал возмездия (Dagger of Sacrifice)", "bloodmagic:dagger_of_sacrifice", "bloodmagic:dagger_of_sacrifice", 1, 1, 1),
        ("Слабая кровавая сфера (Weak Blood Orb)", "bloodmagic:blood_orb", "bloodmagic:blood_orb", 1, 2, 0),
        ("Сеть душ (Soul Network)", "bloodmagic:blood_orb", "bloodmagic:blood_orb", 1, 3, 0),
        ("Пустая руна (Blank Rune)", "bloodmagic:blood_rune:0", "bloodmagic:blood_rune:0", 8, 2, 1),
        ("Кровавый алтарь Тир 2", "bloodmagic:altar", "bloodmagic:blood_rune:0", 1, 3, 1),
        ("Руна скорости (Speed Rune)", "bloodmagic:blood_rune:1", "bloodmagic:blood_rune:1", 4, 4, 1),
        ("Руна жертвоприношения (Sacrifice Rune)", "bloodmagic:blood_rune:3", "bloodmagic:blood_rune:3", 4, 4, 2),
        ("Руна самопожертвования (Self-Sacrifice)", "bloodmagic:blood_rune:4", "bloodmagic:blood_rune:4", 4, 4, 0),
        ("Ученик кровавой сферы (Apprentice Orb)", "bloodmagic:blood_orb", "bloodmagic:blood_orb", 1, 5, 0),
        ("Кровавый алтарь Тир 3", "bloodmagic:altar", "bloodmagic:blood_rune:0", 1, 5, 1),
        ("Светящийся камень алтаря", "minecraft:glowstone", "minecraft:glowstone", 4, 6, 1),
        ("Руна увеличенной емкости (Capacity)", "bloodmagic:blood_rune:6", "bloodmagic:blood_rune:6", 4, 6, 2),
        ("Руна дислокации (Dislocation)", "bloodmagic:blood_rune:7", "bloodmagic:blood_rune:7", 4, 6, 0),
        ("Сфера мага крови (Magician Blood Orb)", "bloodmagic:blood_orb", "bloodmagic:blood_orb", 1, 7, 0),
        ("Сигил быстроты (Sigil of Fast Miner)", "bloodmagic:sigil_fast_miner", "bloodmagic:sigil_fast_miner", 1, 3, -1),
        ("Сигил лавы (Lava Sigil)", "bloodmagic:sigil_lava", "bloodmagic:sigil_lava", 1, 4, -1),
        ("Сигил воды (Water Sigil)", "bloodmagic:sigil_water", "bloodmagic:sigil_water", 1, 4, -2),
        ("Сигил воздуха (Air Sigil)", "bloodmagic:sigil_air", "bloodmagic:sigil_air", 1, 5, -1),
        ("Сигил зеленой рощи (Green Grove)", "bloodmagic:sigil_green_grove", "bloodmagic:sigil_green_grove", 1, 5, -2),
        ("Сигил удержания (Holding Sigil)", "bloodmagic:sigil_holding", "bloodmagic:sigil_holding", 1, 6, -1),
        ("Сигил вихря стрел (Whirlwind)", "bloodmagic:sigil_whirlwind", "bloodmagic:sigil_whirlwind", 1, 7, -1),
        ("Алхимический очиститель (Purifier)", "bloodmagic:alchemical_reaction_chamber", "bloodmagic:alchemical_reaction_chamber", 1, 7, 2),
        ("Слабый кристалл активации", "bloodmagic:activation_crystal:0", "bloodmagic:activation_crystal:0", 1, 8, 0),
        ("Камень ритуала (Ritual Stone)", "bloodmagic:ritual_stone:0", "bloodmagic:ritual_stone:0", 16, 8, 1),
        ("Камень мастера ритуалов (Master Stone)", "bloodmagic:ritual_controller", "bloodmagic:ritual_controller", 1, 9, 1),
        ("Жезл прорицания ритуалов", "bloodmagic:ritual_diviner:0", "bloodmagic:ritual_diviner:0", 1, 9, 0),
        ("Ритуал: Водный источник", "bloodmagic:ritual_controller", "bloodmagic:ritual_controller", 1, 10, 0),
        ("Ритуал: Зеленый покров земли", "bloodmagic:ritual_controller", "bloodmagic:ritual_controller", 1, 10, 1),
        ("Ритуал: Кровавое пиршество", "bloodmagic:ritual_controller", "bloodmagic:ritual_controller", 1, 10, -1),
        ("Ритуал: Разрушитель тверди", "bloodmagic:ritual_controller", "bloodmagic:ritual_controller", 1, 11, 0),
        ("Кровавый алтарь Тир 4", "bloodmagic:altar", "bloodmagic:blood_rune:0", 1, 11, 1),
        ("Большой кровавый кирпич", "bloodmagic:blood_rune:0", "bloodmagic:blood_rune:0", 4, 12, 1),
        ("Сфера мастера крови (Master Blood Orb)", "bloodmagic:blood_orb", "bloodmagic:blood_orb", 1, 12, 0),
        ("Сигил телепортации", "bloodmagic:sigil_teleposition", "bloodmagic:sigil_teleposition", 1, 8, -1),
        ("Фокус перемещения блоков", "bloodmagic:teleposer", "bloodmagic:teleposer", 2, 9, -1),
        ("Кровавая лампа освещения", "bloodmagic:blood_light", "bloodmagic:blood_light", 1, 10, -2),
        ("Руна превосходства (Superior Capacity)", "bloodmagic:blood_rune:8", "bloodmagic:blood_rune:8", 4, 12, 2),
        ("Руна шара душ (Orb Rune)", "bloodmagic:blood_rune:9", "bloodmagic:blood_rune:9", 4, 13, 2),
        ("Руна ускорения зарядки", "bloodmagic:blood_rune:10", "bloodmagic:blood_rune:10", 4, 13, 1),
        ("Инкубатор крови мобов", "bloodmagic:incense_altar", "bloodmagic:incense_altar", 1, 11, 2),
        ("Трава благовоний (Incense)", "bloodmagic:path_marker", "bloodmagic:path_marker", 4, 12, 3),
        ("Кровавый алтарь Тир 5", "bloodmagic:altar", "bloodmagic:blood_rune:0", 1, 13, 0),
        ("Сфера Архимага (Archmage Blood Orb)", "bloodmagic:blood_orb", "bloodmagic:blood_orb", 1, 14, 0),
        ("Сигил подавления жидкостей", "bloodmagic:sigil_suppression", "bloodmagic:sigil_suppression", 1, 13, -1),
        ("Сигил призрачного моста", "bloodmagic:sigil_phantom_bridge", "bloodmagic:sigil_phantom_bridge", 1, 14, -1),
        ("Кровавый кристалл эссенции", "bloodmagic:blood_shard:0", "bloodmagic:blood_shard:0", 8, 15, 0),
        ("Истинный Алтарь Крови 100k LP", "bloodmagic:altar", "bloodmagic:altar", 1, 15, 1),
        ("Верховный Магистр Крови", "bloodmagic:blood_orb", "bloodmagic:blood_orb", 1, 16, 0)
    ]

    for idx, (bname, icon_id, task_id, cnt, c, r) in enumerate(bm_nodes):
        q_ch12.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 3 or idx == 10 or idx == 26 or idx == 34 or idx == 44),
            "name": bname,
            "desc": f"Кровавая алхимия Blood Magic: {bname}. Наполнение алтаря жизненной эссенцией, создание сигилов, ритуалов и сфер душ.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("bloodmagic:blood_rune:0", 8), ("minecraft:emerald", 4)],
            "xp": 300, "loot_tier": 2 if idx < 25 else 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [5, 16, 24, 41] else []
        })

    chapters.append(build_chapter(
        line_id=12, order=12,
        line_name="Глава 12: Алхимия Крови: Blood Magic — Жертвоприношения",
        line_desc="Кровавый алтарь Тир I–V, жертвенные кинжалы, сферы душ, сигилы стихий и древние ритуалы.",
        line_icon_spec=("bloodmagic:altar", 1),
        base_qid=600, quest_specs=q_ch12
    ))

    # =========================================================================
    # CHAPTER 13: Демоническая Воля: Blood Magic & Animus (QIDs 650-699)
    # =========================================================================
    q_ch13 = []
    animus_nodes = [
        ("Охота за душами: Snares", "bloodmagic:soul_snare", "bloodmagic:soul_snare", 16, 0, 0),
        ("Сырая демоническая воля (Raw Will)", "bloodmagic:monster_soul:0", "bloodmagic:monster_soul:0", 1, 1, 0),
        ("Камень душ (Tartaric Gem Petty)", "bloodmagic:soul_gem:0", "bloodmagic:soul_gem:0", 1, 2, 0),
        ("Меч демонической жатвы (Sentient Sword)", "bloodmagic:sentient_sword", "bloodmagic:sentient_sword", 1, 3, 0),
        ("Кирка демонической воли", "bloodmagic:sentient_pickaxe", "bloodmagic:sentient_pickaxe", 1, 3, 1),
        ("Лопата демонической воли", "bloodmagic:sentient_shovel", "bloodmagic:sentient_shovel", 1, 3, -1),
        ("Топор демонической воли", "bloodmagic:sentient_axe", "bloodmagic:sentient_axe", 1, 4, 1),
        ("Лук демонической стрелы", "bloodmagic:sentient_bow", "bloodmagic:sentient_bow", 1, 4, -1),
        ("Камень душ Lesser Tartaric Gem", "bloodmagic:soul_gem:1", "bloodmagic:soul_gem:1", 1, 4, 0),
        ("Камень душ Common Tartaric Gem", "bloodmagic:soul_gem:2", "bloodmagic:soul_gem:2", 1, 5, 0),
        ("Камень душ Greater Tartaric Gem (4096 Will)", "bloodmagic:soul_gem:3", "bloodmagic:soul_gem:3", 1, 6, 0),
        ("Демонический тигель (Demon Crucible)", "bloodmagic:demon_crucible", "bloodmagic:demon_crucible", 1, 7, 0),
        ("Демонический кристаллайзер", "bloodmagic:demon_crystallizer", "bloodmagic:demon_crystallizer", 1, 8, 0),
        ("Кристалл воли: Едкая воля (Corrosive)", "bloodmagic:demon_crystal:1", "bloodmagic:demon_crystal:1", 1, 9, 1),
        ("Кристалл воли: Разрушительная (Destructive)", "bloodmagic:demon_crystal:2", "bloodmagic:demon_crystal:2", 1, 9, 0),
        ("Кристалл воли: Мстительная (Vengeful)", "bloodmagic:demon_crystal:3", "bloodmagic:demon_crystal:3", 1, 9, -1),
        ("Кристалл воли: Стойкая (Steadfast)", "bloodmagic:demon_crystal:4", "bloodmagic:demon_crystal:4", 1, 10, 0),
        ("Шпиль демонических кристаллов", "bloodmagic:demon_pylon", "bloodmagic:demon_pylon", 1, 10, 1),
        ("Генератор поля демонической атмосферы", "bloodmagic:demon_crystallizer", "bloodmagic:demon_crystallizer", 1, 11, 0),
        ("Демоническая броня Living Armour", "bloodmagic:living_armour_chest", "bloodmagic:living_armour_chest", 1, 7, -1),
        ("Эволюция Живой Брони (300 очков)", "bloodmagic:living_armour_chest", "bloodmagic:living_armour_chest", 1, 8, -1),
        ("Том улучшения брони", "bloodmagic:upgrade_tome", "bloodmagic:upgrade_tome", 1, 9, -1),
        ("Алхимический стол очистки Animus", "bloodmagic:alchemy_table", "bloodmagic:alchemy_table", 1, 5, 2),
        ("Фрагмент кровавого сердца", "animus:blood_apple", "animus:blood_apple", 1, 6, 2),
        ("Кровавое яблоко бессмертия", "animus:blood_apple", "animus:blood_apple", 1, 7, 2),
        ("Клинок разрыва душ (Animus Blade)", "animus:kama_diamond", "animus:kama_diamond", 1, 8, 2),
        ("Сигил подчинения стихий", "bloodmagic:sigil_holding", "bloodmagic:sigil_holding", 1, 9, 2),
        ("Сигил вечной кровавой жатвы", "animus:kama_diamond", "animus:kama_diamond", 1, 10, 2),
        ("Демонический пилон насыщения", "bloodmagic:demon_pylon", "bloodmagic:demon_pylon", 2, 11, 1),
        ("Камень душ Grand Tartaric Gem (16384 Will)", "bloodmagic:soul_gem:4", "bloodmagic:soul_gem:4", 1, 11, -1),
        ("Сингулярность демонической энергии", "bloodmagic:soul_gem:4", "bloodmagic:soul_gem:4", 1, 12, -1),
        ("Ритуал: Разрушительный шторм", "bloodmagic:ritual_controller", "bloodmagic:ritual_controller", 1, 12, 0),
        ("Ритуал: Врата демонического измерения", "bloodmagic:ritual_controller", "bloodmagic:ritual_controller", 1, 13, 0),
        ("Вход в демонический город", "bloodmagic:ritual_controller", "bloodmagic:ritual_controller", 1, 14, 0),
        ("Ключ от цитадели демонов", "bloodmagic:demon_crystal:0", "bloodmagic:demon_crystal:0", 1, 14, 1),
        ("Победа над Лордом Демонов", "bloodmagic:demon_crystal:0", "bloodmagic:demon_crystal:0", 1, 15, 0),
        ("Демонический осколок преисподней", "bloodmagic:blood_shard:1", "bloodmagic:blood_shard:1", 4, 15, 1),
        ("Кровавый алтарь Тир 6 (Максимум)", "bloodmagic:altar", "bloodmagic:blood_rune:0", 1, 16, 0),
        ("Кристаллический кластер 16k Will", "bloodmagic:demon_crystal:0", "bloodmagic:demon_crystal:0", 4, 16, 1),
        ("Доспехи истинного владыки душ", "bloodmagic:living_armour_chest", "bloodmagic:living_armour_chest", 1, 16, -1),
        ("Оружие абсолютной энтропии", "bloodmagic:sentient_sword", "bloodmagic:sentient_sword", 1, 17, -1),
        ("Сингулярная сфера душ (Animus Orb)", "bloodmagic:blood_orb", "bloodmagic:blood_orb", 1, 17, 0),
        ("Печать кровавого бессмертия", "animus:blood_apple", "animus:blood_apple", 4, 17, 1),
        ("Демонический сплав крови и стали", "bloodmagic:item_demon_crystal", "bloodmagic:item_demon_crystal", 8, 18, 0),
        ("Квинтэссенция демонической ярости", "bloodmagic:demon_crystal:3", "bloodmagic:demon_crystal:3", 16, 18, 1),
        ("Корона владыки ночи", "bloodmagic:living_armour_helmet", "bloodmagic:living_armour_helmet", 1, 18, -1),
        ("Трансцендентный алтарь жертвоприношений", "bloodmagic:altar", "bloodmagic:altar", 1, 19, 0),
        ("Повелитель Демонической Воли", "bloodmagic:soul_gem:4", "bloodmagic:soul_gem:4", 1, 20, 0)
    ]

    for idx, (aname, icon_id, task_id, cnt, c, r) in enumerate(animus_nodes):
        q_ch13.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 1 or idx == 10 or idx == 13 or idx == 29 or idx == 37),
            "name": aname,
            "desc": f"Темная демонология Blood Magic & Animus: {aname}. Укрощение демонической воли, кристаллы Tartaric Gem, Living Armour и алтарь 6 уровня.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("bloodmagic:monster_soul:0", 4), ("bloodmagic:demon_crystal:0", 2)],
            "xp": 400, "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [19, 22, 32] else []
        })

    chapters.append(build_chapter(
        line_id=13, order=13,
        line_name="Глава 13: Демоническая Воля: Blood Magic & Animus",
        line_desc="Охота за душами, Tartaric Gems, Sentient-оружие, демонические кристаллы, Living Armour и алтарь Тир VI.",
        line_icon_spec=("bloodmagic:demon_crystal:0", 1),
        base_qid=650, quest_specs=q_ch13
    ))

    # =========================================================================
    # CHAPTER 14: Древние Тайны: Thaumcraft 6 — Элементы и Аспекты (QIDs 700-749)
    # =========================================================================
    q_ch14 = []
    tc6_nodes = [
        ("Таинственные кристаллы (Vis Crystals)", "thaumcraft:crystal_essence:0", "thaumcraft:crystal_essence:0", 6, 0, 0),
        ("Салис Мундус (Salis Mundus)", "thaumcraft:salis_mundus", "thaumcraft:salis_mundus", 1, 1, 0),
        ("Фолиант: Таумономикон (Thaumonomicon)", "thaumcraft:thaumonomicon", "thaumcraft:thaumonomicon", 1, 2, 0),
        ("Таумометр (Thaumometer)", "thaumcraft:thaumometer", "thaumcraft:thaumometer", 1, 3, 0),
        ("Исследовательский стол (Research Table)", "thaumcraft:research_table", "thaumcraft:research_table", 1, 3, 1),
        ("Теория Магии (Theorycrafting)", "thaumcraft:theorycraft_card", "thaumcraft:thaumonomicon", 1, 4, 1),
        ("Письменный прибор и чернила", "thaumcraft:scribing_tools", "thaumcraft:scribing_tools", 1, 4, 0),
        ("Тигель тауматурга (Crucible)", "thaumcraft:crucible", "thaumcraft:crucible", 1, 5, 0),
        ("Магический жир (Tallow)", "thaumcraft:tallow", "thaumcraft:tallow", 8, 5, -1),
        ("Нитор (Nitor - Вечный свет)", "thaumcraft:nitor_yellow", "thaumcraft:nitor_yellow", 1, 6, -1),
        ("Алюментум (Alumentum - Супертопливо)", "thaumcraft:alumentum", "thaumcraft:alumentum", 4, 6, 0),
        ("Магическая ткань (Thaumaturge's Robes)", "thaumcraft:cloth_chest", "thaumcraft:cloth_chest", 1, 6, 1),
        ("Очки откровения (Goggles of Revealing)", "thaumcraft:goggles", "thaumcraft:goggles", 1, 7, 0),
        ("Перегонный куб эссенции (Smeltery)", "thaumcraft:smelter_basic", "thaumcraft:smelter_basic", 1, 8, 0),
        ("Дистилляторная труба", "thaumcraft:tube", "thaumcraft:tube", 8, 8, 1),
        ("Магическая банка для эссенции (Jar)", "thaumcraft:jar_normal", "thaumcraft:jar_normal", 8, 9, 0),
        ("Банка с эссенцией Aer", "thaumcraft:jar_normal", "thaumcraft:jar_normal", 1, 9, 1),
        ("Банка с эссенцией Ignis", "thaumcraft:jar_normal", "thaumcraft:jar_normal", 1, 9, -1),
        ("Банка с эссенцией Terra", "thaumcraft:jar_normal", "thaumcraft:jar_normal", 1, 10, 1),
        ("Банка с эссенцией Aqua", "thaumcraft:jar_normal", "thaumcraft:jar_normal", 1, 10, -1),
        ("Банка с эссенцией Ordo", "thaumcraft:jar_normal", "thaumcraft:jar_normal", 1, 10, 0),
        ("Банка с эссенцией Perditio", "thaumcraft:jar_normal", "thaumcraft:jar_normal", 1, 11, 0),
        ("Фильтрующая труба эссенции", "thaumcraft:tube_filter", "thaumcraft:tube_filter", 4, 11, 1),
        ("Центрифуга эссенции", "thaumcraft:centrifuge", "thaumcraft:centrifuge", 1, 11, -1),
        ("Вис-резонатор ауры", "thaumcraft:vis_resonator", "thaumcraft:vis_resonator", 1, 7, -1),
        ("Аурический генератор маны", "thaumcraft:smelter_thaumium", "thaumcraft:smelter_thaumium", 1, 12, 0),
        ("Слиток Таумиума (Thaumium Ingot)", "thaumcraft:ingot:0", "thaumcraft:ingot:0", 16, 12, 1),
        ("Таумиумная кирка", "thaumcraft:thaumium_pick", "thaumcraft:thaumium_pick", 1, 13, 1),
        ("Таумиумный топор", "thaumcraft:thaumium_axe", "thaumcraft:thaumium_axe", 1, 13, 2),
        ("Таумиумный меч", "thaumcraft:thaumium_sword", "thaumcraft:thaumium_sword", 1, 14, 1),
        ("Броня из Таумиума", "thaumcraft:thaumium_chest", "thaumcraft:thaumium_chest", 1, 14, 2),
        ("Жезлостроительный верстак", "thaumcraft:arcane_workbench", "thaumcraft:arcane_workbench", 1, 2, -1),
        ("Вис-заряжатель (Vis Battery)", "thaumcraft:vis_battery", "thaumcraft:vis_battery", 1, 8, -2),
        ("Стабилизатор ауры (Aura Disperser)", "thaumcraft:condenser", "thaumcraft:condenser", 1, 9, -2),
        ("Решетка для сброса скверны Flux", "thaumcraft:condenser_lattice", "thaumcraft:condenser_lattice", 4, 10, -2),
        ("Очищающее мыло тауматурга", "thaumcraft:sanity_soap", "thaumcraft:sanity_soap", 4, 11, -2),
        ("Спа-ванна для снятия искажения", "thaumcraft:spa", "thaumcraft:spa", 1, 12, -2),
        ("Защитная аурическая лампа", "thaumcraft:lamp_growth", "thaumcraft:lamp_growth", 1, 13, -1),
        ("Лампа роста растений", "thaumcraft:lamp_growth", "thaumcraft:lamp_growth", 1, 14, -1),
        ("Лампа плодородия скота", "thaumcraft:lamp_fertility", "thaumcraft:lamp_fertility", 1, 14, 0),
        ("Зеркало передачи эссенции", "thaumcraft:mirror_essentia", "thaumcraft:mirror_essentia", 2, 13, 0),
        ("Зеркало передачи предметов", "thaumcraft:mirror", "thaumcraft:mirror", 2, 14, 0),
        ("Рунический щит баублса", "thaumcraft:baubles:0", "thaumcraft:baubles:0", 1, 15, 0),
        ("Амулет вис-насыщения", "thaumcraft:baubles:1", "thaumcraft:baubles:1", 1, 15, 1),
        ("Пояс стойкости мага", "thaumcraft:baubles:2", "thaumcraft:baubles:2", 1, 15, -1),
        ("Кольцо защиты от скверны", "thaumcraft:baubles:3", "thaumcraft:baubles:3", 1, 16, 0),
        ("Магический пьедестал тигля", "thaumcraft:pedestal_arcane", "thaumcraft:pedestal_arcane", 4, 16, 1),
        ("Запечатанная банка эссенции Praecantatio", "thaumcraft:jar_normal", "thaumcraft:jar_normal", 1, 17, 0),
        ("Постижение Тайных Аспектов", "thaumcraft:thaumonomicon", "thaumcraft:thaumonomicon", 1, 18, 0)
    ]

    for idx, (tname, icon_id, task_id, cnt, c, r) in enumerate(tc6_nodes):
        q_ch14.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 2 or idx == 7 or idx == 12 or idx == 26),
            "name": tname,
            "desc": f"Древняя магия Thaumcraft 6: {tname}. Изучение аспектов через таумометр, очистка эссенции, выплавка таумиума и контроль искажения.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("thaumcraft:salis_mundus", 2), ("thaumcraft:ingot:0", 4)],
            "xp": 250, "loot_tier": 2,
            "prereqs": [idx - 1] if idx > 0 and idx not in [8, 13, 24, 31] else []
        })

    chapters.append(build_chapter(
        line_id=14, order=14,
        line_name="Глава 14: Древние Тайны: Thaumcraft 6 — Элементы и Аспекты",
        line_desc="Таумономикон, салис мундус, таумометр, тигель, перегонка эссенций, банки и слитки Таумиума.",
        line_icon_spec=("thaumcraft:thaumonomicon", 1),
        base_qid=700, quest_specs=q_ch14
    ))

    # =========================================================================
    # CHAPTER 15: Тауматургия и Големы: Thaumcraft 6 — Инфузия (QIDs 750-799)
    # =========================================================================
    q_ch15 = []
    tc6_inf_nodes = [
        ("Матрица инфузии (Runic Matrix)", "thaumcraft:infusion_matrix", "thaumcraft:infusion_matrix", 1, 0, 0),
        ("Пьедестал инфузии (Infusion Pedestal)", "thaumcraft:pedestal_arcane", "thaumcraft:pedestal_arcane", 8, 1, 0),
        ("Магический камень структуры", "thaumcraft:stone_arcane", "thaumcraft:stone_arcane", 8, 1, 1),
        ("Стабилизатор инфузии (Stabilizer)", "thaumcraft:stabilizer", "thaumcraft:stabilizer", 2, 2, 0),
        ("Свечи для симметрии ритуала", "thaumcraft:candle_white", "thaumcraft:candle_white", 16, 2, 1),
        ("Черепа мобов для стабилизации", "minecraft:skull:0", "minecraft:skull:0", 8, 2, -1),
        ("Первая инфузия: Сапоги путешественника", "thaumcraft:traveller_boots", "thaumcraft:traveller_boots", 1, 3, 0),
        ("Инфузия: Перчатка заклинателя (Caster's Gauntlet)", "thaumcraft:caster_basic", "thaumcraft:caster_basic", 1, 4, 0),
        ("Фокус стихий: Огонь (Fire Focus)", "thaumcraft:focus_1", "thaumcraft:focus_1", 1, 5, 0),
        ("Фокус стихий: Молния (Shock Focus)", "thaumcraft:focus_2", "thaumcraft:focus_2", 1, 5, 1),
        ("Фокус стихий: Лед (Frost Focus)", "thaumcraft:focus_3", "thaumcraft:focus_3", 1, 5, -1),
        ("Фокус копания (Break Focus)", "thaumcraft:focus_1", "thaumcraft:focus_1", 1, 6, 0),
        ("Улучшенный манипулятор фокусов", "thaumcraft:focal_manipulator", "thaumcraft:focal_manipulator", 1, 6, 1),
        ("Слиток Пустотного металла (Void Metal)", "thaumcraft:ingot:1", "thaumcraft:ingot:1", 8, 7, 0),
        ("Пустотная кирка самопочинки", "thaumcraft:void_pick", "thaumcraft:void_pick", 1, 8, 0),
        ("Пустотный топор", "thaumcraft:void_axe", "thaumcraft:void_axe", 1, 8, 1),
        ("Пустотный меч", "thaumcraft:void_sword", "thaumcraft:void_sword", 1, 8, -1),
        ("Пустотная броня с регенерацией", "thaumcraft:void_chest", "thaumcraft:void_chest", 1, 9, 0),
        ("Шлем откровения пустоты", "thaumcraft:void_helm", "thaumcraft:void_helm", 1, 9, -1),
        ("Первородная жемчужина (Primordial Pearl)", "thaumcraft:primordial_pearl", "thaumcraft:primordial_pearl", 1, 10, 0),
        ("Фабрика големов (Golem Press)", "thaumcraft:golem_builder", "thaumcraft:golem_builder", 1, 4, 2),
        ("Глиняный голем (Clay Golem)", "thaumcraft:golem_clay", "thaumcraft:golem_clay", 1, 5, 2),
        ("Деревянный голем", "thaumcraft:golem_wood", "thaumcraft:golem_wood", 1, 5, 3),
        ("Железный голем", "thaumcraft:golem_iron", "thaumcraft:golem_iron", 1, 6, 2),
        ("Таумиумный голем", "thaumcraft:golem_thaumium", "thaumcraft:golem_thaumium", 1, 6, 3),
        ("Пустотный голем", "thaumcraft:golem_void", "thaumcraft:golem_void", 1, 7, 2),
        ("Колокольчик управления големами", "thaumcraft:golem_bell", "thaumcraft:golem_bell", 1, 7, 3),
        ("Логическая печать: Сбор предметов", "thaumcraft:seal_gather", "thaumcraft:seal_gather", 1, 8, 2),
        ("Логическая печать: Раскладка по сундукам", "thaumcraft:seal_stock", "thaumcraft:seal_stock", 1, 8, 3),
        ("Логическая печать: Охрана территории", "thaumcraft:seal_guard", "thaumcraft:seal_guard", 1, 9, 2),
        ("Логическая печать: Жатва растений", "thaumcraft:seal_harvest", "thaumcraft:seal_harvest", 1, 9, 3),
        ("Улучшение голема: Скорость", "thaumcraft:module_speed", "thaumcraft:module_speed", 2, 10, 2),
        ("Улучшение голема: Зрение", "thaumcraft:module_vision", "thaumcraft:module_vision", 2, 10, 3),
        ("Улучшение голема: Сила", "thaumcraft:module_strength", "thaumcraft:module_strength", 2, 11, 2),
        ("Алхимическая печь Advanced Smeltery", "thaumcraft:smelter_advanced", "thaumcraft:smelter_advanced", 1, 11, 0),
        ("Конденсатор скверны (Flux Condenser)", "thaumcraft:condenser", "thaumcraft:condenser", 1, 11, 1),
        ("Разлом Пустоты (Flux Rift)", "thaumcraft:void_seed", "thaumcraft:void_seed", 1, 12, 0),
        ("Семя Пустоты (Void Seed)", "thaumcraft:void_seed", "thaumcraft:void_seed", 4, 12, 1),
        ("Коллапсор разлома (Causality Collapser)", "thaumcraft:causality_collapser", "thaumcraft:causality_collapser", 1, 13, 0),
        ("Сбор Первородной Жемчужины из Разлома", "thaumcraft:primordial_pearl", "thaumcraft:primordial_pearl", 1, 13, 1),
        ("Сингулярность аспекта Vacuos", "thaumcraft:primordial_pearl", "thaumcraft:primordial_pearl", 1, 14, 0),
        ("Руническая матрица стабилизации 100%", "thaumcraft:stabilizer", "thaumcraft:stabilizer", 4, 14, 1),
        ("Око древних (Eldritch Eye)", "thaumcraft:eldritch_eye", "thaumcraft:eldritch_eye", 1, 15, 0),
        ("Пьедестал древних знаний", "thaumcraft:pedestal_eldritch", "thaumcraft:pedestal_eldritch", 1, 15, 1),
        ("Открытие лабиринта Древних", "thaumcraft:primordial_pearl", "thaumcraft:primordial_pearl", 1, 16, 0),
        ("Битва: Древний Страж (Eldritch Guardian)", "thaumcraft:void_seed", "thaumcraft:void_seed", 8, 16, 1),
        ("Руническое логическое ядро (Гейт s05)", "contenttweaker:runic_logic_core", "contenttweaker:runic_logic_core", 1, 17, 0),
        ("Великий Магистр Инфузии", "thaumcraft:infusion_matrix", "thaumcraft:infusion_matrix", 1, 18, 0)
    ]

    for idx, (iname, icon_id, task_id, cnt, c, r) in enumerate(tc6_inf_nodes):
        is_gate = (idx == 46)
        q_ch15.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 6 or idx == 13 or idx == 19 or idx == 20 or is_gate),
            "name": iname,
            "desc": f"Высшая тауматургия Thaumcraft 6: {iname}. Руническая матрица инфузии, пустотный металл, фабрикация големов, схлопывание разломов и древние знания.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("thaumcraft:ingot:1", 4), ("thaumcraft:void_seed", 4)],
            "xp": 350 if not is_gate else 700,
            "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [20, 34] else [],
            "command": "/gamestage add VAR_NAME s06_networked_factory" if is_gate else None,
            "command_desc": "Переход в эпоху сетевой фабрики (s06_networked_factory)" if is_gate else None
        })

    chapters.append(build_chapter(
        line_id=15, order=15,
        line_name="Глава 15: Тауматургия и Големы: Thaumcraft 6 — Инфузия",
        line_desc="Матрица инфузии, сапоги путешественника, пустотный металл, армия големов и схлопывание разломов Пустоты.",
        line_icon_spec=("thaumcraft:infusion_matrix", 1),
        base_qid=750, quest_specs=q_ch15
    ))

    return chapters
