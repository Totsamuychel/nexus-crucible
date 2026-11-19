#!/usr/bin/env python3
"""
Nexus Crucible - Quest Chapters Part 4 (Chapters 24-31, QIDs 1200-1599)
Chapters:
  24: Цифровая Фабрика: Applied Energistics 2
  25: Продвинутая Логистика: AE2 Stuff, XNet & PackagedAuto
  26: Фауна, Охота и Экспедиции: Twilight Forest & Ice and Fire
  27: Генетика, Селекция и Культуры: Forestry & Mystical Agriculture
  28: Нанотехнологии и Пустота: Industrial Upgrade & Environmental Tech
  29: Мощь Драконов: Draconic Evolution
  30: Экспертные Верстаки: Extended Crafting
  31: Божественная Бесконечность: Avaritia & Endgame Convergence
"""

from .common import build_chapter

def get_chapters_part4():
    chapters = []

    # =========================================================================
    # CHAPTER 24: Цифровая Фабрика: Applied Energistics 2 (QIDs 1200-1249)
    # =========================================================================
    q_ch24 = []
    ae2_nodes = [
        ("Метеоритный компас (Meteorite Compass)", "appliedenergistics2:sky_compass", "appliedenergistics2:sky_compass", 1, 0, 0),
        ("Пресс для высекателя: Логика", "appliedenergistics2:material:15", "appliedenergistics2:material:15", 1, 1, 0),
        ("Пресс для высекателя: Вычисления", "appliedenergistics2:material:13", "appliedenergistics2:material:13", 1, 1, 1),
        ("Пресс для высекателя: Инженерия", "appliedenergistics2:material:14", "appliedenergistics2:material:14", 1, 1, -1),
        ("Пресс для высекателя: Кремний", "appliedenergistics2:material:19", "appliedenergistics2:material:19", 1, 2, 0),
        ("Высекатель (Inscriber)", "appliedenergistics2:inscriber", "appliedenergistics2:inscriber", 1, 3, 0),
        ("Отпечатанный кремний", "appliedenergistics2:material:20", "appliedenergistics2:material:20", 16, 4, 0),
        ("Логический процессор (Logic Processor)", "appliedenergistics2:material:22", "appliedenergistics2:material:22", 8, 5, 0),
        ("Вычислительный процессор (Calculation)", "appliedenergistics2:material:23", "appliedenergistics2:material:23", 8, 5, 1),
        ("Инженерный процессор (Engineering)", "appliedenergistics2:material:24", "appliedenergistics2:material:24", 8, 5, -1),
        ("МЭ Контроллер (ME Controller)", "appliedenergistics2:controller", "appliedenergistics2:controller", 1, 6, 0),
        ("МЭ Приемник энергии (Energy Acceptor)", "appliedenergistics2:energy_acceptor", "appliedenergistics2:energy_acceptor", 1, 6, 1),
        ("МЭ Энергетическая ячейка", "appliedenergistics2:energy_cell", "appliedenergistics2:energy_cell", 1, 6, 2),
        ("Плотная энергетическая ячейка Dense", "appliedenergistics2:dense_energy_cell", "appliedenergistics2:dense_energy_cell", 1, 7, 2),
        ("МЭ Стеклянный кабель (Glass Cable)", "appliedenergistics2:part:16", "appliedenergistics2:part:16", 16, 7, 0),
        ("МЭ Умный кабель (Smart Cable - Индикация каналов)", "appliedenergistics2:part:56", "appliedenergistics2:part:56", 16, 8, 0),
        ("МЭ Плотный кабель (Dense Cable - 32 канала)", "appliedenergistics2:part:76", "appliedenergistics2:part:76", 8, 9, 0),
        ("МЭ Накопитель (ME Drive)", "appliedenergistics2:drive", "appliedenergistics2:drive", 1, 7, 1),
        ("1k Ячейка памяти хранения", "appliedenergistics2:storage_cell_1k", "appliedenergistics2:storage_cell_1k", 4, 8, 1),
        ("4k Ячейка памяти хранения", "appliedenergistics2:storage_cell_4k", "appliedenergistics2:storage_cell_4k", 2, 9, 1),
        ("16k Ячейка памяти хранения", "appliedenergistics2:storage_cell_16k", "appliedenergistics2:storage_cell_16k", 2, 10, 1),
        ("64k Ячейка памяти хранения", "appliedenergistics2:storage_cell_64k", "appliedenergistics2:storage_cell_64k", 2, 11, 1),
        ("МЭ Терминал доступа (ME Terminal)", "appliedenergistics2:part:380", "appliedenergistics2:part:380", 1, 7, -1),
        ("МЭ Терминал создания (Crafting Terminal)", "appliedenergistics2:part:360", "appliedenergistics2:part:360", 1, 8, -1),
        ("МЭ Терминал шаблонов (Pattern Terminal)", "appliedenergistics2:part:340", "appliedenergistics2:part:340", 1, 9, -1),
        ("Пустой шаблон автокрафта (Blank Pattern)", "appliedenergistics2:material:52", "appliedenergistics2:material:52", 16, 10, -1),
        ("МЭ Молекулярный сборщик (Molecular Assembler)", "appliedenergistics2:molecular_assembler", "appliedenergistics2:molecular_assembler", 4, 10, 0),
        ("МЭ Интерфейс (ME Interface)", "appliedenergistics2:interface", "appliedenergistics2:interface", 4, 11, 0),
        ("Блок обработки создания (Crafting CPU)", "appliedenergistics2:crafting_unit", "appliedenergistics2:crafting_unit", 4, 11, -1),
        ("Хранилище создания 64k Co-Processing", "appliedenergistics2:crafting_storage_64k", "appliedenergistics2:crafting_storage_64k", 2, 12, -1),
        ("Ускоритель вычислений создания", "appliedenergistics2:crafting_accelerator", "appliedenergistics2:crafting_accelerator", 4, 12, 0),
        ("Карта ускорения (Acceleration Card)", "appliedenergistics2:material:30", "appliedenergistics2:material:30", 8, 8, 2),
        ("Карта емкости (Capacity Card)", "appliedenergistics2:material:27", "appliedenergistics2:material:27", 4, 9, 2),
        ("Карта крафта (Crafting Card)", "appliedenergistics2:material:53", "appliedenergistics2:material:53", 2, 10, 2),
        ("МЭ Шина экспорта (Export Bus)", "appliedenergistics2:part:260", "appliedenergistics2:part:260", 4, 12, 1),
        ("МЭ Шина импорта (Import Bus)", "appliedenergistics2:part:240", "appliedenergistics2:part:240", 4, 13, 1),
        ("МЭ Шина хранения (Storage Bus)", "appliedenergistics2:part:220", "appliedenergistics2:part:220", 4, 13, 2),
        ("МЭ Терминал интерфейсов (Interface Terminal)", "appliedenergistics2:part:480", "appliedenergistics2:part:480", 1, 13, -1),
        ("МЭ Уровень эмиттера (Level Emitter)", "appliedenergistics2:part:280", "appliedenergistics2:part:280", 2, 14, 1),
        ("Кварцевый дробитель руды", "appliedenergistics2:grindstone", "appliedenergistics2:grindstone", 1, 2, 2),
        ("Камера выращивания кристаллов (Crystal Growth)", "appliedenergistics2:quartz_growth_accelerator", "appliedenergistics2:quartz_growth_accelerator", 4, 3, 2),
        ("Чистый истинный кварц (Pure Certus)", "appliedenergistics2:material:10", "appliedenergistics2:material:10", 16, 4, 2),
        ("Чистый флюикс (Pure Fluix Crystal)", "appliedenergistics2:material:12", "appliedenergistics2:material:12", 16, 5, 2),
        ("МЭ Точка-Точка туннель (P2P Tunnel ME)", "appliedenergistics2:part:460", "appliedenergistics2:part:460", 4, 14, 0),
        ("P2P туннель энергии RF", "appliedenergistics2:part:465", "appliedenergistics2:part:465", 2, 15, 0),
        ("P2P туннель жидкостей", "appliedenergistics2:part:463", "appliedenergistics2:part:463", 2, 15, 1),
        ("P2P туннель редстоуна и света", "appliedenergistics2:part:461", "appliedenergistics2:part:461", 2, 15, -1),
        ("Распределенная матрица управления (Гейт s06)", "contenttweaker:distributed_control_matrix", "contenttweaker:distributed_control_matrix", 1, 16, 0),
        ("Мастер Цифровой Вселенной AE2", "appliedenergistics2:controller", "appliedenergistics2:controller", 1, 17, 0)
    ]

    for idx, (aname, icon_id, task_id, cnt, c, r) in enumerate(ae2_nodes):
        is_gate = (idx == 47)
        q_ch24.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 5 or idx == 10 or idx == 17 or idx == 23 or idx == 27 or is_gate),
            "name": aname,
            "desc": f"Цифровая логистика Applied Energistics 2: {aname}. Печать микросхем в высекателе, организация МЭ-сети на 32 канала, автокрафт и P2P-туннели.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("appliedenergistics2:material:24", 4), ("appliedenergistics2:material:38", 1)],
            "xp": 400 if not is_gate else 800,
            "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [11, 17, 22, 31, 39] else [],
            "command": "/gamestage add VAR_NAME s07_advanced_industry" if is_gate else None,
            "command_desc": "Переход в эпоху передовой индустрии (s07_advanced_industry)" if is_gate else None
        })

    chapters.append(build_chapter(
        line_id=24, order=24,
        line_name="Глава 24: Цифровая Фабрика: Applied Energistics 2",
        line_desc="Поиск метеоритов, высекатели, МЭ Контроллер, 64k накопители, молекулярные сборщики и сеть P2P туннелей.",
        line_icon_spec=("appliedenergistics2:controller", 1),
        base_qid=1200, quest_specs=q_ch24
    ))

    # =========================================================================
    # CHAPTER 25: Продвинутая Логистика: AE2 Stuff, XNet & PackagedAuto (QIDs 1250-1299)
    # =========================================================================
    q_ch25 = []
    log_nodes = [
        ("Продвинутый высекатель (Advanced Inscriber)", "ae2stuff:inscriber", "ae2stuff:inscriber", 1, 0, 0),
        ("Камера кристаллизации AE2 Stuff", "ae2stuff:grower", "ae2stuff:grower", 1, 1, 0),
        ("Беспроводной терминальный хаб", "ae2stuff:wireless", "ae2stuff:wireless", 1, 2, 0),
        ("Беспроводной терминал создания WCT", "ae2wtlib:wct", "ae2wtlib:wct", 1, 3, 0),
        ("Магнитная карта терминала WCT", "ae2wtlib:wct", "ae2wtlib:wct", 1, 4, 0),
        ("Бесконечный беспроводной бустер (Infinity Booster)", "ae2wtlib:wct", "ae2wtlib:wct", 1, 5, 0),
        ("Контроллер сети XNet (XNet Controller)", "xnet:controller", "xnet:controller", 1, 6, 0),
        ("Сетевой соединитель XNet (Connector)", "xnet:connector:0", "xnet:connector:0", 8, 7, 0),
        ("Продвинутый соединитель XNet (Advanced Connector)", "xnet:connector:1", "xnet:connector:1", 4, 8, 0),
        ("Сетевой кабель XNet (Networking Cable)", "xnet:netcable:0", "xnet:netcable:0", 32, 7, 1),
        ("Маршрутизатор каналов XNet (Router)", "xnet:router", "xnet:router", 1, 8, 1),
        ("Беспроводной роутер XNet (Wireless Router)", "xnet:wireless_router", "xnet:wireless_router", 1, 9, 1),
        ("Упаковщик пакетов PackagedAuto (Packager)", "packagedauto:packager", "packagedauto:packager", 1, 6, -1),
        ("Распаковщик пакетов (Unpackager)", "packagedauto:unpackager", "packagedauto:unpackager", 1, 7, -1),
        ("Держатель пакетов (Package Component)", "packagedauto:package_component", "packagedauto:package_component", 16, 8, -1),
        ("Рецепторный блок крафта (Crafter)", "packagedauto:crafter", "packagedauto:crafter", 1, 9, -1),
        ("Расширитель пакетов автокрафта (Encoder)", "packagedauto:encoder", "packagedauto:encoder", 1, 10, -1),
        ("Связка PackagedAuto с верстаками 9x9", "packagedauto:unpackager", "packagedauto:unpackager", 1, 11, -1),
        ("Логический кабель Integrated Dynamics", "integrateddynamics:cable", "integrateddynamics:cable", 16, 9, 0),
        ("Считыватель предметов (Item Reader ID)", "integrateddynamics:part_inventory_reader_item", "integrateddynamics:part_inventory_reader_item", 2, 10, 0),
        ("Считыватель сущностей и мобов", "integrateddynamics:part_entity_reader_item", "integrateddynamics:part_entity_reader_item", 1, 10, 1),
        ("Логический программатор (Logic Programmer)", "integrateddynamics:logic_programmer", "integrateddynamics:logic_programmer", 1, 11, 0),
        ("Переменная карта (Variable Card)", "integrateddynamics:variable", "integrateddynamics:variable", 16, 12, 0),
        ("Дисплей вывода данных", "integrateddynamics:part_display_panel_item", "integrateddynamics:part_display_panel_item", 1, 13, 0),
        ("Интегрированный туннель предметов (Item Tunnel)", "integratedtunnels:part_interface_item_item", "integratedtunnels:part_interface_item_item", 2, 12, 1),
        ("Интегрированный туннель жидкостей (Fluid Tunnel)", "integratedtunnels:part_interface_fluid_item", "integratedtunnels:part_interface_fluid_item", 2, 13, 1),
        ("Туннель передачи энергии миллионы RF/t", "integratedtunnels:part_interface_energy_item", "integratedtunnels:part_interface_energy_item", 2, 14, 1),
        ("Абсолютный туннель скорости тик-в-тик", "integratedtunnels:part_interface_item_item", "integratedtunnels:part_interface_item_item", 1, 15, 1),
        ("МЭ Квантовое кольцо связи (Quantum Ring)", "appliedenergistics2:quantum_ring", "appliedenergistics2:quantum_ring", 8, 12, -1),
        ("МЭ Квантовая камера связи (Quantum Link)", "appliedenergistics2:quantum_link", "appliedenergistics2:quantum_link", 1, 13, -1),
        ("Запутанная сингулярность (Entangled Singularity)", "appliedenergistics2:material:48", "appliedenergistics2:material:48", 2, 14, -1),
        ("Связь между измерениями без проводов", "appliedenergistics2:quantum_ring", "appliedenergistics2:quantum_ring", 1, 15, -1),
        ("Сверхскоростная логистическая магистраль", "xnet:controller", "xnet:controller", 1, 16, 0)
    ]

    for idx, (lname, icon_id, task_id, cnt, c, r) in enumerate(log_nodes):
        q_ch25.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 3 or idx == 6 or idx == 12 or idx == 18 or idx == 28),
            "name": lname,
            "desc": f"Сверхсложная логистика и автоматизация: {lname}. Продвинутые высекатели AE2 Stuff, каналы без задержки XNet, пакетный крафт PackagedAuto и квантовые мосты между мирами.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("xnet:connector:1", 4), ("appliedenergistics2:material:48", 2)],
            "xp": 450, "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [6, 12, 18, 28] else []
        })

    chapters.append(build_chapter(
        line_id=25, order=25,
        line_name="Глава 25: Продвинутая Логистика: AE2 Stuff, XNet & PackagedAuto",
        line_desc="Беспроводной терминал создания, маршрутизаторы XNet, пакетный автокрафт 9x9 и квантовые кольца связи между мирами.",
        line_icon_spec=("xnet:controller", 1),
        base_qid=1250, quest_specs=q_ch25
    ))

    # =========================================================================
    # CHAPTER 26: Фауна, Охота и Экспедиции: Twilight Forest & Ice and Fire (QIDs 1300-1349)
    # =========================================================================
    q_ch26 = []
    hunt_nodes = [
        ("Портал в Сумеречный Лес", "twilightforest:miniature_structure", "minecraft:diamond", 1, 0, 0),
        ("Сумеречный лабиринт и светлячки", "twilightforest:firefly", "twilightforest:firefly", 4, 1, 0),
        ("Битва: Нага в саду (Naga)", "twilightforest:trophy:0", "twilightforest:trophy:0", 1, 2, 0),
        ("Чешуя Наги (Naga Scale)", "twilightforest:naga_scale", "twilightforest:naga_scale", 8, 3, 0),
        ("Броня из чешуи Наги", "twilightforest:naga_chestplate", "twilightforest:naga_chestplate", 1, 4, 0),
        ("Замок Сумеречного Лича", "twilightforest:trophy:1", "twilightforest:trophy:1", 1, 5, 0),
        ("Битва: Сумеречный Лич (Lich)", "twilightforest:trophy:1", "twilightforest:trophy:1", 1, 6, 0),
        ("Жезл Лича: Сумеречный скипетр", "twilightforest:twilight_scepter", "twilightforest:twilight_scepter", 1, 7, 0),
        ("Жезл вампиризма Лича", "twilightforest:lifedrain_scepter", "twilightforest:lifedrain_scepter", 1, 7, 1),
        ("Жезл зомби Лича", "twilightforest:zombie_scepter", "twilightforest:zombie_scepter", 1, 7, -1),
        ("Лабиринт Минотавра", "twilightforest:trophy:6", "twilightforest:trophy:6", 1, 8, 0),
        ("Битва: Грибной Минотавр (Minoshroom)", "twilightforest:trophy:6", "twilightforest:trophy:6", 1, 9, 0),
        ("Топор Минотавра (Diamond Minotaur Axe)", "twilightforest:minotaur_axe", "twilightforest:minotaur_axe", 1, 10, 0),
        ("Мясо Строганов (Meef Stroganoff)", "twilightforest:meef_stroganoff", "twilightforest:meef_stroganoff", 1, 10, 1),
        ("Огненное болото Гидры", "twilightforest:trophy:2", "twilightforest:trophy:2", 1, 11, 0),
        ("Битва: Многоголовая Гидра (Hydra)", "twilightforest:trophy:2", "twilightforest:trophy:2", 1, 12, 0),
        ("Огненная кровь Гидры (Fiery Blood)", "twilightforest:fiery_blood", "twilightforest:fiery_blood", 8, 13, 0),
        ("Огненный слиток (Fiery Ingot)", "twilightforest:fiery_ingot", "twilightforest:fiery_ingot", 8, 14, 0),
        ("Огненный меч и кирка", "twilightforest:fiery_sword", "twilightforest:fiery_sword", 1, 15, 0),
        ("Огненная броня Гидры", "twilightforest:fiery_chestplate", "twilightforest:fiery_chestplate", 1, 15, 1),
        ("Темная башня Ур-Гаста", "twilightforest:trophy:3", "twilightforest:trophy:3", 1, 12, -1),
        ("Битва: Ур-Гаст (Ur-Ghast)", "twilightforest:trophy:3", "twilightforest:trophy:3", 1, 13, -1),
        ("Огненные слезы Ур-Гаста", "twilightforest:fiery_tears", "twilightforest:fiery_tears", 8, 14, -1),
        ("Карминный реактор (Carminite)", "twilightforest:carminite", "twilightforest:carminite", 8, 15, -1),
        ("Ледяные чертоги Снежной Королевы", "twilightforest:trophy:5", "twilightforest:trophy:5", 1, 16, 0),
        ("Битва: Снежная Королева (Snow Queen)", "twilightforest:trophy:5", "twilightforest:trophy:5", 1, 17, 0),
        ("Ледяной лук Тройной стрелы", "twilightforest:triple_bow", "twilightforest:triple_bow", 1, 18, 0),
        ("Ледяной меч королевы", "twilightforest:ice_sword", "twilightforest:ice_sword", 1, 18, 1),
        ("Шипастый замок финального плато", "twilightforest:lamp_of_cinders", "twilightforest:lamp_of_cinders", 1, 19, 0),
        ("Лампа пепла (Lamp of Cinders)", "twilightforest:lamp_of_cinders", "twilightforest:lamp_of_cinders", 1, 20, 0),
        ("Поиск драконьих гнезд Ice and Fire", "iceandfire:manuscript", "iceandfire:manuscript", 1, 8, 2),
        ("Бестиарий мифических существ", "iceandfire:bestiary", "iceandfire:bestiary", 1, 9, 2),
        ("Охота на Огненного Дракона", "iceandfire:fire_dragon_heart", "iceandfire:fire_dragon_heart", 1, 10, 2),
        ("Чешуя Огненного Дракона", "iceandfire:dragonscales_red", "iceandfire:dragonscales_red", 16, 11, 2),
        ("Кости дракона (Dragon Bone)", "iceandfire:dragonbone", "iceandfire:dragonbone", 16, 11, 3),
        ("Драконья кузница огня (Dragonforge)", "iceandfire:dragonforge_fire_core", "iceandfire:dragonforge_fire_core", 1, 12, 2),
        ("Слиток огненной драконьей стали", "iceandfire:dragonsteel_fire_ingot", "iceandfire:dragonsteel_fire_ingot", 8, 13, 2),
        ("Охота на Ледяного Дракона", "iceandfire:ice_dragon_heart", "iceandfire:ice_dragon_heart", 1, 10, 3),
        ("Чешуя Ледяного Дракона", "iceandfire:dragonscales_blue", "iceandfire:dragonscales_blue", 16, 11, 4),
        ("Драконья кузница льда", "iceandfire:dragonforge_ice_core", "iceandfire:dragonforge_ice_core", 1, 12, 3),
        ("Слиток ледяной драконьей стали", "iceandfire:dragonsteel_ice_ingot", "iceandfire:dragonsteel_ice_ingot", 8, 13, 3),
        ("Меч из драконьей стали (50+ урона)", "iceandfire:dragonsteel_fire_sword", "iceandfire:dragonsteel_fire_sword", 1, 14, 2),
        ("Доспехи из драконьей стали", "iceandfire:dragonsteel_fire_chestplate", "iceandfire:dragonsteel_fire_chestplate", 1, 15, 2),
        ("Охота на Морского Змея (Sea Serpent)", "iceandfire:sea_serpent_scales_blue", "iceandfire:sea_serpent_scales_blue", 8, 16, 2),
        ("Броня Морского Змея", "iceandfire:tide_blue_chestplate", "iceandfire:tide_blue_chestplate", 1, 17, 2),
        ("Охота на Гидру и Циклопа", "iceandfire:hydra_heart", "iceandfire:hydra_heart", 1, 18, 2),
        ("Охота на Дрожащего Смерточервя", "iceandfire:deathworm_chitin_yellow", "iceandfire:deathworm_chitin_yellow", 8, 19, 2),
        ("Оперение Сирены и Перья Гарпии", "iceandfire:shiny_scales", "iceandfire:shiny_scales", 8, 20, 2),
        ("Повелитель Чудовищ и Боссов", "twilightforest:trophy:2", "twilightforest:trophy:2", 1, 21, 0)
    ]

    for idx, (hname, icon_id, task_id, cnt, c, r) in enumerate(hunt_nodes):
        q_ch26.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 2 or idx == 6 or idx == 15 or idx == 21 or idx == 25 or idx == 32 or idx == 36),
            "name": hname,
            "desc": f"Экспедиции и трофеи: {hname}. Покорение 7 боссов Сумеречного Леса, охота на древних драконов Ice and Fire и выплавка легендарной драконьей стали.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("twilightforest:fiery_ingot", 4), ("iceandfire:dragonsteel_fire_ingot", 2)],
            "xp": 450, "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [20, 30, 37] else []
        })

    chapters.append(build_chapter(
        line_id=26, order=26,
        line_name="Глава 26: Фауна, Охота и Экспедиции: Twilight Forest & Ice and Fire",
        line_desc="Трофеи Наги, Лича, Гидры и Ур-Гаста, логова драконов 5 уровня, кузницы драконьей стали и мифические реликвии.",
        line_icon_spec=("twilightforest:trophy", 1),
        base_qid=1300, quest_specs=q_ch26
    ))

    # =========================================================================
    # CHAPTER 27: Генетика, Селекция и Культуры: Forestry & Mystical Agriculture (QIDs 1350-1399)
    # =========================================================================
    q_ch27 = []
    bio_nodes = [
        ("Сачок энтомолога (Scoop)", "forestry:scoop", "forestry:scoop", 1, 0, 0),
        ("Дикий пчелиный улей", "forestry:beehives:0", "forestry:beehives:0", 1, 1, 0),
        ("Пчелиная матка (Queen Bee)", "forestry:bee_queen_ge", "forestry:bee_queen_ge", 1, 2, 0),
        ("Анализатор пчел (Beealyzer)", "forestry:beealyzer", "forestry:beealyzer", 1, 3, 0),
        ("Деревянная пасека (Apiary)", "forestry:apiculture:0", "forestry:apiculture:0", 2, 4, 0),
        ("Пчелиные соты (Honeycomb)", "forestry:honeycomb:0", "forestry:honeycomb:0", 16, 5, 0),
        ("Центрифуга Forestry", "forestry:factory:0", "forestry:factory:0", 1, 6, 0),
        ("Капли чистого меда", "forestry:honey_drop", "forestry:honey_drop", 16, 7, 0),
        ("Многоблочный Альвеарий (Alveary)", "forestry:alveary:0", "forestry:alveary:0", 27, 8, 0),
        ("Нагреватель альвеария", "forestry:alveary:1", "forestry:alveary:1", 2, 9, 0),
        ("Вентилятор альвеария", "forestry:alveary:2", "forestry:alveary:2", 2, 9, 1),
        ("Стабилизатор мутаций Gendustry", "gendustry:mutatron", "gendustry:mutatron", 1, 10, 0),
        ("Продвинутый Мутатрон (Advanced Mutatron)", "gendustry:mutatron_advanced", "gendustry:mutatron_advanced", 1, 11, 0),
        ("Генетический экстрактор (Sampler)", "gendustry:sampler", "gendustry:sampler", 1, 12, 0),
        ("Генетический транспозер (Imprinter)", "gendustry:imprinter", "gendustry:imprinter", 1, 13, 0),
        ("Мутагенная жидкость (Mutagen)", "gendustry:mutagen_tank", "gendustry:mutagen_tank", 1, 11, 1),
        ("Выведение Металлической Пчелы", "forestry:bee_queen_ge", "forestry:bee_queen_ge", 1, 14, 0),
        ("Выведение Радиоактивной Пчелы", "forestry:bee_queen_ge", "forestry:bee_queen_ge", 1, 15, 0),
        ("Выведение Драконической Пчелы", "forestry:bee_queen_ge", "forestry:bee_queen_ge", 1, 16, 0),
        ("Эссенция процветания (Prosperity Shard)", "mysticalagriculture:crafting:5", "mysticalagriculture:crafting:5", 16, 6, -1),
        ("Камень инфузии семян (Infusion Crystal)", "mysticalagriculture:infusion_crystal", "mysticalagriculture:infusion_crystal", 1, 7, -1),
        ("Мастерский камень инфузии (Master Crystal)", "mysticalagriculture:master_infusion_crystal", "mysticalagriculture:master_infusion_crystal", 1, 8, -1),
        ("Эссенция Инфериума (Inferium Essence)", "mysticalagriculture:crafting:0", "mysticalagriculture:crafting:0", 64, 9, -1),
        ("Эссенция Прудентиума (Prudentium Essence)", "mysticalagriculture:crafting:1", "mysticalagriculture:crafting:1", 32, 10, -1),
        ("Эссенция Тертиума (Tertium Essence)", "mysticalagriculture:crafting:2", "mysticalagriculture:crafting:2", 16, 11, -1),
        ("Эссенция Империума (Imperium Essence)", "mysticalagriculture:crafting:3", "mysticalagriculture:crafting:3", 8, 12, -1),
        ("Эссенция Супремиума (Supremium Essence)", "mysticalagriculture:crafting:4", "mysticalagriculture:crafting:4", 4, 13, -1),
        ("Эссенция Инсаниума (Insanium Essence)", "mysticalagradditions:insanium:0", "mysticalagradditions:insanium:0", 2, 14, -1),
        ("Семена железной культуры", "mysticalagriculture:iron_seeds", "mysticalagriculture:iron_seeds", 1, 11, -2),
        ("Семена редстоуна", "mysticalagriculture:redstone_seeds", "mysticalagriculture:redstone_seeds", 1, 12, -2),
        ("Семена алмазной культуры", "mysticalagriculture:diamond_seeds", "mysticalagriculture:diamond_seeds", 1, 13, -2),
        ("Семена дракония Tier 6", "mysticalagradditions:dragon_egg_seeds", "mysticalagradditions:dragon_egg_seeds", 1, 15, -1),
        ("Семена нейтрония Avaritia", "mysticalagradditions:neutronium_seeds", "mysticalagradditions:neutronium_seeds", 1, 16, -1),
        ("Ботанический фитогенный облучатель", "thermalexpansion:machine:4", "thermalexpansion:machine:4", 1, 14, -2),
        ("Удобрение фито-гров (Phyto-Gro)", "thermalfoundation:fertilizer:0", "thermalfoundation:fertilizer:0", 16, 15, -2),
        ("Агро-клош инженера (Garden Cloche)", "immersiveengineering:metal_device1:0", "immersiveengineering:metal_device1:0", 4, 16, -2),
        ("Бесконечный сбор эссенций в клошах", "mysticalagriculture:crafting:4", "mysticalagriculture:crafting:4", 16, 17, -1),
        ("Генетический Архитектор Жизни", "gendustry:mutatron_advanced", "gendustry:mutatron_advanced", 1, 18, 0)
    ]

    for idx, (bname, icon_id, task_id, cnt, c, r) in enumerate(bio_nodes):
        q_ch27.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 8 or idx == 12 or idx == 20 or idx == 26 or idx == 31),
            "name": bname,
            "desc": f"Биоинженерия, селекция и эссенции: {bname}. Альвеарии, Advanced Mutatron из Gendustry, эссенции Mystical Agriculture от Inferium до Insanium и автоматизация в клошах.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("mysticalagriculture:crafting:4", 4), ("gendustry:mutagen_tank", 1)],
            "xp": 450, "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [19, 28, 33] else []
        })

    chapters.append(build_chapter(
        line_id=27, order=27,
        line_name="Глава 27: Генетика, Селекция и Культуры: Forestry & Mystical Agriculture",
        line_desc="Селекция пчел, многоблочные альвеарии, мутатроны Gendustry, эссенции от Tier 1 до Insanium и агро-клоши.",
        line_icon_spec=("forestry:bee_queen_ge", 1),
        base_qid=1350, quest_specs=q_ch27
    ))

    # =========================================================================
    # CHAPTER 28: Нанотехнологии и Пустота: Industrial Upgrade & Environmental Tech (QIDs 1400-1449)
    # =========================================================================
    q_ch28 = []
    nano_nodes = [
        ("Улучшенный корпус механизма IU", "industrialupgrade:machine_frame", "industrialupgrade:machine_frame", 2, 0, 0),
        ("Нано-генератор Industrial Upgrade", "industrialupgrade:nano_generator", "industrialupgrade:nano_generator", 1, 1, 0),
        ("Квантовый генератор энергии", "industrialupgrade:quantum_generator", "industrialupgrade:quantum_generator", 1, 2, 0),
        ("Спектральная солнечная панель", "industrialupgrade:solar_panel_spectral", "industrialupgrade:solar_panel_spectral", 2, 3, 0),
        ("Квантовая солнечная панель (32k EU/t)", "industrialupgrade:solar_panel_quantum", "industrialupgrade:solar_panel_quantum", 1, 4, 0),
        ("Солнечная панель сингулярности", "industrialupgrade:solar_panel_singularity", "industrialupgrade:solar_panel_singularity", 1, 5, 0),
        ("Базовый пустотный шахтер (Void Ore Miner T1)", "environmentaltech:void_ore_miner_cont_1", "environmentaltech:void_ore_miner_cont_1", 1, 6, 0),
        ("Лазерный сердечник T1 (Laser Core)", "environmentaltech:laser_core", "environmentaltech:laser_core", 4, 7, 0),
        ("Лазерная линза кристалла (Laser Lens)", "environmentaltech:laser_lens", "environmentaltech:laser_lens", 1, 7, 1),
        ("Кристалл Литерита (Litherite Crystal)", "environmentaltech:litherite_crystal", "environmentaltech:litherite_crystal", 16, 8, 0),
        ("Пустотный шахтер Tier 2", "environmentaltech:void_ore_miner_cont_2", "environmentaltech:void_ore_miner_cont_2", 1, 9, 0),
        ("Кристалл Эродия (Erodium Crystal)", "environmentaltech:erodium_crystal", "environmentaltech:erodium_crystal", 16, 10, 0),
        ("Пустотный шахтер Tier 3", "environmentaltech:void_ore_miner_cont_3", "environmentaltech:void_ore_miner_cont_3", 1, 11, 0),
        ("Кристалл Ионита (Ionite Crystal)", "environmentaltech:ionite_crystal", "environmentaltech:ionite_crystal", 16, 12, 0),
        ("Пустотный шахтер Tier 4", "environmentaltech:void_ore_miner_cont_4", "environmentaltech:void_ore_miner_cont_4", 1, 13, 0),
        ("Кристалл Киронита (Kyronite Crystal)", "environmentaltech:kyronite_crystal", "environmentaltech:kyronite_crystal", 16, 14, 0),
        ("Пустотный шахтер Tier 5", "environmentaltech:void_ore_miner_cont_5", "environmentaltech:void_ore_miner_cont_5", 1, 15, 0),
        ("Кристалл Пладиорита (Pladium Crystal)", "environmentaltech:pladium_crystal", "environmentaltech:pladium_crystal", 16, 16, 0),
        ("Пустотный шахтер Tier 6 (Абсолютный)", "environmentaltech:void_ore_miner_cont_6", "environmentaltech:void_ore_miner_cont_6", 1, 17, 0),
        ("Кристалл Этониума (Aethium Crystal)", "environmentaltech:aethium_crystal", "environmentaltech:aethium_crystal", 16, 18, 0),
        ("Пустотный сборщик ресурсов (Void Res Miner)", "environmentaltech:void_res_miner_cont_6", "environmentaltech:void_res_miner_cont_6", 1, 18, 1),
        ("Пустотная солнечная панель Solar T6", "environmentaltech:solar_cont_6", "environmentaltech:solar_cont_6", 1, 18, -1),
        ("Нано-бот маяк наложения эффектов T6", "environmentaltech:nano_cont_6", "environmentaltech:nano_cont_6", 1, 19, 0),
        ("Модификатор скорости лазера X8", "environmentaltech:modifier_speed", "environmentaltech:modifier_speed", 8, 17, 1),
        ("Модификатор точности линзы", "environmentaltech:modifier_accuracy", "environmentaltech:modifier_accuracy", 4, 17, -1),
        ("Сингулярная фабрика нано-материи", "industrialupgrade:machine_frame", "industrialupgrade:machine_frame", 4, 20, 0),
        ("Владыка Пустотных Измерений", "environmentaltech:aethium_crystal", "environmentaltech:aethium_crystal", 32, 21, 0)
    ]

    for idx, (nname, icon_id, task_id, cnt, c, r) in enumerate(nano_nodes):
        q_ch28.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 4 or idx == 6 or idx == 10 or idx == 18 or idx == 21),
            "name": nname,
            "desc": f"Нанотехнологии и космическая добыча: {nname}. Квантовые панели Industrial Upgrade, эволюция Void Ore Miner от Litherite до Aethium T6.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("environmentaltech:litherite_crystal", 8), ("environmentaltech:aethium_crystal", 2)],
            "xp": 500, "loot_tier": 3 if idx < 15 else 4,
            "prereqs": [idx - 1] if idx > 0 and idx not in [6] else []
        })

    chapters.append(build_chapter(
        line_id=28, order=28,
        line_name="Глава 28: Нанотехнологии и Пустота: Industrial Upgrade & Environmental Tech",
        line_desc="Квантовые генераторы, супер-солнечные панели, Void Ore Miner от Tier 1 до Tier 6 и кристаллы Этониума.",
        line_icon_spec=("environmentaltech:void_ore_miner_cont_1", 1),
        base_qid=1400, quest_specs=q_ch28
    ))

    # =========================================================================
    # CHAPTER 29: Мощь Драконов: Draconic Evolution (QIDs 1450-1499)
    # =========================================================================
    q_ch29 = []
    de_nodes = [
        ("Дракониевая руда края (Draconium Ore)", "draconicevolution:draconium_ore:0", "draconicevolution:draconium_ore:0", 16, 0, 0),
        ("Слиток Дракония (Draconium Ingot)", "draconicevolution:draconium_ingot", "draconicevolution:draconium_ingot", 16, 1, 0),
        ("Дракониевая пыль (Draconium Dust)", "draconicevolution:draconium_dust", "draconicevolution:draconium_dust", 16, 1, 1),
        ("Дракониевое ядро (Draconic Core)", "draconicevolution:draconic_core", "draconicevolution:draconic_core", 4, 2, 0),
        ("Базовый инжектор слияния (Basic Injector)", "draconicevolution:crafting_injector:0", "draconicevolution:crafting_injector:0", 4, 3, 0),
        ("Ядро крафта слияния (Fusion Crafting Core)", "draconicevolution:fusion_crafting_core", "draconicevolution:fusion_crafting_core", 1, 4, 0),
        ("Виверновое ядро (Wyvern Core)", "draconicevolution:wyvern_core", "draconicevolution:wyvern_core", 4, 5, 0),
        ("Виверновый инжектор слияния (Wyvern Injector)", "draconicevolution:crafting_injector:1", "draconicevolution:crafting_injector:1", 4, 6, 0),
        ("Энергетическое ядро хранилища Tier 1", "draconicevolution:energy_storage_core", "draconicevolution:energy_storage_core", 1, 5, 1),
        ("Стабилизатор энергетического ядра", "draconicevolution:particle_generator:2", "draconicevolution:particle_generator:2", 4, 6, 1),
        ("Энергетический пилон (Energy Pylon)", "draconicevolution:energy_pylon", "draconicevolution:energy_pylon", 2, 7, 1),
        ("Энергосфера Draconic Tier 4 (2.14B RF)", "draconicevolution:energy_storage_core", "draconicevolution:energy_storage_core", 1, 8, 1),
        ("Энергосфера Draconic Tier 7 (2.14T RF)", "draconicevolution:energy_storage_core", "draconicevolution:energy_storage_core", 1, 9, 1),
        ("Энергосфера Draconic Tier 8 (Бесконечность)", "draconicevolution:energy_storage_core", "draconicevolution:energy_storage_core", 1, 10, 1),
        ("Виверновая кирка (Wyvern Pickaxe)", "draconicevolution:wyvern_pick", "draconicevolution:wyvern_pick", 1, 7, 0),
        ("Виверновый лук (Wyvern Bow)", "draconicevolution:wyvern_bow", "draconicevolution:wyvern_bow", 1, 7, -1),
        ("Виверновый меч (Wyvern Sword)", "draconicevolution:wyvern_sword", "draconicevolution:wyvern_sword", 1, 8, -1),
        ("Полный комплект брони Виверны", "draconicevolution:wyvern_chest", "draconicevolution:wyvern_chest", 1, 8, 0),
        ("Сердце Дракона Края (Dragon Heart)", "draconicevolution:dragon_heart", "draconicevolution:dragon_heart", 1, 9, 0),
        ("Пробужденный дракониевый блок", "draconicevolution:draconic_block", "draconicevolution:draconic_block", 4, 10, 0),
        ("Пробужденный драконий слиток", "draconicevolution:draconic_ingot", "draconicevolution:draconic_ingot", 16, 11, 0),
        ("Пробужденное ядро (Awakened Core)", "draconicevolution:awakened_core", "draconicevolution:awakened_core", 4, 12, 0),
        ("Драконический инжектор слияния (Draconic Injector)", "draconicevolution:crafting_injector:2", "draconicevolution:crafting_injector:2", 4, 13, 0),
        ("Драконическая кирка (Draconic Pickaxe 5x5)", "draconicevolution:draconic_pick", "draconicevolution:draconic_pick", 1, 14, 0),
        ("Драконический лук самонаведения", "draconicevolution:draconic_bow", "draconicevolution:draconic_bow", 1, 14, -1),
        ("Посох Силы Дракония (Staff of Power)", "draconicevolution:draconic_staff_of_power", "draconicevolution:draconic_staff_of_power", 1, 15, 0),
        ("Комплект брони Пробужденного Дракона", "draconicevolution:draconic_chest", "draconicevolution:draconic_chest", 1, 15, 1),
        ("Силовой щит 500k HP брони Дракона", "draconicevolution:draconic_chest", "draconicevolution:draconic_chest", 1, 16, 1),
        ("Контроллер Реактора Дракония", "draconicevolution:reactor_core", "draconicevolution:reactor_core", 1, 13, -1),
        ("Стабилизатор реактора дракония", "draconicevolution:reactor_component:0", "draconicevolution:reactor_component:0", 4, 14, -1),
        ("Запуск реактора: Миллионы RF/t", "draconicevolution:reactor_core", "draconicevolution:reactor_core", 1, 15, -1),
        ("Взрыв реактора дракония (Предупреждение!)", "draconicevolution:reactor_core", "draconicevolution:reactor_core", 1, 16, -1),
        ("Остров Хаоса (Chaos Island 10000 блоков)", "draconicevolution:chaos_shard", "draconicevolution:chaos_shard", 1, 16, 0),
        ("Битва: Страж Хаоса (Chaos Guardian)", "draconicevolution:chaos_shard", "draconicevolution:chaos_shard", 1, 17, 0),
        ("Осколок Хаоса (Chaos Shard)", "draconicevolution:chaos_shard", "draconicevolution:chaos_shard", 4, 18, 0),
        ("Инжектор Хаоса (Chaotic Injector Tier 4)", "draconicevolution:crafting_injector:3", "draconicevolution:crafting_injector:3", 4, 19, 0),
        ("Ядро Хаоса (Chaotic Core)", "draconicevolution:chaotic_core", "draconicevolution:chaotic_core", 2, 20, 0),
        ("Сингулярность Нексуса (Гейт s09)", "contenttweaker:nexus_singularity", "contenttweaker:nexus_singularity", 1, 21, 0),
        ("Повелитель Энергии Драконов", "draconicevolution:draconic_staff_of_power", "draconicevolution:draconic_staff_of_power", 1, 22, 0)
    ]

    for idx, (dname, icon_id, task_id, cnt, c, r) in enumerate(de_nodes):
        is_gate = (idx == 37)
        q_ch29.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 3 or idx == 6 or idx == 21 or idx == 25 or idx == 33 or is_gate),
            "name": dname,
            "desc": f"Драконическая мощь Draconic Evolution: {dname}. Слияние ядер, пробужденный драконий, Посох Силы, реактор дракония и битва со Стражем Хаоса.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("draconicevolution:draconic_ingot", 4), ("draconicevolution:awakened_core", 1)],
            "xp": 600 if not is_gate else 1000,
            "loot_tier": 4,
            "prereqs": [idx - 1] if idx > 0 and idx not in [8, 14, 28, 32] else [],
            "command": "/gamestage add VAR_NAME s10_convergence" if is_gate else None,
            "command_desc": "Переход в эпоху конвергенции (s10_convergence)" if is_gate else None
        })

    chapters.append(build_chapter(
        line_id=29, order=29,
        line_name="Глава 29: Мощь Драконов: Draconic Evolution",
        line_desc="Слияние ядер, сферы энергии триллионов RF, Посох Силы, реактор дракония, Остров Хаоса и Осколки Хаоса.",
        line_icon_spec=("draconicevolution:draconic_core", 1),
        base_qid=1450, quest_specs=q_ch29
    ))

    # =========================================================================
    # CHAPTER 30: Экспертные Верстаки: Extended Crafting (QIDs 1500-1549)
    # =========================================================================
    q_ch30 = []
    ec_nodes = [
        ("Черное железо (Black Iron Ingot)", "extendedcrafting:material:0", "extendedcrafting:material:0", 16, 0, 0),
        ("Блок черного железа", "extendedcrafting:storage:0", "extendedcrafting:storage:0", 4, 1, 0),
        ("Люминессенция (Luminessence)", "extendedcrafting:material:7", "extendedcrafting:material:7", 16, 1, 1),
        ("Базовый катализатор (Basic Catalyst)", "extendedcrafting:material:8", "extendedcrafting:material:8", 4, 2, 0),
        ("Базовый компонент (Basic Component)", "extendedcrafting:material:14", "extendedcrafting:material:14", 8, 2, 1),
        ("Базовый стол создания 3x3 (Basic Table)", "extendedcrafting:table_basic", "extendedcrafting:table_basic", 1, 3, 0),
        ("Продвинутый катализатор (Advanced Catalyst)", "extendedcrafting:material:9", "extendedcrafting:material:9", 4, 4, 0),
        ("Продвинутый компонент (Advanced Component)", "extendedcrafting:material:15", "extendedcrafting:material:15", 8, 4, 1),
        ("Продвинутый стол создания 5x5 (Advanced Table)", "extendedcrafting:table_advanced", "extendedcrafting:table_advanced", 1, 5, 0),
        ("Элитный катализатор (Elite Catalyst)", "extendedcrafting:material:10", "extendedcrafting:material:10", 4, 6, 0),
        ("Элитный компонент (Elite Component)", "extendedcrafting:material:16", "extendedcrafting:material:16", 8, 6, 1),
        ("Элитный стол создания 7x7 (Elite Table)", "extendedcrafting:table_elite", "extendedcrafting:table_elite", 1, 7, 0),
        ("Абсолютный катализатор (Ultimate Catalyst)", "extendedcrafting:material:11", "extendedcrafting:material:11", 4, 8, 0),
        ("Абсолютный компонент (Ultimate Component)", "extendedcrafting:material:17", "extendedcrafting:material:17", 8, 8, 1),
        ("Абсолютный стол создания 9x9 (Ultimate Table)", "extendedcrafting:table_ultimate", "extendedcrafting:table_ultimate", 1, 9, 0),
        ("Кристалтиновый слиток (Crystaltine Ingot)", "extendedcrafting:material:24", "extendedcrafting:material:24", 16, 8, -1),
        ("Блок кристалтина", "extendedcrafting:storage:3", "extendedcrafting:storage:3", 4, 9, -1),
        ("Сжатый сундук Avaritiaddons (7x7 Рецепт)", "avaritiaddons:avaritiaddons_chest:0", "avaritiaddons:avaritiaddons_chest:0", 1, 10, 0),
        ("Квантовый компрессор (Quantum Compressor)", "extendedcrafting:compressor", "extendedcrafting:compressor", 1, 6, 2),
        ("Крафтовый инжектор компрессора", "extendedcrafting:crafting_core", "extendedcrafting:crafting_core", 4, 7, 2),
        ("Сингулярность железа (Iron Singularity)", "extendedcrafting:singularity:0", "extendedcrafting:singularity:0", 1, 8, 2),
        ("Сингулярность золота (Gold Singularity)", "extendedcrafting:singularity:1", "extendedcrafting:singularity:1", 1, 9, 2),
        ("Сингулярность меди (Copper Singularity)", "extendedcrafting:singularity:2", "extendedcrafting:singularity:2", 1, 10, 2),
        ("Сингулярность олова (Tin Singularity)", "extendedcrafting:singularity:3", "extendedcrafting:singularity:3", 1, 11, 2),
        ("Сингулярность свинца (Lead Singularity)", "extendedcrafting:singularity:4", "extendedcrafting:singularity:4", 1, 12, 2),
        ("Сингулярность серебра (Silver Singularity)", "extendedcrafting:singularity:5", "extendedcrafting:singularity:5", 1, 13, 2),
        ("Сингулярность никеля (Nickel Singularity)", "extendedcrafting:singularity:6", "extendedcrafting:singularity:6", 1, 14, 2),
        ("Сингулярность платины (Platinum Singularity)", "extendedcrafting:singularity:7", "extendedcrafting:singularity:7", 1, 15, 2),
        ("Сингулярность эндериума (Enderium Singularity)", "extendedcrafting:singularity:8", "extendedcrafting:singularity:8", 1, 16, 2),
        ("Сингулярность манюлина (Manyullyn Singularity)", "extendedcrafting:singularity:9", "extendedcrafting:singularity:9", 1, 17, 2),
        ("Абсолютный блок крафта Extended Crafting", "extendedcrafting:storage:4", "extendedcrafting:storage:4", 2, 11, 0),
        ("Мастер Расширенного Крафта 9x9", "extendedcrafting:table_ultimate", "extendedcrafting:table_ultimate", 1, 12, 0)
    ]

    for idx, (ename, icon_id, task_id, cnt, c, r) in enumerate(ec_nodes):
        q_ch30.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 5 or idx == 8 or idx == 11 or idx == 14 or idx == 18),
            "name": ename,
            "desc": f"Многомерное расширение верстаков Extended Crafting: {ename}. Столы создания 3x3, 5x5, 7x7 и 9x9, компрессия десятков тысяч слитков в сингулярности.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("extendedcrafting:material:24", 8), ("extendedcrafting:material:17", 2)],
            "xp": 600, "loot_tier": 4,
            "prereqs": [idx - 1] if idx > 0 and idx not in [18] else []
        })

    chapters.append(build_chapter(
        line_id=30, order=30,
        line_name="Глава 30: Экспертные Верстаки: Extended Crafting",
        line_desc="Верстаки 3x3, 5x5, 7x7 и 9x9, кристалтин, квантовый компрессор и сжатие десятков сингулярностей.",
        line_icon_spec=("extendedcrafting:table_ultimate", 1),
        base_qid=1500, quest_specs=q_ch30
    ))

    # =========================================================================
    # CHAPTER 31: Божественная Бесконечность: Avaritia & Endgame (QIDs 1550-1599)
    # =========================================================================
    q_ch31 = []
    av_nodes = [
        ("Алмазная решетка (Diamond Lattice)", "avaritia:resource:0", "avaritia:resource:0", 16, 0, 0),
        ("Кристальная матрица (Crystal Matrix Ingot)", "avaritia:resource:1", "avaritia:resource:1", 8, 1, 0),
        ("Нейтронный коллектор (Neutron Collector)", "avaritia:neutron_collector", "avaritia:neutron_collector", 4, 2, 0),
        ("Нейтронная пылинка (Neutron Pile)", "avaritia:resource:2", "avaritia:resource:2", 64, 3, 0),
        ("Нейтронный самородок (Neutron Nugget)", "avaritia:resource:3", "avaritia:resource:3", 9, 4, 0),
        ("Слиток Нейтрония (Neutronium Ingot)", "avaritia:resource:4", "avaritia:resource:4", 8, 5, 0),
        ("Блок Нейтрония (Neutronium Block)", "avaritia:block_resource:0", "avaritia:block_resource:0", 2, 6, 0),
        ("Нейтронный компрессор (Neutronium Compressor)", "avaritia:neutronium_compressor", "avaritia:neutronium_compressor", 1, 7, 0),
        ("Верстак Экстремального Крафта 9x9 (Extreme Table)", "avaritia:extreme_crafting_table", "avaritia:extreme_crafting_table", 1, 8, 0),
        ("Космические фрикадельки (Cosmic Meatballs)", "avaritia:cosmic_meatballs", "avaritia:cosmic_meatballs", 1, 8, 1),
        ("Абсолютное рагу (Ultimate Stew)", "avaritia:ultimate_stew", "avaritia:ultimate_stew", 1, 8, -1),
        ("Крайняя жемчужина (Endest Pearl)", "avaritia:endest_pearl", "avaritia:endest_pearl", 1, 9, 1),
        ("Фрагмент пластинки (Record Fragment)", "avaritia:resource:7", "avaritia:resource:7", 8, 9, -1),
        ("Катализатор Бесконечности (Infinity Catalyst)", "avaritia:resource:5", "avaritia:resource:5", 1, 10, 0),
        ("Слиток Бесконечности (Infinity Ingot)", "avaritia:resource:6", "avaritia:resource:6", 2, 11, 0),
        ("Блок Бесконечности (Infinity Block)", "avaritia:block_resource:1", "avaritia:block_resource:1", 1, 12, 0),
        ("Сундук Бесконечности (Avaritiaddons Infinity Chest)", "avaritiaddons:avaritiaddons_chest:1", "avaritiaddons:avaritiaddons_chest:1", 1, 12, 1),
        ("Автокрафтер Бесконечности (Extreme Auto Crafter)", "avaritiaddons:extreme_auto_crafter", "avaritiaddons:extreme_auto_crafter", 1, 13, 1),
        ("Кирка Крушитель Миров (World Breaker)", "avaritia:infinity_pickaxe", "avaritia:infinity_pickaxe", 1, 13, 0),
        ("Меч Космоса (Sword of the Cosmos - Бесконечный урон)", "avaritia:infinity_sword", "avaritia:infinity_sword", 1, 13, -1),
        ("Лук Длинных Лучей (Longbow of the Heavens)", "avaritia:infinity_bow", "avaritia:infinity_bow", 1, 14, -1),
        ("Топор Природы (Nature's Ruin)", "avaritia:infinity_axe", "avaritia:infinity_axe", 1, 14, 0),
        ("Лопата Разрушитель Планет (Planet Eater)", "avaritia:infinity_shovel", "avaritia:infinity_shovel", 1, 14, 1),
        ("Шлем Бесконечности (Infinity Helmet)", "avaritia:infinity_helmet", "avaritia:infinity_helmet", 1, 15, -1),
        ("Кираса Бесконечности (Infinity Breastplate)", "avaritia:infinity_chestplate", "avaritia:infinity_chestplate", 1, 15, 0),
        ("Поножи Бесконечности (Infinity Leggings)", "avaritia:infinity_pants", "avaritia:infinity_pants", 1, 15, 1),
        ("Ботинки Бесконечности (Infinity Boots)", "avaritia:infinity_boots", "avaritia:infinity_boots", 1, 15, 2),
        ("Комплект Богоподобного Бессмертия Avaritia", "avaritia:infinity_chestplate", "avaritia:infinity_chestplate", 1, 16, 0),
        ("Ядро Конвергенции Вселенной (Гейт s10: Триумф)", "contenttweaker:convergence_core", "contenttweaker:convergence_core", 1, 17, 0),
        ("Абсолютный Бог Вселенной Nexus Crucible", "contenttweaker:convergence_core", "contenttweaker:convergence_core", 1, 18, 0)
    ]

    for idx, (aname, icon_id, task_id, cnt, c, r) in enumerate(av_nodes):
        is_triumph = (idx == 28 or idx == 29)
        q_ch31.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 2 or idx == 8 or idx == 13 or idx == 14 or idx == 18 or idx == 24 or is_triumph),
            "name": aname,
            "desc": f"Эндгейм апофеоз Avaritia: {aname}. Нейтронные компрессоры, Катализатор Бесконечности, Слитки Бесконечности, Оружие Космоса и синтез финального Convergence Core.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("avaritia:resource:4", 4), ("avaritia:resource:5", 1)],
            "xp": 1000 if not is_triumph else 10000,
            "loot_tier": 4,
            "prereqs": [idx - 1] if idx > 0 else [],
            "command": "/gamestage add VAR_NAME s10_convergence" if is_triumph else None,
            "command_desc": "Финальный триумф Конвергенции (s10_convergence)" if is_triumph else None
        })

    chapters.append(build_chapter(
        line_id=31, order=31,
        line_name="Глава 31: Божественная Бесконечность: Avaritia & Endgame Convergence",
        line_desc="Нейтроний, Катализатор Бесконечности, Слитки Бесконечности, World Breaker, Sword of the Cosmos и Триумф Конвергенции.",
        line_icon_spec=("avaritia:resource:5", 1),
        base_qid=1550, quest_specs=q_ch31
    ))

    return chapters
