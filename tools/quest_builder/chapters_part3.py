#!/usr/bin/env python3
"""
Nexus Crucible - Quest Chapters Part 3 (Chapters 16-23, QIDs 800-1199)
Chapters:
  16: Запретные Исследования: Thaumic Tinkerer & Kami
  17: Программируемая Псионика: Psi
  18: Сплавы и Кондуиты: Ender IO
  19: Продвинутая Кибернетика: Ender IO & Endergy
  20: Органическая Переработка: Industrial Foregoing
  21: Атомарное Обогащение: Mekanism — 5x Руды
  22: Тяжелая Энергетика: Mekanism Generators
  23: Ядерный Распад и Слияние: NuclearCraft
"""

from .common import build_chapter

def get_chapters_part3():
    chapters = []

    # =========================================================================
    # CHAPTER 16: Запретные Исследования: Thaumic Tinkerer & Kami (QIDs 800-849)
    # =========================================================================
    q_ch16 = []
    tt_nodes = [
        ("Осмотический стол зачарований", "thaumictinkerer:osmotic_enchanter", "thaumictinkerer:osmotic_enchanter", 1, 0, 0),
        ("Столпы зачарований (Enchanter Pillars)", "thaumcraft:stone_arcane", "thaumcraft:stone_arcane", 6, 1, 0),
        ("Выбор любых чар без случайностей", "thaumictinkerer:osmotic_enchanter", "thaumictinkerer:osmotic_enchanter", 1, 2, 0),
        ("Магическая бездонная сумка", "thaumcraft:focus_1", "thaumcraft:focus_1", 1, 3, 0),
        ("Талисман удержания опыта", "thaumictinkerer:xp_talisman", "thaumictinkerer:xp_talisman", 1, 3, 1),
        ("Пьедестал наполнения опытом", "thaumictinkerer:xp_drain", "thaumictinkerer:xp_drain", 1, 4, 1),
        ("Ихор (Ichor - Божественная материя)", "thaumictinkerer:kami_resource:0", "thaumictinkerer:kami_resource:0", 1, 4, 0),
        ("Ткань небес (Cloth of Celestial)", "thaumictinkerer:kami_resource:1", "thaumictinkerer:kami_resource:1", 4, 5, 0),
        ("Слиток Ихория (Ichorium Ingot)", "thaumictinkerer:kami_resource:2", "thaumictinkerer:kami_resource:2", 4, 6, 0),
        ("Ихориевая кирка (Pickaxe of the Core)", "thaumictinkerer:ichor_pick", "thaumictinkerer:ichor_pick", 1, 7, 0),
        ("Ихориевый топор (Axe of the Stream)", "thaumictinkerer:ichor_axe", "thaumictinkerer:ichor_axe", 1, 7, 1),
        ("Ихориевая лопата (Shovel of the Earthmover)", "thaumictinkerer:ichor_shovel", "thaumictinkerer:ichor_shovel", 1, 7, -1),
        ("Ихориевый меч (Sword of the Condor)", "thaumictinkerer:ichor_sword", "thaumictinkerer:ichor_sword", 1, 8, 0),
        ("Капюшон Ками (Ichorcloth Helm)", "thaumictinkerer:ichor_helm", "thaumictinkerer:ichor_helm", 1, 8, -1),
        ("Мантия Ками (Ichorcloth Chest)", "thaumictinkerer:ichor_chest", "thaumictinkerer:ichor_chest", 1, 8, 1),
        ("Поножи Ками (Ichorcloth Legs)", "thaumictinkerer:ichor_legs", "thaumictinkerer:ichor_legs", 1, 9, 1),
        ("Сапоги Ками (Ichorcloth Boots)", "thaumictinkerer:ichor_boots", "thaumictinkerer:ichor_boots", 1, 9, -1),
        ("Пробужденный ихориевый слиток", "thaumictinkerer:kami_resource:6", "thaumictinkerer:kami_resource:6", 4, 9, 0),
        ("Пробужденная кирка (Каменоломня 5x5)", "thaumictinkerer:ichor_pick_gem", "thaumictinkerer:ichor_pick_gem", 1, 10, 0),
        ("Пробужденный топор (Сруб целого леса)", "thaumictinkerer:ichor_axe_gem", "thaumictinkerer:ichor_axe_gem", 1, 10, 1),
        ("Пробужденная лопата (Выравнивание земли)", "thaumictinkerer:ichor_shovel_gem", "thaumictinkerer:ichor_shovel_gem", 1, 10, -1),
        ("Пробужденный меч (Убийство по площади)", "thaumictinkerer:ichor_sword_gem", "thaumictinkerer:ichor_sword_gem", 1, 11, 0),
        ("Венец откровений Ками", "thaumictinkerer:ichor_helm_gem", "thaumictinkerer:ichor_helm_gem", 1, 11, -1),
        ("Мантия вечной защиты Ками", "thaumictinkerer:ichor_chest_gem", "thaumictinkerer:ichor_chest_gem", 1, 11, 1),
        ("Щитовые поножи Ками", "thaumictinkerer:ichor_legs_gem", "thaumictinkerer:ichor_legs_gem", 1, 12, 1),
        ("Сапоги путешественника в измерениях", "thaumictinkerer:ichor_boots_gem", "thaumictinkerer:ichor_boots_gem", 1, 12, -1),
        ("Комплект Пробужденного Бога Ками", "thaumictinkerer:ichor_chest_gem", "thaumictinkerer:ichor_chest_gem", 1, 12, 0),
        ("Бездонный осколок измерений (Bottomless)", "thaumictinkerer:kami_resource:7", "thaumictinkerer:kami_resource:7", 1, 13, 0),
        ("Разрушитель заклинаний (Spellbreaker)", "thaumictinkerer:kami_resource:2", "thaumictinkerer:kami_resource:2", 1, 13, 1),
        ("Глаз бездны Бедрока", "thaumictinkerer:kami_resource:7", "thaumictinkerer:kami_resource:7", 1, 14, 0),
        ("Пробитие коренной породы Бедрока", "minecraft:bedrock", "minecraft:bedrock", 1, 14, 1),
        ("Измерение Бедрока (Bedrock Dimension)", "minecraft:bedrock", "minecraft:bedrock", 1, 15, 0),
        ("Бесконечные залежи руд Бедрока", "thermalfoundation:ore:0", "thermalfoundation:ore:0", 64, 15, 1),
        ("Черный ихориевый блок", "thaumictinkerer:kami_resource:2", "thaumictinkerer:kami_resource:2", 2, 16, 0),
        ("Магический репликатор материи", "thaumictinkerer:kami_resource:6", "thaumictinkerer:kami_resource:6", 1, 16, 1),
        ("Инфузия трансцендентности", "thaumcraft:infusion_matrix", "thaumcraft:infusion_matrix", 1, 17, 0),
        ("Вис-инжектор бесконечной магии", "thaumictinkerer:kami_resource:2", "thaumictinkerer:kami_resource:2", 1, 17, 1),
        ("Амулет божественного света", "thaumictinkerer:kami_resource:0", "thaumictinkerer:kami_resource:0", 1, 18, 0),
        ("Кольцо рассеивания искажения", "thaumictinkerer:kami_resource:0", "thaumictinkerer:kami_resource:0", 1, 18, 1),
        ("Пояс парения над бездной", "thaumictinkerer:kami_resource:1", "thaumictinkerer:kami_resource:1", 1, 18, -1),
        ("Сингулярная эссенция Ками", "thaumictinkerer:kami_resource:6", "thaumictinkerer:kami_resource:6", 4, 19, 0),
        ("Корона владыки семи небес", "thaumictinkerer:ichor_helm_gem", "thaumictinkerer:ichor_helm_gem", 1, 19, 1),
        ("Ихориевый жезл бесконечной силы", "thaumictinkerer:kami_resource:2", "thaumictinkerer:kami_resource:2", 1, 20, 0),
        ("Владыка Запретного Ихора", "thaumictinkerer:ichor_chest_gem", "thaumictinkerer:ichor_chest_gem", 1, 21, 0)
    ]

    for idx, (tname, icon_id, task_id, cnt, c, r) in enumerate(tt_nodes):
        q_ch16.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 6 or idx == 8 or idx == 17 or idx == 26 or idx == 31),
            "name": tname,
            "desc": f"Запретные знания Thaumic Tinkerer: {tname}. Синтез божественного Ихора, пробужденное снаряжение Ками, копание 5x5 и путешествие в измерение Бедрока.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("thaumictinkerer:kami_resource:0", 2), ("thaumictinkerer:kami_resource:2", 1)],
            "xp": 500, "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [4, 13, 27] else []
        })

    chapters.append(build_chapter(
        line_id=16, order=16,
        line_name="Глава 16: Запретные Исследования: Thaumic Tinkerer & Kami",
        line_desc="Осмотический стол зачарований, божественный Ихор, Пробужденное снаряжение Ками и измерение Бедрока.",
        line_icon_spec=("thaumictinkerer:kami_resource:0", 1),
        base_qid=800, quest_specs=q_ch16
    ))

    # =========================================================================
    # CHAPTER 17: Программируемая Псионика: Psi (QIDs 850-899)
    # =========================================================================
    q_ch17 = []
    psi_nodes = [
        ("Сборщик CAD (CAD Assembler)", "psi:cad_assembler", "psi:cad_assembler", 1, 0, 0),
        ("Программатор заклинаний (Spell Programmer)", "psi:programmer", "psi:programmer", 1, 1, 0),
        ("Базовый CAD-корпус (Iron Assembly)", "psi:cad_assembly:0", "psi:cad_assembly:0", 1, 2, 0),
        ("Базовый стержень (CAD Core)", "psi:cad_core:0", "psi:cad_core:0", 1, 2, 1),
        ("Базовая батарея CAD (Socket)", "psi:cad_socket:0", "psi:cad_socket:0", 1, 2, -1),
        ("Аккумулятор пси-энергии (Battery)", "psi:cad_battery:0", "psi:cad_battery:0", 1, 3, -1),
        ("Инфузия пси-пыли (Psi Dust)", "psi:material:0", "psi:material:0", 16, 3, 0),
        ("Слиток Пси-металла (Psimetal)", "psi:material:1", "psi:material:1", 8, 4, 0),
        ("Пси-самоцвет (Psigem)", "psi:material:2", "psi:material:2", 4, 4, 1),
        ("Пуля заклинания (Spell Bullet)", "psi:spell_bullet:0", "psi:spell_bullet:0", 4, 5, 0),
        ("Пуля снаряда (Projectile Bullet)", "psi:spell_bullet:1", "psi:spell_bullet:1", 2, 5, 1),
        ("Пуля круга (Circle Bullet)", "psi:spell_bullet:2", "psi:spell_bullet:2", 2, 5, -1),
        ("Пуля гранаты (Grenade Bullet)", "psi:spell_bullet:3", "psi:spell_bullet:3", 2, 6, 1),
        ("Пуля заряда (Charge Bullet)", "psi:spell_bullet:4", "psi:spell_bullet:4", 2, 6, -1),
        ("Пуля мины (Mine Bullet)", "psi:spell_bullet:5", "psi:spell_bullet:5", 2, 6, 0),
        ("Заклинание: Взрывное копание", "psi:spell_bullet:0", "psi:spell_bullet:0", 1, 7, 0),
        ("Заклинание: Полет и ускорение", "psi:spell_bullet:0", "psi:spell_bullet:0", 1, 7, 1),
        ("Заклинание: Огненный шквал", "psi:spell_bullet:0", "psi:spell_bullet:0", 1, 7, -1),
        ("Заклинание: Массовое возведение стен", "psi:spell_bullet:0", "psi:spell_bullet:0", 1, 8, 0),
        ("Пси-кирка (Psimetal Pickaxe)", "psi:psimetal_pickaxe", "psi:psimetal_pickaxe", 1, 8, 1),
        ("Пси-топор (Psimetal Axe)", "psi:psimetal_axe", "psi:psimetal_axe", 1, 8, -1),
        ("Пси-лопата (Psimetal Shovel)", "psi:psimetal_shovel", "psi:psimetal_shovel", 1, 9, 1),
        ("Пси-меч (Psimetal Sword)", "psi:psimetal_sword", "psi:psimetal_sword", 1, 9, -1),
        ("Пси-броня сенсорного щита", "psi:psimetal_chestplate", "psi:psimetal_chestplate", 1, 9, 0),
        ("Эбеновый пси-металл (Ebony Psimetal)", "psi:material:3", "psi:material:3", 8, 10, 0),
        ("Слоновый пси-металл (Ivory Psimetal)", "psi:material:4", "psi:material:4", 8, 10, 1),
        ("Эбеновый корпус CAD (Tier 5)", "psi:cad_assembly:4", "psi:cad_assembly:4", 1, 11, 0),
        ("Слоновый корпус CAD (Tier 5)", "psi:cad_assembly:5", "psi:cad_assembly:5", 1, 11, 1),
        ("Сверхпроводящий стержень CAD", "psi:cad_core:4", "psi:cad_core:4", 1, 12, 0),
        ("Батарея бесконечного пси-потока", "psi:cad_battery:4", "psi:cad_battery:4", 1, 12, 1),
        ("Гнездо 12 патронов CAD", "psi:cad_socket:4", "psi:cad_socket:4", 1, 13, 0),
        ("Датчик заклинаний: Свет", "psi:vector_ruler", "psi:vector_ruler", 1, 10, -1),
        ("Датчик заклинаний: Время", "psi:vector_ruler", "psi:vector_ruler", 1, 11, -1),
        ("Датчик заклинаний: Повреждения", "psi:vector_ruler", "psi:vector_ruler", 1, 12, -1),
        ("Векторная линейка Psi (Vector Ruler)", "psi:vector_ruler", "psi:vector_ruler", 1, 13, -1),
        ("Пси-экзоскелет полного контроля", "psi:psimetal_chestplate", "psi:psimetal_chestplate", 1, 14, 0),
        ("Эбеновая кирка абсолютного бурения", "psi:psimetal_pickaxe", "psi:psimetal_pickaxe", 1, 14, 1),
        ("Заклинание: Гравитационный разлом", "psi:spell_bullet:2", "psi:spell_bullet:2", 1, 15, 0),
        ("Заклинание: Телепортация сквозь стены", "psi:spell_bullet:1", "psi:spell_bullet:1", 1, 15, 1),
        ("Псионический Трикстер Высшего Ранга", "psi:cad_assembly:5", "psi:cad_assembly:5", 1, 16, 0)
    ]

    for idx, (pname, icon_id, task_id, cnt, c, r) in enumerate(psi_nodes):
        q_ch17.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 2 or idx == 7 or idx == 9 or idx == 24 or idx == 26),
            "name": pname,
            "desc": f"Программирование реальности Psi: {pname}. Создание CAD-манипулятора, написание кода заклинаний на сетке и эбеново-слоновый пси-металл.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("psi:material:1", 4), ("psi:material:2", 2)],
            "xp": 350, "loot_tier": 2 if idx < 20 else 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [9, 19, 31] else []
        })

    chapters.append(build_chapter(
        line_id=17, order=17,
        line_name="Глава 17: Программируемая Псионика: Psi",
        line_desc="CAD-сборка, программатор заклинаний, пули, математические векторы и эбеновые технологии.",
        line_icon_spec=("psi:cad_assembly:0", 1),
        base_qid=850, quest_specs=q_ch17
    ))

    # =========================================================================
    # CHAPTER 18: Сплавы и Кондуиты: Ender IO (QIDs 900-949)
    # =========================================================================
    q_ch18 = []
    eio_nodes = [
        ("Простой плавильщик сплавов (Simple Alloy Smelter)", "enderio:block_simple_alloy_smelter", "enderio:block_simple_alloy_smelter", 1, 0, 0),
        ("Простой дробитель (Simple SAG Mill)", "enderio:block_simple_sag_mill", "enderio:block_simple_sag_mill", 1, 0, 1),
        ("Простой генератор на угле", "enderio:block_simple_stirling_generator", "enderio:block_simple_stirling_generator", 1, 0, -1),
        ("Кремний Ender IO (Silicon)", "enderio:item_material:5", "enderio:item_material:5", 16, 1, 0),
        ("Сплав: Электрическая сталь (Electrical Steel)", "enderio:item_alloy_ingot:0", "enderio:item_alloy_ingot:0", 16, 2, 0),
        ("Сплав: Энергетический сплав (Energetic Alloy)", "enderio:item_alloy_ingot:1", "enderio:item_alloy_ingot:1", 16, 2, 1),
        ("Сплав: Вибрирующий сплав (Vibrant Alloy)", "enderio:item_alloy_ingot:2", "enderio:item_alloy_ingot:2", 8, 3, 1),
        ("Сплав: Красный камень (Redstone Alloy)", "enderio:item_alloy_ingot:3", "enderio:item_alloy_ingot:3", 16, 2, -1),
        ("Сплав: Проводящее железо (Conductive Iron)", "enderio:item_alloy_ingot:4", "enderio:item_alloy_ingot:4", 16, 3, -1),
        ("Сплав: Пульсирующее железо (Pulsating Iron)", "enderio:item_alloy_ingot:5", "enderio:item_alloy_ingot:5", 16, 4, -1),
        ("Сплав: Темная сталь (Dark Steel)", "enderio:item_alloy_ingot:6", "enderio:item_alloy_ingot:6", 16, 4, 0),
        ("Сплав: Душевное золото (Soularium)", "enderio:item_alloy_ingot:7", "enderio:item_alloy_ingot:7", 8, 4, 1),
        ("Индустриальное шасси (Industrial Machine Chassis)", "enderio:item_material:1", "enderio:item_material:1", 4, 5, 0),
        ("Продвинутый плавильщик сплавов", "enderio:block_alloy_smelter", "enderio:block_alloy_smelter", 1, 6, 0),
        ("Дробитель SAG Mill с кремниевыми шарами", "enderio:block_sag_mill", "enderio:block_sag_mill", 1, 6, 1),
        ("Кремниевые шары измельчения (Flint Shears)", "enderio:item_material:57", "enderio:item_material:57", 16, 7, 1),
        ("Покрасочный станок (Painting Machine)", "enderio:block_painting_machine", "enderio:block_painting_machine", 1, 6, -1),
        ("Жидкостный резервуар (Fluid Tank)", "enderio:block_tank:0", "enderio:block_tank:0", 1, 7, -1),
        ("Энергетический кондуит (Energy Conduit 640 RF/t)", "enderio:item_power_conduit:0", "enderio:item_power_conduit:0", 16, 5, 2),
        ("Улучшенный энергетический кондуит (5120 RF/t)", "enderio:item_power_conduit:1", "enderio:item_power_conduit:1", 16, 6, 2),
        ("Эндериевый кондуит энергии (20480 RF/t)", "enderio:item_power_conduit:2", "enderio:item_power_conduit:2", 16, 7, 2),
        ("Предметный кондуит (Item Conduit)", "enderio:item_item_conduit", "enderio:item_item_conduit", 16, 8, 2),
        ("Фильтр предметов кондуита", "enderio:item_basic_item_filter", "enderio:item_basic_item_filter", 4, 9, 2),
        ("Продвинутый фильтр с NBT и рудами", "enderio:item_advanced_item_filter", "enderio:item_advanced_item_filter", 2, 10, 2),
        ("Жидкостный кондуит (Fluid Conduit)", "enderio:item_liquid_conduit:0", "enderio:item_liquid_conduit:0", 16, 8, 1),
        ("Герметичный жидкостный кондуит", "enderio:item_liquid_conduit:1", "enderio:item_liquid_conduit:1", 16, 9, 1),
        ("Редстоун-кондуит (Redstone Conduit)", "enderio:item_redstone_conduit", "enderio:item_redstone_conduit", 16, 8, 0),
        ("Многоцелевой кондуитный пучок (Все в одном блоке)", "enderio:item_item_conduit", "enderio:item_item_conduit", 1, 9, 0),
        ("Базовый конденсатор (Basic Capacitor)", "enderio:item_basic_capacitor:0", "enderio:item_basic_capacitor:0", 4, 7, 0),
        ("Двухслойный конденсатор (Double-Layer)", "enderio:item_basic_capacitor:1", "enderio:item_basic_capacitor:1", 2, 8, 0),
        ("Октадический конденсатор (Octadic Capacitor)", "enderio:item_basic_capacitor:2", "enderio:item_basic_capacitor:2", 1, 9, 0),
        ("Кирка темной стали (Dark Pick)", "enderio:item_dark_steel_pickaxe", "enderio:item_dark_steel_pickaxe", 1, 10, 0),
        ("Топор темной стали (Dark Axe)", "enderio:item_dark_steel_axe", "enderio:item_dark_steel_axe", 1, 10, 1),
        ("Меч темной стали (The Ender)", "enderio:item_dark_steel_sword", "enderio:item_dark_steel_sword", 1, 10, -1),
        ("Шлем темной стали (Dark Helm)", "enderio:item_dark_steel_helmet", "enderio:item_dark_steel_helmet", 1, 11, -1),
        ("Кираса темной стали (Dark Plate)", "enderio:item_dark_steel_chestplate", "enderio:item_dark_steel_chestplate", 1, 11, 0),
        ("Поножи темной стали (Dark Leggings)", "enderio:item_dark_steel_leggings", "enderio:item_dark_steel_leggings", 1, 11, 1),
        ("Сапоги темной стали (Dark Boots с прыжком)", "enderio:item_dark_steel_boots", "enderio:item_dark_steel_boots", 1, 11, 2),
        ("Электромагнит Electromagnet", "enderio:item_magnet:0", "enderio:item_magnet:0", 1, 12, 0),
        ("Флакон для поимки душ (Soul Vial)", "enderio:item_soul_vial:0", "enderio:item_soul_vial:0", 4, 12, 1),
        ("Электрический спавнер душ (Powered Spawner)", "enderio:block_powered_spawner", "enderio:block_powered_spawner", 1, 13, 1),
        ("Чарователь (Enchanter)", "enderio:block_enchanter", "enderio:block_enchanter", 1, 12, -1),
        ("Снятие зачарований (The Vat)", "enderio:block_vat", "enderio:block_vat", 1, 13, -1),
        ("Генератор на питательной жидкости (Zombie Gen)", "enderio:block_zombie_generator", "enderio:block_zombie_generator", 1, 13, 0),
        ("Беспроводной зарядник (Wireless Charger)", "enderio:block_wireless_charger", "enderio:block_wireless_charger", 1, 14, 0),
        ("Пространственный телепорт (Dimensional Transceiver)", "enderio:block_transceiver", "enderio:block_transceiver", 2, 14, 1),
        ("Капиллярный бак охлаждения", "enderio:block_enhanced_combustion_generator", "enderio:block_enhanced_combustion_generator", 1, 15, 0),
        ("Главный Инженер Ender IO", "enderio:item_basic_capacitor:2", "enderio:item_basic_capacitor:2", 4, 16, 0)
    ]

    for idx, (ename, icon_id, task_id, cnt, c, r) in enumerate(eio_nodes):
        q_ch18.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 4 or idx == 10 or idx == 12 or idx == 21 or idx == 30 or idx == 45),
            "name": ename,
            "desc": f"Сплавы и высокотехнологичные кондуиты Ender IO: {ename}. Плавка сплавов, размещение всех типов труб в одном блоке, октадические конденсаторы и спавнеры душ.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("enderio:item_alloy_ingot:6", 4), ("enderio:item_basic_capacitor:1", 2)],
            "xp": 350, "loot_tier": 2 if idx < 20 else 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [18, 31, 39] else []
        })

    chapters.append(build_chapter(
        line_id=18, order=18,
        line_name="Глава 18: Сплавы и Кондуиты: Ender IO",
        line_desc="Плавильня сплавов, темная сталь, компактные кондуиты всех типов, октадические конденсаторы и спавн душ.",
        line_icon_spec=("enderio:block_alloy_smelter", 1),
        base_qid=900, quest_specs=q_ch18
    ))

    # =========================================================================
    # CHAPTER 19: Продвинутая Кибернетика: Ender IO & Endergy (QIDs 950-999)
    # =========================================================================
    q_ch19 = []
    energy_nodes = [
        ("Улучшенное машинное шасси (Enhanced Chassis)", "enderio:item_material:54", "enderio:item_material:54", 2, 0, 0),
        ("Улучшенный плавильщик сплавов", "enderio:block_enhanced_alloy_smelter", "enderio:block_enhanced_alloy_smelter", 1, 1, 0),
        ("Улучшенный SAG Mill", "enderio:block_enhanced_sag_mill", "enderio:block_enhanced_sag_mill", 1, 1, 1),
        ("Звездный сплав (Stellar Alloy)", "enderio:item_alloy_endergy_ingot:3", "enderio:item_alloy_endergy_ingot:3", 8, 2, 0),
        ("Эндериевый сплав Endergy", "enderio:item_alloy_endergy_ingot:5", "enderio:item_alloy_endergy_ingot:5", 8, 2, 1),
        ("Сплав Кристальной стали (Crystalline Alloy)", "enderio:item_alloy_endergy_ingot:2", "enderio:item_alloy_endergy_ingot:2", 8, 2, -1),
        ("Сплав Мелодиума (Melodic Alloy)", "enderio:item_alloy_endergy_ingot:4", "enderio:item_alloy_endergy_ingot:4", 4, 3, 0),
        ("Сплав Вивидия (Vivid Alloy)", "enderio:item_alloy_endergy_ingot:6", "enderio:item_alloy_endergy_ingot:6", 8, 3, 1),
        ("Конденсатор серебряного слоя (Silver Capacitor)", "enderio:item_capacitor_silver", "enderio:item_capacitor_silver", 2, 4, 0),
        ("Конденсатор эндериевого слоя (Enderium Cap)", "enderio:item_capacitor_enderium", "enderio:item_capacitor_enderium", 2, 5, 0),
        ("Кристальный конденсатор (Crystalline Cap)", "enderio:item_capacitor_crystalline", "enderio:item_capacitor_crystalline", 2, 6, 0),
        ("Мелодический конденсатор (Melodic Cap)", "enderio:item_capacitor_melodic", "enderio:item_capacitor_melodic", 1, 7, 0),
        ("Звездный конденсатор (Stellar Capacitor)", "enderio:item_capacitor_stellar", "enderio:item_capacitor_stellar", 1, 8, 0),
        ("Сверхпроводящий кондуит энергии (100k RF/t)", "enderio:item_power_conduit:2", "enderio:item_power_conduit:2", 16, 5, 1),
        ("Звездный кондуит энергии (1M RF/t)", "enderio:item_power_conduit:2", "enderio:item_power_conduit:2", 16, 6, 1),
        ("Бесконечный кондуит энергии", "enderio:item_power_conduit:2", "enderio:item_power_conduit:2", 8, 7, 1),
        ("Звездная кирка (Stellar Pickaxe)", "enderio:item_dark_steel_pickaxe", "enderio:item_dark_steel_pickaxe", 1, 9, 0),
        ("Звездный топор (Stellar Axe)", "enderio:item_dark_steel_axe", "enderio:item_dark_steel_axe", 1, 9, 1),
        ("Звездный меч (Stellar Sword)", "enderio:item_dark_steel_sword", "enderio:item_dark_steel_sword", 1, 9, -1),
        ("Звездный шлем (Stellar Helmet)", "enderio:item_dark_steel_helmet", "enderio:item_dark_steel_helmet", 1, 10, -1),
        ("Звездная кираса (Stellar Chestplate)", "enderio:item_dark_steel_chestplate", "enderio:item_dark_steel_chestplate", 1, 10, 0),
        ("Звездные поножи (Stellar Leggings)", "enderio:item_dark_steel_leggings", "enderio:item_dark_steel_leggings", 1, 10, 1),
        ("Звездные ботинки (Stellar Boots)", "enderio:item_dark_steel_boots", "enderio:item_dark_steel_boots", 1, 10, 2),
        ("Модуль нано-щита звездной брони", "enderio:item_dark_steel_chestplate", "enderio:item_dark_steel_chestplate", 1, 11, 0),
        ("Полет на звездном глайдере", "enderio:item_dark_steel_chestplate", "enderio:item_dark_steel_chestplate", 1, 11, 1),
        ("Улучшенный электромагнит", "enderio:item_magnet:0", "enderio:item_magnet:0", 1, 11, -1),
        ("Генератор на антиматерии Endergy", "enderio:block_enhanced_combustion_generator", "enderio:block_enhanced_combustion_generator", 1, 12, 0),
        ("Эндериевый солнечный массив", "enderio:block_solar_panel:3", "enderio:block_solar_panel:3", 4, 12, 1),
        ("Звездный солнечный массив (5120 RF/t)", "enderio:block_solar_panel:3", "enderio:block_solar_panel:3", 4, 13, 1),
        ("Беспроводной трансмиттер энергии 100 блоков", "enderio:block_wireless_charger", "enderio:block_wireless_charger", 1, 12, -1),
        ("Продвинутый телепорт измерений", "enderio:block_transceiver", "enderio:block_transceiver", 2, 13, 0),
        ("Квантовый сжиматель предметов", "enderio:block_enhanced_alloy_smelter", "enderio:block_enhanced_alloy_smelter", 1, 14, 0),
        ("Модуль скорости X8 кондуита", "enderio:item_extract_speed_upgrade", "enderio:item_extract_speed_upgrade", 16, 14, 1),
        ("Модуль скорости X15 кондуита (Сверхбыстрый)", "enderio:item_extract_speed_downgrade", "enderio:item_extract_speed_downgrade", 8, 15, 1),
        ("Газовый кондуит высокого давления", "enderio:item_gas_conduit:2", "enderio:item_gas_conduit:2", 16, 13, -1),
        ("Абсолютный фильтр сущностей", "enderio:item_advanced_item_filter", "enderio:item_advanced_item_filter", 1, 15, 0),
        ("Звездный разрядник материи", "enderio:item_alloy_endergy_ingot:3", "enderio:item_alloy_endergy_ingot:3", 16, 16, 0),
        ("Кибернетический Владыка Endergy", "enderio:item_capacitor_stellar", "enderio:item_capacitor_stellar", 2, 17, 0)
    ]

    for idx, (ename, icon_id, task_id, cnt, c, r) in enumerate(energy_nodes):
        q_ch19.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 3 or idx == 12 or idx == 20 or idx == 28),
            "name": ename,
            "desc": f"Энергетическая кульминация Ender IO Endergy: {ename}. Звездные сплавы, звездные конденсаторы колоссальной мощности и броня высшей защиты.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("enderio:item_alloy_endergy_ingot:3", 4), ("enderio:item_capacitor_melodic", 1)],
            "xp": 450, "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [13, 16, 26] else []
        })

    chapters.append(build_chapter(
        line_id=19, order=19,
        line_name="Глава 19: Продвинутая Кибернетика: Ender IO & Endergy",
        line_desc="Звездная сталь, звездные конденсаторы, кондуиты на миллионы RF/t, звездные солнечные массивы и нано-доспехи.",
        line_icon_spec=("enderio:item_capacitor_stellar", 1),
        base_qid=950, quest_specs=q_ch19
    ))

    # =========================================================================
    # CHAPTER 20: Органическая Переработка: Industrial Foregoing (QIDs 1000-1049)
    # =========================================================================
    q_ch20 = []
    if_nodes = [
        ("Экстрактор древесного сока (Tree Fluid Extractor)", "industrialforegoing:tree_fluid_extractor", "industrialforegoing:tree_fluid_extractor", 1, 0, 0),
        ("Жидкий латекс (Liquid Latex)", "industrialforegoing:latex", "industrialforegoing:latex", 1, 1, 0),
        ("Камера обработки латекса (Latex Processing Unit)", "industrialforegoing:latex_processing_unit", "industrialforegoing:latex_processing_unit", 1, 2, 0),
        ("Крошка сухого пластика (Dry Rubber)", "industrialforegoing:dryrubber", "industrialforegoing:dryrubber", 16, 3, 0),
        ("Пластиковый лист (Plastic Sheet)", "industrialforegoing:plastic", "industrialforegoing:plastic", 16, 4, 0),
        ("Пластиковый каркас механизма (Pity Machine Frame)", "industrialforegoing:machine_frame:0", "industrialforegoing:machine_frame:0", 2, 5, 0),
        ("Простой каркас (Simple Machine Frame)", "industrialforegoing:machine_frame:1", "industrialforegoing:machine_frame:1", 2, 5, 1),
        ("Продвинутый каркас (Advanced Machine Frame)", "industrialforegoing:machine_frame:2", "industrialforegoing:machine_frame:2", 2, 5, -1),
        ("Сборщик сточных вод (Sewage Collector)", "industrialforegoing:sewage_collector", "industrialforegoing:sewage_collector", 1, 6, 1),
        ("Сточные воды (Sewage)", "industrialforegoing:sewage", "industrialforegoing:sewage", 1, 7, 1),
        ("Компостер удобрений (Sewage Composter)", "industrialforegoing:sewage_composter", "industrialforegoing:sewage_composter", 1, 8, 1),
        ("Промышленное удобрение (Fertilizer IF)", "industrialforegoing:fertilizer", "industrialforegoing:fertilizer", 16, 9, 1),
        ("Удобритель полей (Plant Fertilizer)", "industrialforegoing:plant_fertilizer", "industrialforegoing:plant_fertilizer", 1, 10, 1),
        ("Сеялка растений (Plant Sower)", "industrialforegoing:plant_sower", "industrialforegoing:plant_sower", 1, 6, 0),
        ("Комбайн сбора урожая (Plant Gatherer)", "industrialforegoing:plant_gatherer", "industrialforegoing:plant_gatherer", 1, 7, 0),
        ("Ферма слизи (Sludge Refiner)", "industrialforegoing:sludge_refiner", "industrialforegoing:sludge_refiner", 1, 8, 0),
        ("Дробитель мобов (Mob Crusher)", "industrialforegoing:mob_crusher", "industrialforegoing:mob_crusher", 1, 6, -1),
        ("Жидкая эссенция мобов (Liquid Meat & Essence)", "industrialforegoing:essence", "industrialforegoing:essence", 1, 7, -1),
        ("Убийца мобов без дропа (Mob Slaughter Factory)", "industrialforegoing:mob_slaughter_factory", "industrialforegoing:mob_slaughter_factory", 1, 8, -1),
        ("Жидкое мясо (Liquid Meat)", "industrialforegoing:meat", "industrialforegoing:meat", 1, 9, -1),
        ("Мясная кормушка (Meat Feeder)", "industrialforegoing:meat_feeder", "industrialforegoing:meat_feeder", 1, 10, -1),
        ("Лазерный бур пустоты (Laser Drill)", "industrialforegoing:laser_drill", "industrialforegoing:laser_drill", 4, 9, 0),
        ("Базовый лазерный контроллер руды (Laser Base)", "industrialforegoing:laser_base", "industrialforegoing:laser_base", 1, 10, 0),
        ("Линза лазера: Железо и медь", "industrialforegoing:laser_lens:0", "industrialforegoing:laser_lens:0", 1, 11, 0),
        ("Линза лазера: Алмазы и редстоун", "industrialforegoing:laser_lens:1", "industrialforegoing:laser_lens:1", 1, 11, 1),
        ("Лазерный контроллер нефти (Fluid Laser Base)", "industrialforegoing:laser_base", "industrialforegoing:laser_base", 1, 11, -1),
        ("Биореактор органики (BioReactor)", "industrialforegoing:bioreactor", "industrialforegoing:bioreactor", 1, 7, 2),
        ("Биотопливо (Biofuel)", "industrialforegoing:biofuel", "industrialforegoing:biofuel", 1, 8, 2),
        ("Биогенератор энергии (Biofuel Generator)", "industrialforegoing:biofuel_generator", "industrialforegoing:biofuel_generator", 1, 9, 2),
        ("Улучшение дальности +1..+12 (Range Addon)", "industrialforegoing:range_addon:11", "industrialforegoing:range_addon:11", 2, 8, -2),
        ("Улучшение скорости работы машины", "industrialforegoing:energy_field_addon", "industrialforegoing:energy_field_addon", 2, 9, -2),
        ("Магнитный притягиватель предметов", "industrialforegoing:item_stack_transfer_addon_push", "industrialforegoing:item_stack_transfer_addon_push", 1, 10, -2),
        ("Черная дыра для предметов (Black Hole Unit)", "industrialforegoing:black_hole_unit", "industrialforegoing:black_hole_unit", 1, 12, 0),
        ("Черная дыра для жидкостей (Black Hole Tank)", "industrialforegoing:black_hole_tank", "industrialforegoing:black_hole_tank", 1, 12, 1),
        ("Контроллер черных дыр (Black Hole Controller)", "industrialforegoing:black_hole_controller", "industrialforegoing:black_hole_controller", 1, 13, 0),
        ("Автоматический стригальщик овец (Animal Independence)", "industrialforegoing:animal_independence_selector", "industrialforegoing:animal_independence_selector", 1, 12, -1),
        ("Ферма размножения животных (Animal Baby Separator)", "industrialforegoing:animal_baby_separator", "industrialforegoing:animal_baby_separator", 1, 13, -1),
        ("Автоматический доильщик (Animal Resource)", "industrialforegoing:animal_resource_gatherer", "industrialforegoing:animal_resource_gatherer", 1, 14, -1),
        ("Экстрактор зачарований (Enchantment Extractor)", "industrialforegoing:enchantment_extractor", "industrialforegoing:enchantment_extractor", 1, 13, 1),
        ("Насыщатель зачарованиями (Enchantment Applicator)", "industrialforegoing:enchantment_applicator", "industrialforegoing:enchantment_applicator", 1, 14, 1),
        ("Промышленный инкубатор растений", "industrialforegoing:plant_interactor", "industrialforegoing:plant_interactor", 1, 14, 0),
        ("Магнат Органического Пластика", "industrialforegoing:plastic", "industrialforegoing:plastic", 64, 15, 0)
    ]

    for idx, (iname, icon_id, task_id, cnt, c, r) in enumerate(if_nodes):
        q_ch20.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 4 or idx == 5 or idx == 16 or idx == 21 or idx == 32),
            "name": iname,
            "desc": f"Промышленная автоматика Industrial Foregoing: {iname}. Добыча латекса, варка пластика, биореакторы, лазерный бур и хранилища Black Hole.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("industrialforegoing:plastic", 16), ("industrialforegoing:dryrubber", 8)],
            "xp": 350, "loot_tier": 2 if idx < 20 else 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [8, 13, 16, 21, 26, 35] else []
        })

    chapters.append(build_chapter(
        line_id=20, order=20,
        line_name="Глава 20: Органическая Переработка: Industrial Foregoing",
        line_desc="Латекс, сухой пластик, автоматические фермы деревьев, дробители мобов, лазерный бур и Black Hole Units.",
        line_icon_spec=("industrialforegoing:plastic", 1),
        base_qid=1000, quest_specs=q_ch20
    ))

    # =========================================================================
    # CHAPTER 21: Атомарное Обогащение: Mekanism — 5x Руды (QIDs 1050-1099)
    # =========================================================================
    q_ch21 = []
    mek_nodes = [
        ("Базовый каркас механизма Mekanism", "mekanism:basicblock:8", "mekanism:basicblock:8", 2, 0, 0),
        ("Обогатительная фабрика (Enrichment Chamber)", "mekanism:machineblock:0", "mekanism:machineblock:0", 1, 1, 0),
        ("Удвоение руд (2x Цепочка)", "mekanism:dust:0", "mekanism:dust:0", 16, 2, 0),
        ("Электролитический сепаратор (Electrolytic Separator)", "mekanism:machineblock2:4", "mekanism:machineblock2:4", 1, 2, 1),
        ("Газ: Водород и Кислород", "mekanism:gas_tank", "mekanism:gas_tank", 1, 3, 1),
        ("Камера очистки (Purification Chamber)", "mekanism:machineblock:1", "mekanism:machineblock:1", 1, 3, 0),
        ("Утроение руд (3x Цепочка: Кислородная очистка)", "mekanism:clump:0", "mekanism:clump:0", 16, 4, 0),
        ("Дробитель рудных комков (Crusher Mekanism)", "mekanism:machineblock:3", "mekanism:machineblock:3", 1, 5, 0),
        ("Завод химического впрыска (Chemical Injection)", "mekanism:machineblock2:3", "mekanism:machineblock2:3", 1, 5, 1),
        ("Газообразный хлор (Chlorine)", "mekanism:gas_tank", "mekanism:gas_tank", 1, 6, 1),
        ("Четверение руд (4x Цепочка: Хлорные осколки)", "mekanism:shard:0", "mekanism:shard:0", 16, 6, 0),
        ("Химический растворитель (Chemical Dissolution)", "mekanism:machineblock2:6", "mekanism:machineblock2:6", 1, 7, 0),
        ("Серная кислота (Sulfuric Acid)", "mekanism:gas_tank", "mekanism:gas_tank", 1, 7, 1),
        ("Химический омыватель (Chemical Washer)", "mekanism:machineblock2:7", "mekanism:machineblock2:7", 1, 8, 0),
        ("Химический кристаллизатор (Chemical Crystallizer)", "mekanism:machineblock2:8", "mekanism:machineblock2:8", 1, 9, 0),
        ("Пятикратная очистка руд (5x Цепочка: Кристаллы)", "mekanism:crystal:0", "mekanism:crystal:0", 16, 10, 0),
        ("Термический испаритель (Thermal Evaporation)", "mekanism:basicblock:14", "mekanism:basicblock:14", 36, 6, -1),
        ("Солнечная панель испарителя", "mekanismgenerators:generator:1", "mekanismgenerators:generator:1", 4, 7, -1),
        ("Производство жидкого лития (Liquid Lithium)", "mekanism:gas_tank", "mekanism:gas_tank", 1, 8, -1),
        ("Металлургический инфузер (Metallurgic Infuser)", "mekanism:machineblock:8", "mekanism:machineblock:8", 1, 2, -1),
        ("Обогащенный сплав (Enriched Alloy)", "mekanism:enrichedalloy", "mekanism:enrichedalloy", 16, 3, -1),
        ("Укрепленный сплав (Reinforced Alloy)", "mekanism:reinforcedalloy", "mekanism:reinforcedalloy", 8, 4, -1),
        ("Атомарный сплав (Atomic Alloy)", "mekanism:atomicalloy", "mekanism:atomicalloy", 4, 5, -1),
        ("Базовая управляющая микросхема (Basic Circuit)", "mekanism:controlcircuit:0", "mekanism:controlcircuit:0", 8, 3, -2),
        ("Продвинутая микросхема (Advanced Circuit)", "mekanism:controlcircuit:1", "mekanism:controlcircuit:1", 4, 4, -2),
        ("Элитная микросхема (Elite Circuit)", "mekanism:controlcircuit:2", "mekanism:controlcircuit:2", 2, 5, -2),
        ("Абсолютная микросхема (Ultimate Control Circuit)", "mekanism:controlcircuit:3", "mekanism:controlcircuit:3", 1, 6, -2),
        ("Универсальный кабель передачи энергии (Universal Cable)", "mekanism:transmitter:0", "mekanism:transmitter:0", 16, 1, 2),
        ("Механическая труба для жидкостей (Mechanical Pipe)", "mekanism:transmitter:1", "mekanism:transmitter:1", 16, 2, 2),
        ("Герметичная труба для газов (Pressurized Tube)", "mekanism:transmitter:2", "mekanism:transmitter:2", 16, 3, 2),
        ("Логистический транспортер предметов", "mekanism:transmitter:3", "mekanism:transmitter:3", 16, 4, 2),
        ("Улучшение скорости механизма (Speed Upgrade)", "mekanism:speedupgrade", "mekanism:speedupgrade", 8, 5, 2),
        ("Улучшение энергии механизма (Energy Upgrade)", "mekanism:energyupgrade", "mekanism:energyupgrade", 8, 6, 2),
        ("Улучшение очистки газа (Gas Upgrade)", "mekanism:gasupgrade", "mekanism:gasupgrade", 8, 7, 2),
        ("Улучшение глушителя звука (Muffler Upgrade)", "mekanism:mufflerupgrade", "mekanism:mufflerupgrade", 4, 8, 2),
        ("Атомарный разборщик (Atomic Disassembler)", "mekanism:atomicdisassembler", "mekanism:atomicdisassembler", 1, 11, 0),
        ("Цифровой шахтер (Digital Miner)", "mekanism:machineblock:4", "mekanism:machineblock:4", 1, 11, 1),
        ("Фильтрация руд в Цифровом Шахтере", "mekanism:machineblock:4", "mekanism:machineblock:4", 1, 12, 1),
        ("Квантовый телепорт (Quantum Entangloporter)", "mekanism:machineblock3:0", "mekanism:machineblock3:0", 2, 12, 0),
        ("Реактивный ранец (Armored Jetpack)", "mekanism:armoredjetpack", "mekanism:armoredjetpack", 1, 9, -1),
        ("Водолазный скафандр (Scuba Mask)", "mekanism:scubamask", "mekanism:scubamask", 1, 10, -1),
        ("Свободный бегун (Free Runners)", "mekanism:freerunners", "mekanism:freerunners", 1, 10, -2),
        ("Индукционная матрица энергии (Induction Matrix)", "mekanism:basicblock2:0", "mekanism:basicblock2:0", 1, 13, 0),
        ("Индукционный элемент Ultimate (Tera-RF)", "mekanism:basicblock2:4", "mekanism:basicblock2:4", 4, 14, 0),
        ("Индукционный провайдер Ultimate", "mekanism:basicblock2:7", "mekanism:basicblock2:7", 2, 14, 1),
        ("Генератор сжатого воздуха", "mekanism:machineblock2:11", "mekanism:machineblock2:11", 1, 15, 0),
        ("Повелитель Атомарных Цепочек 5x", "mekanism:crystal:0", "mekanism:crystal:0", 32, 16, 0)
    ]

    for idx, (mname, icon_id, task_id, cnt, c, r) in enumerate(mek_nodes):
        q_ch21.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 1 or idx == 5 or idx == 8 or idx == 15 or idx == 26 or idx == 36),
            "name": mname,
            "desc": f"Высокотехнологичная переработка Mekanism: {mname}. Развертывание 5x цепочки умножения руд, химические растворители, абсолютные микросхемы и Цифровой Шахтер.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("mekanism:atomicalloy", 2), ("mekanism:controlcircuit:3", 2)],
            "xp": 400, "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [16, 19, 27, 35] else []
        })

    chapters.append(build_chapter(
        line_id=21, order=21,
        line_name="Глава 21: Атомарное Обогащение: Mekanism — 5x Руды",
        line_desc="Обогащение, очистка, химический впрыск, 5x кристаллы руд, абсолютные микросхемы и Цифровой Шахтер.",
        line_icon_spec=("mekanism:basicblock:8", 1),
        base_qid=1050, quest_specs=q_ch21
    ))

    # =========================================================================
    # CHAPTER 22: Тяжелая Энергетика: Mekanism Generators (QIDs 1100-1149)
    # =========================================================================
    q_ch22 = []
    gen_nodes = [
        ("Тепловой генератор (Heat Generator)", "mekanismgenerators:generator:0", "mekanismgenerators:generator:0", 1, 0, 0),
        ("Солнечный генератор (Solar Generator)", "mekanismgenerators:generator:1", "mekanismgenerators:generator:1", 1, 1, 0),
        ("Продвинутый солнечный массив", "mekanismgenerators:generator:5", "mekanismgenerators:generator:5", 4, 2, 0),
        ("Ветряной генератор (Wind Generator 192 RF/t)", "mekanismgenerators:generator:6", "mekanismgenerators:generator:6", 2, 2, 1),
        ("Биогенератор (Bio-Generator)", "mekanismgenerators:generator:4", "mekanismgenerators:generator:4", 1, 2, -1),
        ("Газовый генератор (Gas-Burning Generator)", "mekanismgenerators:generator:3", "mekanismgenerators:generator:3", 1, 3, 0),
        ("Сжигание этилена (Ethylene - 8k RF/t)", "mekanism:gas_tank", "mekanism:gas_tank", 1, 4, 0),
        ("Паровая турбина Mekanism (Многоблок)", "mekanismgenerators:generator:7", "mekanismgenerators:generator:7", 1, 5, 0),
        ("Турбинный ротор (Turbine Rotor)", "mekanismgenerators:generator:8", "mekanismgenerators:generator:8", 6, 6, 0),
        ("Турбинные лопасти (Turbine Blades)", "mekanismgenerators:generator:9", "mekanismgenerators:generator:9", 12, 6, 1),
        ("Электромагнитная катушка турбины", "mekanismgenerators:generator:11", "mekanismgenerators:generator:11", 4, 7, 0),
        ("Вентиль выпуска пара", "mekanismgenerators:generator:12", "mekanismgenerators:generator:12", 2, 7, 1),
        ("Генерация 500k+ RF/t в турбине", "mekanismgenerators:generator:7", "mekanismgenerators:generator:7", 1, 8, 0),
        ("Термоядерный реактор (Fusion Reactor Controller)", "mekanismgenerators:reactor:0", "mekanismgenerators:reactor:0", 1, 9, 0),
        ("Рама термоядерного реактора", "mekanismgenerators:reactor:1", "mekanismgenerators:reactor:1", 36, 10, 0),
        ("Порт термоядерного реактора", "mekanismgenerators:reactor:2", "mekanismgenerators:reactor:2", 4, 10, 1),
        ("Стекло термоядерного реактора", "mekanismgenerators:reactor:3", "mekanismgenerators:reactor:3", 16, 10, -1),
        ("Топливо дейтерий (Deuterium)", "mekanism:gas_tank", "mekanism:gas_tank", 1, 11, 0),
        ("Топливо тритий (Tritium)", "mekanism:gas_tank", "mekanism:gas_tank", 1, 11, 1),
        ("D-T смесь высокой мощности", "mekanism:gas_tank", "mekanism:gas_tank", 1, 12, 0),
        ("Лазерный усилитель зажигания (Laser Amplifier)", "mekanism:machineblock2:14", "mekanism:machineblock2:14", 1, 12, 1),
        ("Лазерная пушка разогрева (Laser)", "mekanism:machineblock2:13", "mekanism:machineblock2:13", 4, 13, 1),
        ("Запуск термоядерного синтеза 500M+ K", "mekanismgenerators:reactor:0", "mekanismgenerators:reactor:0", 1, 13, 0),
        ("Генерация десятков миллионов RF/t", "mekanismgenerators:reactor:0", "mekanismgenerators:reactor:0", 1, 14, 0),
        ("Охлаждение жидким натрием", "mekanism:gas_tank", "mekanism:gas_tank", 1, 14, 1),
        ("Сверхкритический паровой цикл", "mekanismgenerators:generator:7", "mekanismgenerators:generator:7", 1, 15, 0),
        ("Термоядерный Триумф Mekanism", "mekanismgenerators:reactor:0", "mekanismgenerators:reactor:0", 1, 16, 0)
    ]

    for idx, (gname, icon_id, task_id, cnt, c, r) in enumerate(gen_nodes):
        q_ch22.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 3 or idx == 7 or idx == 13 or idx == 22),
            "name": gname,
            "desc": f"Генерация колоссальной энергии: {gname}. Газотурбинные циклы, многоблочные турбины и лазерный запуск термоядерного синтеза D-T.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("mekanism:atomicalloy", 4), ("mekanismgenerators:generator:6", 2)],
            "xp": 450, "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [7, 13] else []
        })

    chapters.append(build_chapter(
        line_id=22, order=22,
        line_name="Глава 22: Тяжелая Энергетика: Mekanism Generators",
        line_desc="Ветрогенераторы, сжигание этилена, паровая супертурбина, лазерное зажигание и термоядерный реактор Fusion.",
        line_icon_spec=("mekanismgenerators:generator:6", 1),
        base_qid=1100, quest_specs=q_ch22
    ))

    # =========================================================================
    # CHAPTER 23: Ядерный Распад и Слияние: NuclearCraft (QIDs 1150-1199)
    # =========================================================================
    q_ch23 = []
    nc_nodes = [
        ("Контроллер реактора деления (Fission Controller)", "nuclearcraft:fission_controller_new_fixed", "nuclearcraft:fission_controller_new_fixed", 1, 0, 0),
        ("Рама реактора NuclearCraft", "nuclearcraft:fission_casing", "nuclearcraft:fission_casing", 32, 1, 0),
        ("Стекло реактора NuclearCraft", "nuclearcraft:fission_glass", "nuclearcraft:fission_glass", 16, 1, 1),
        ("Топливная ячейка деления (Fuel Cell)", "nuclearcraft:cell", "nuclearcraft:cell", 8, 2, 0),
        ("Графитовый замедлитель нейтронов", "nuclearcraft:ingot:8", "nuclearcraft:ingot:8", 16, 2, 1),
        ("Бериллиевый замедлитель (Beryllium)", "nuclearcraft:ingot:9", "nuclearcraft:ingot:9", 8, 2, -1),
        ("Водяной охладитель (Water Cooler)", "nuclearcraft:cooler:1", "nuclearcraft:cooler:1", 8, 3, 0),
        ("Охладитель из красного камня (Redstone Cooler)", "nuclearcraft:cooler:2", "nuclearcraft:cooler:2", 4, 3, 1),
        ("Кварцевый охладитель (Quartz Cooler)", "nuclearcraft:cooler:3", "nuclearcraft:cooler:3", 4, 3, -1),
        ("Золотой охладитель (Gold Cooler)", "nuclearcraft:cooler:4", "nuclearcraft:cooler:4", 4, 4, 1),
        ("Светящийся охладитель (Glowstone Cooler)", "nuclearcraft:cooler:5", "nuclearcraft:cooler:5", 4, 4, -1),
        ("Лазуритовый охладитель (Lapis Cooler)", "nuclearcraft:cooler:6", "nuclearcraft:cooler:6", 4, 4, 0),
        ("Алмазный охладитель (Diamond Cooler)", "nuclearcraft:cooler:7", "nuclearcraft:cooler:7", 2, 5, 0),
        ("Жидкий гелиевый охладитель (Liquid Helium)", "nuclearcraft:cooler:8", "nuclearcraft:cooler:8", 2, 5, 1),
        ("Криотековый охладитель (Cryotheum Cooler)", "nuclearcraft:cooler:10", "nuclearcraft:cooler:10", 2, 5, -1),
        ("Урановое топливо LEU-235", "nuclearcraft:fuel_uranium:0", "nuclearcraft:fuel_uranium:0", 4, 6, 0),
        ("Высокообогащенный уран HEU-235", "nuclearcraft:fuel_uranium:4", "nuclearcraft:fuel_uranium:4", 4, 7, 0),
        ("Плутониевое топливо LEP-239", "nuclearcraft:fuel_plutonium:0", "nuclearcraft:fuel_plutonium:0", 4, 8, 0),
        ("Топливо Кюрия LEC-243", "nuclearcraft:fuel_curium:0", "nuclearcraft:fuel_curium:0", 4, 9, 0),
        ("Топливо Калифорния LEC-250", "nuclearcraft:fuel_californium:0", "nuclearcraft:fuel_californium:0", 2, 10, 0),
        ("Ториевое топливо TBU (Thorium)", "nuclearcraft:fuel_thorium:0", "nuclearcraft:fuel_thorium:0", 4, 6, 1),
        ("Отработанное ядерное топливо", "nuclearcraft:depleted_fuel_uranium:0", "nuclearcraft:depleted_fuel_uranium:0", 4, 7, 1),
        ("Изотопный сепаратор (Isotope Separator)", "nuclearcraft:separator", "nuclearcraft:separator", 1, 8, 1),
        ("Камера распада (Decay Hastener)", "nuclearcraft:decay_hastener", "nuclearcraft:decay_hastener", 1, 9, 1),
        ("Топливный переработчик (Fuel Reprocessor)", "nuclearcraft:reprocessor", "nuclearcraft:reprocessor", 1, 10, 1),
        ("Счетчик Гейгера (Geiger Counter)", "nuclearcraft:geiger_counter", "nuclearcraft:geiger_counter", 1, 6, -1),
        ("Костюм радиационной защиты HAZMAT", "nuclearcraft:helm_hazmat", "nuclearcraft:helm_hazmat", 1, 7, -1),
        ("Тяжелый сплав Tough Alloy", "nuclearcraft:alloy:1", "nuclearcraft:alloy:1", 16, 8, -1),
        ("Твердосплавный карбид вольфрама", "nuclearcraft:alloy:2", "nuclearcraft:alloy:2", 8, 9, -1),
        ("Сверхпроводящий кабель NuclearCraft", "nuclearcraft:alloy:6", "nuclearcraft:alloy:6", 8, 10, -1),
        ("Термоядерное ядро NuclearCraft (Fusion Core)", "nuclearcraft:fusion_core", "nuclearcraft:fusion_core", 1, 11, 0),
        ("Магнитные катушки термоядерного реактора", "nuclearcraft:fusion_electromagnet_idle", "nuclearcraft:fusion_electromagnet_idle", 16, 12, 0),
        ("Термоядерный инжектор плазмы", "nuclearcraft:fusion_core", "nuclearcraft:fusion_core", 1, 13, 0),
        ("Слияние Водород-1 и Бор-11 (H-B Synthesis)", "nuclearcraft:fusion_core", "nuclearcraft:fusion_core", 1, 14, 0),
        ("Производство чистого гелия и нейтронов", "nuclearcraft:fusion_core", "nuclearcraft:fusion_core", 1, 15, 0),
        ("Стабилизированный квантовый субстрат (Гейт s07)", "contenttweaker:stabilized_quantum_substrate", "contenttweaker:stabilized_quantum_substrate", 1, 16, 0),
        ("Владыка Ядерных Реакций", "nuclearcraft:fusion_core", "nuclearcraft:fusion_core", 1, 17, 0)
    ]

    for idx, (nname, icon_id, task_id, cnt, c, r) in enumerate(nc_nodes):
        is_gate = (idx == 35)
        q_ch23.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 0 or idx == 6 or idx == 15 or idx == 30 or is_gate),
            "name": nname,
            "desc": f"Ядерная физика NuclearCraft: {nname}. Проектирование активной зоны реактора, расчет теплоотвода охладителями, переработка изотопов и термоядерный синтез.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("nuclearcraft:alloy:1", 8), ("nuclearcraft:cooler:7", 2)],
            "xp": 450 if not is_gate else 900,
            "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [6, 15, 25, 30] else [],
            "command": "/gamestage add VAR_NAME s08_celestial_synthesis" if is_gate else None,
            "command_desc": "Переход в эпоху небесного синтеза (s08_celestial_synthesis)" if is_gate else None
        })

    chapters.append(build_chapter(
        line_id=23, order=23,
        line_name="Глава 23: Ядерный Распад и Слияние: NuclearCraft",
        line_desc="Реакторы деления, расчет охлаждения, изотопы плутония и калифорния, радиационная защита и синтез H-B.",
        line_icon_spec=("nuclearcraft:fission_controller_new_fixed", 1),
        base_qid=1150, quest_specs=q_ch23
    ))

    return chapters
