#!/usr/bin/env python3
"""
Nexus Crucible - Quest Chapters Part 1 (Chapters 0-7, QIDs 0-399)
Chapters:
  0: Пролог: Первобытное Выживание
  1: Кузнечное Дело: Tinkers' Construct
  2: Кулинария и Фермерство: Pam's Harvestcraft
  3: Паровая Эра: Immersive Engineering
  4: Тяжелая Нефтехимия: Immersive Petroleum & Tech
  5: Цветочная Магия: Botania — Основы
  6: Эльфийская Магия и Террасталь: Botania — Продвинутая
  7: Звездный Свет: Astral Sorcery — Основы
"""

from .common import build_chapter

def get_chapters_part1():
    chapters = []

    # =========================================================================
    # CHAPTER 0: Пролог: Первобытное Выживание (QIDs 0-49)
    # =========================================================================
    q_ch0 = []
    # 0: Стартовый квест
    q_ch0.append({
        "id": 0, "col": 0, "row": 0, "is_main": True,
        "name": "Добро пожаловать в Nexus Crucible",
        "desc": "Добро пожаловать в техно-магический кошмар и триумф инженерной мысли! Ванильные инструменты заблокированы. Соберите кремний и палки, чтобы начать выживание.",
        "icon": ("minecraft:flint", 1),
        "tasks": [("minecraft:flint", 3)],
        "rewards": [("minecraft:apple", 8), ("minecraft:torch", 16)],
        "xp": 50, "loot_tier": 1, "prereqs": []
    })
    # 1: Растительные волокна
    q_ch0.append({
        "id": 1, "col": 1, "row": 0,
        "name": "Растительные Волокна и Веревка",
        "desc": "Срезайте траву или ломайте листву, чтобы добыть растительные волокна. Они служат основой первых связок и факелов.",
        "icon": ("minecraft:string", 1),
        "tasks": [("minecraft:string", 4)],
        "rewards": [("minecraft:bread", 6)],
        "xp": 50, "loot_tier": 1, "prereqs": [0]
    })
    # 2: Древесина
    q_ch0.append({
        "id": 2, "col": 1, "row": 1,
        "name": "Первая Древесина",
        "desc": "Рубите деревья голыми руками или примитивным кремневым топориком. Дерево — базис любой цивилизации.",
        "icon": ("minecraft:log", 1),
        "tasks": [("minecraft:log", 8)],
        "rewards": [("minecraft:sapling", 4)],
        "xp": 50, "loot_tier": 1, "prereqs": [0]
    })
    # 3: Верстак
    q_ch0.append({
        "id": 3, "col": 2, "row": 1,
        "name": "Столярное Дело: Верстак",
        "desc": "Создайте верстак для базового крафта компонентов и деревянных конструкций.",
        "icon": ("minecraft:crafting_table", 1),
        "tasks": [("minecraft:crafting_table", 1)],
        "rewards": [("minecraft:planks", 16)],
        "xp": 50, "loot_tier": 1, "prereqs": [2]
    })
    # 4: Глина
    q_ch0.append({
        "id": 4, "col": 1, "row": -1,
        "name": "Береговая Глина",
        "desc": "Ныряйте в реки и болота за глиной. Обожжённая глина и формы понадобятся для металлургии.",
        "icon": ("minecraft:clay_ball", 1),
        "tasks": [("minecraft:clay_ball", 16)],
        "rewards": [("minecraft:brick", 8)],
        "xp": 60, "loot_tier": 1, "prereqs": [0]
    })
    # 5: Глиняное ведро
    q_ch0.append({
        "id": 5, "col": 2, "row": -1,
        "name": "Глиняное Ведро",
        "desc": "Железное ведро пока недоступно. Слепите сырое глиняное ведро и обожгите его в печи. Осторожно: лава его разрушит!",
        "icon": ("claybucket:claybucket", 1),
        "tasks": [("claybucket:claybucket", 1)],
        "rewards": [("minecraft:cooked_beef", 4)],
        "xp": 70, "loot_tier": 1, "prereqs": [4]
    })
    # 6: Спальный мешок
    q_ch0.append({
        "id": 6, "col": 2, "row": 0,
        "name": "Ночлег Кочевника",
        "desc": "Спальный мешок позволяет пропустить ночь без сброса точки возрождения. Незаменим в долгих геологических походах.",
        "icon": ("openblocks:sleeping_bag", 1),
        "tasks": [("openblocks:sleeping_bag", 1)],
        "rewards": [("minecraft:wool", 3)],
        "xp": 80, "loot_tier": 1, "prereqs": [1]
    })
    # 7: Сундуки для хранения
    q_ch0.append({
        "id": 7, "col": 3, "row": 1,
        "name": "Порядок в Вещах",
        "desc": "Создайте первые деревянные сундуки. Скоро инвентарь переполнится камнями и рудой.",
        "icon": ("minecraft:chest", 1),
        "tasks": [("minecraft:chest", 2)],
        "rewards": [("minecraft:log", 8)],
        "xp": 60, "loot_tier": 1, "prereqs": [3]
    })
    # 8: Печь
    q_ch0.append({
        "id": 8, "col": 3, "row": 2,
        "name": "Каменная Печь",
        "desc": "Добудьте булыжник и сложите базовую печь для обжига кирпичей, глины и приготовления пищи.",
        "icon": ("minecraft:furnace", 1),
        "tasks": [("minecraft:furnace", 1)],
        "rewards": [("minecraft:coal", 8)],
        "xp": 70, "loot_tier": 1, "prereqs": [3]
    })
    # 9: Древесный уголь
    q_ch0.append({
        "id": 9, "col": 4, "row": 2,
        "name": "Древесный Уголь",
        "desc": "Обжиг древесины даёт древесный уголь — первое надежное топливо до нахождения каменного угля.",
        "icon": ("minecraft:coal:1", 1),
        "tasks": [("minecraft:coal:1", 8)],
        "rewards": [("minecraft:torch", 16)],
        "xp": 60, "loot_tier": 1, "prereqs": [8]
    })
    # 10: Рюкзак путешественника
    q_ch0.append({
        "id": 10, "col": 3, "row": 0,
        "name": "Кожаный Рюкзак",
        "desc": "Сшейте первый походный рюкзак, чтобы носить с собой больше инструментов и образцов минералов.",
        "icon": ("backpack:backpack:0", 1),
        "tasks": [("backpack:backpack:0", 1)],
        "rewards": [("minecraft:leather", 4)],
        "xp": 100, "loot_tier": 1, "prereqs": [6]
    })
    # 11-49: Остальные квесты первобытной эры (камни, кости, факелы, мощеные ступени, хранилища, фауна)
    primitive_items = [
        ("Каменный нож", "minecraft:flint", "minecraft:flint", 4, 1),
        ("Первый факел", "minecraft:torch", "minecraft:torch", 16, 2),
        ("Костяная мука", "minecraft:dye:15", "minecraft:bone", 4, -1),
        ("Кожаная выделка", "minecraft:leather", "minecraft:leather", 6, 0),
        ("Булыжник", "minecraft:cobblestone", "minecraft:cobblestone", 64, 1),
        ("Песчаник пустынь", "minecraft:sandstone", "minecraft:sand", 32, -2),
        ("Стекловарное дело", "minecraft:glass", "minecraft:glass", 16, -1),
        ("Факелы из смолы", "minecraft:torch", "minecraft:coal", 16, 2),
        ("Деревянная чаша", "minecraft:bowl", "minecraft:bowl", 4, 3),
        ("Сбор диких семян", "minecraft:wheat_seeds", "minecraft:wheat_seeds", 16, -2),
        ("Сноп пшеницы", "minecraft:wheat", "minecraft:wheat", 16, -2),
        ("Примитивная наковальня", "tconstruct:tooltables:0", "minecraft:wood", 4, 1),
        ("Таблички маркировки", "minecraft:sign", "minecraft:sign", 3, 2),
        ("Лестницы для спуска", "minecraft:ladder", "minecraft:ladder", 16, 1),
        ("Забор безопасности", "minecraft:fence", "minecraft:fence", 16, 3),
        ("Деревянная дверь", "minecraft:wooden_door", "minecraft:wooden_door", 2, 3),
        ("Каменные плиты", "minecraft:stone_slab", "minecraft:stone_slab", 16, 2),
        ("Красная глина терракоты", "minecraft:hardened_clay", "minecraft:hardened_clay", 8, -1),
        ("Бумага из тростника", "minecraft:reeds", "minecraft:paper", 12, -2),
        ("Книга записей", "minecraft:book", "minecraft:book", 1, -2),
        ("Чернильный мешок", "minecraft:dye:0", "minecraft:dye:0", 4, -3),
        ("Перо для письма", "minecraft:feather", "minecraft:feather", 4, -3),
        ("Факел из редстоуна", "minecraft:redstone_torch", "minecraft:redstone_torch", 4, 1),
        ("Каменная кнопка", "minecraft:stone_button", "minecraft:stone_button", 2, 2),
        ("Нажимная плита", "minecraft:stone_pressure_plate", "minecraft:stone_pressure_plate", 2, 2),
        ("Рычаг активации", "minecraft:lever", "minecraft:lever", 2, 2),
        ("Деревянный люк", "minecraft:trapdoor", "minecraft:trapdoor", 4, 3),
        ("Железная руда (Поиск)", "minecraft:iron_ore", "minecraft:iron_ore", 8, 4),
        ("Медная руда (Поиск)", "thermalfoundation:ore:0", "thermalfoundation:ore:0", 8, 4),
        ("Оловянная руда (Поиск)", "thermalfoundation:ore:1", "thermalfoundation:ore:1", 8, 4),
        ("Свинцовая руда (Поиск)", "thermalfoundation:ore:3", "thermalfoundation:ore:3", 8, 4),
        ("Серебряная руда (Поиск)", "thermalfoundation:ore:2", "thermalfoundation:ore:2", 8, 4),
        ("Никелевая руда (Поиск)", "thermalfoundation:ore:5", "thermalfoundation:ore:5", 8, 4),
        ("Кварц нижнего мира", "minecraft:quartz", "minecraft:quartz", 16, 5),
        ("Адский камень", "minecraft:netherrack", "minecraft:netherrack", 32, 5),
        ("Песок душ", "minecraft:soul_sand", "minecraft:soul_sand", 8, 5),
        ("Светопыль", "minecraft:glowstone_dust", "minecraft:glowstone_dust", 16, 5),
        ("Обсидиановая корка", "minecraft:obsidian", "minecraft:obsidian", 4, 5),
        ("Обожженная основа (Гейт s00)", "contenttweaker:fired_foundation", "contenttweaker:fired_foundation", 1, 6)
    ]

    for idx, (pname, icon_id, task_id, cnt, row_offset) in enumerate(primitive_items):
        qid = 11 + idx
        col = 4 + (idx // 4)
        is_gate = (qid == 49)
        q_ch0.append({
            "id": qid, "col": col, "row": row_offset, "is_main": is_gate,
            "name": pname,
            "desc": f"Развитие первобытного этапа: {pname}. Осваивайте окружение и готовьтесь к первой настоящей металлургии.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("minecraft:bread", 4), ("minecraft:iron_ingot", 2 if is_gate else 1)],
            "xp": 100 if not is_gate else 300,
            "loot_tier": 1 if not is_gate else 2,
            "prereqs": [qid - 1 if qid > 11 else 3],
            "command": "/gamestage add VAR_NAME s01_steam" if is_gate else None,
            "command_desc": "Переход в эпоху пара (s01_steam)" if is_gate else None
        })

    chapters.append(build_chapter(
        line_id=0, order=0,
        line_name="Глава 0: Первобытное Выживание",
        line_desc="Первые шаги в суровом мире: сбор кремния, волокон, глиняные изделия и поиск первых минералов.",
        line_icon_spec=("minecraft:flint", 1),
        base_qid=0, quest_specs=q_ch0
    ))

    # =========================================================================
    # CHAPTER 1: Кузнечное Дело: Tinkers' Construct (QIDs 50-99)
    # =========================================================================
    q_ch1 = []
    tc_nodes = [
        ("Трафаретный стол", "tconstruct:tooltables:1", "tconstruct:tooltables:1", 1, 0, 0),
        ("Стол сборщика деталей", "tconstruct:tooltables:2", "tconstruct:tooltables:2", 1, 1, 0),
        ("Инструментальный верстак", "tconstruct:tooltables:3", "tconstruct:tooltables:3", 1, 2, 0),
        ("Сундук для шаблонов", "tconstruct:tooltables:4", "tconstruct:tooltables:4", 1, 1, -1),
        ("Деревянные шаблоны", "tconstruct:pattern", "tconstruct:pattern", 16, 0, -1),
        ("Форма головки кирки", "tconstruct:pattern", "tconstruct:pattern", 1, 1, 1),
        ("Форма рукоятки", "tconstruct:pattern", "tconstruct:pattern", 1, 2, 1),
        ("Форма связки инструмента", "tconstruct:pattern", "tconstruct:pattern", 1, 3, 1),
        ("Кремневая кирка", "tconstruct:pickaxe", "minecraft:flint", 1, 3, 0),
        ("Кремневый топорик", "tconstruct:hatchet", "minecraft:flint", 1, 4, 0),
        ("Кремневая лопата", "tconstruct:shovel", "minecraft:flint", 1, 4, 1),
        ("Кремневый палаш", "tconstruct:broadsword", "minecraft:flint", 1, 4, -1),
        ("Цемент Grout", "tconstruct:soil:0", "tconstruct:soil:0", 16, 2, 2),
        ("Обожженный кирпич", "tconstruct:materials:0", "tconstruct:materials:0", 16, 3, 2),
        ("Контроллер плавильни", "tconstruct:smeltery_controller", "tconstruct:smeltery_controller", 1, 4, 2),
        ("Обожженный резервуар", "tconstruct:seared_tank:0", "tconstruct:seared_tank:0", 1, 5, 2),
        ("Обожженное сливное отверстие", "tconstruct:smeltery_io:0", "tconstruct:smeltery_io:0", 2, 5, 1),
        ("Литейный кран", "tconstruct:faucet", "tconstruct:faucet", 2, 6, 1),
        ("Литейный стол", "tconstruct:casting:0", "tconstruct:casting:0", 1, 6, 2),
        ("Литейный бассейн", "tconstruct:casting:1", "tconstruct:casting:1", 1, 6, 3),
        ("Золотой слепок слитка", "tconstruct:cast_custom:0", "tconstruct:cast_custom:0", 1, 7, 1),
        ("Золотой слепок головки кирки", "tconstruct:cast:2", "tconstruct:cast:2", 1, 7, 2),
        ("Медный слиток из плавильни", "thermalfoundation:material:128", "thermalfoundation:material:128", 16, 7, 0),
        ("Оловянный слиток из плавильни", "thermalfoundation:material:129", "thermalfoundation:material:129", 16, 8, 0),
        ("Сплав: Бронза", "thermalfoundation:material:163", "thermalfoundation:material:163", 16, 8, 1),
        ("Бронзовая кирка", "tconstruct:pickaxe", "thermalfoundation:material:163", 1, 9, 1),
        ("Сплав: Чугун (Pigiron)", "tconstruct:metal:4", "tconstruct:metal:4", 8, 8, 2),
        ("Модификатор: Редстоун (Скорость)", "minecraft:redstone", "minecraft:redstone", 64, 8, -1),
        ("Модификатор: Лазурит (Удача)", "minecraft:dye:4", "minecraft:dye:4", 64, 9, -1),
        ("Модификатор: Алмаз (Прочность)", "minecraft:diamond", "minecraft:diamond", 1, 10, -1),
        ("Модификатор: Изумруд (Долговечность)", "minecraft:emerald", "minecraft:emerald", 1, 10, 0),
        ("Модификатор: Моховой камень (Автопочинка)", "minecraft:mossy_cobblestone", "minecraft:mossy_cobblestone", 8, 10, 1),
        ("Ардитная руда нижнего мира", "tconstruct:ore:1", "tconstruct:ore:1", 8, 9, 3),
        ("Кобальтовая руда нижнего мира", "tconstruct:ore:0", "tconstruct:ore:0", 8, 10, 3),
        ("Слиток Ардита", "tconstruct:metal:1", "tconstruct:metal:1", 8, 10, 2),
        ("Слиток Кобальта", "tconstruct:metal:0", "tconstruct:metal:0", 8, 11, 2),
        ("Сплав Богов: Манюлин (Manyullyn)", "tconstruct:metal:2", "tconstruct:metal:2", 8, 11, 1),
        ("Кирка из Манюлина", "tconstruct:pickaxe", "tconstruct:metal:2", 1, 12, 1),
        ("Клинок из Манюлина", "tconstruct:broadsword", "tconstruct:metal:2", 1, 12, 0),
        ("Молот Tinkers (3x3 Добыча)", "tconstruct:hammer", "tconstruct:hammer", 1, 12, 2),
        ("Тесак Cleaver (Обезглавливание)", "tconstruct:cleaver", "tconstruct:cleaver", 1, 13, 1),
        ("Длинный лук Tinkers", "tconstruct:longbow", "tconstruct:longbow", 1, 13, 0),
        ("Стрелы Tinkers", "tconstruct:arrow", "tconstruct:arrow", 1, 13, -1),
        ("Сливочная слизь (Slime Channel)", "tconstruct:slime_channel", "tconstruct:slime_channel", 4, 11, -1),
        ("Слизневые сапоги", "tconstruct:slime_boots:0", "tconstruct:slime_boots:0", 1, 12, -1),
        ("Слизневая рогатка", "tconstruct:slimesling:0", "tconstruct:slimesling:0", 1, 12, -2),
        ("Обожженное стекло", "tconstruct:seared_glass", "tconstruct:seared_glass", 4, 9, 2),
        ("Обожженная лестница", "tconstruct:seared_ladder", "tconstruct:seared_ladder", 4, 8, 3),
        ("Продвинутый сундук деталей", "tconstruct:tooltables:5", "tconstruct:tooltables:5", 1, 2, -1),
        ("Мастер Кузнечного Ремесла", "tconstruct:metal:2", "tconstruct:metal:2", 16, 14, 0)
    ]

    for idx, (tname, icon_id, task_id, cnt, c, r) in enumerate(tc_nodes):
        q_ch1.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 36 or idx == 49),
            "name": tname,
            "desc": f"Искусство металлургии Tinkers' Construct: {tname}. Отливайте компоненты, создавайте сплавы и модульные инструменты.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("thermalfoundation:material:163", 4), ("minecraft:iron_ingot", 4)],
            "xp": 120, "loot_tier": 1 if idx < 30 else 2,
            "prereqs": [idx - 1] if idx > 0 and idx not in [4, 12, 27, 32] else []
        })

    chapters.append(build_chapter(
        line_id=1, order=1,
        line_name="Глава 1: Кузнечное Дело: Tinkers' Construct",
        line_desc="Полная металлургическая ветвь: от первого шаблона до молота из манюлина и слизневой экипировки.",
        line_icon_spec=("tconstruct:smeltery_controller", 1),
        base_qid=50, quest_specs=q_ch1
    ))

    # =========================================================================
    # CHAPTER 2: Кулинария и Фермерство: Pam's Harvestcraft (QIDs 100-149)
    # =========================================================================
    q_ch2 = []
    pams_nodes = [
        ("Разделочная доска", "harvestcraft:cuttingboarditem", "harvestcraft:cuttingboarditem", 1, 0, 0),
        ("Кухонный горшок", "harvestcraft:potitem", "harvestcraft:potitem", 1, 1, 0),
        ("Сковорода шеф-повара", "harvestcraft:skilletitem", "harvestcraft:skilletitem", 1, 1, 1),
        ("Форма для выпечки", "harvestcraft:bakewareitem", "harvestcraft:bakewareitem", 1, 2, 0),
        ("Ступка и пестик", "harvestcraft:mortarandpestleitem", "harvestcraft:mortarandpestleitem", 1, 2, 1),
        ("Соковыжималка", "harvestcraft:juiceritem", "harvestcraft:juiceritem", 1, 3, 0),
        ("Кухонный нож", "harvestcraft:saucepanitem", "harvestcraft:saucepanitem", 1, 3, 1),
        ("Кухонный стол Cooking for Blockheads", "cookingforblockheads:cooking_table", "cookingforblockheads:cooking_table", 1, 4, 0),
        ("Кухонная плита", "cookingforblockheads:oven", "cookingforblockheads:oven", 1, 5, 0),
        ("Кухонная раковина (Бесконечная вода)", "cookingforblockheads:sink", "cookingforblockheads:sink", 1, 5, 1),
        ("Кухонный холодильник", "cookingforblockheads:fridge", "cookingforblockheads:fridge", 1, 6, 0),
        ("Шкаф для приправ", "cookingforblockheads:spice_rack", "cookingforblockheads:spice_rack", 1, 6, 1),
        ("Тостер", "cookingforblockheads:toaster", "cookingforblockheads:toaster", 1, 7, 0),
        ("Книга рецептов шефа", "cookingforblockheads:recipe_book:1", "cookingforblockheads:recipe_book:1", 1, 4, -1),
        ("Мука высшего сорта", "harvestcraft:flouritem", "harvestcraft:flouritem", 16, 2, -1),
        ("Свежее тесто", "harvestcraft:doughitem", "harvestcraft:doughitem", 16, 3, -1),
        ("Кукурузное масло", "harvestcraft:oliveoilitem", "harvestcraft:oliveoilitem", 8, 3, -2),
        ("Сыр чеддер", "harvestcraft:cheeseitem", "harvestcraft:cheeseitem", 8, 4, -2),
        ("Томатный соус", "harvestcraft:ketchupitem", "harvestcraft:ketchupitem", 8, 5, -2),
        ("Сливочное масло", "harvestcraft:butteritem", "harvestcraft:butteritem", 8, 6, -2),
        ("Шедевр: Бекон-чизбургер", "harvestcraft:baconcheeseburgeritem", "harvestcraft:baconcheeseburgeritem", 4, 7, 1),
        ("Сытный обед: Говяжий гуляш", "harvestcraft:beefstewitem", "harvestcraft:beefstewitem", 4, 8, 0),
        ("Пицца Делюкс", "harvestcraft:supremepizzaitem", "harvestcraft:supremepizzaitem", 4, 8, 1),
        ("Яблочный пирог Pam's", "harvestcraft:applepieitem", "harvestcraft:applepieitem", 4, 8, -1),
        ("Вишневый чизкейк", "harvestcraft:cherrycheesecakeitem", "harvestcraft:cherrycheesecakeitem", 4, 9, -1),
        ("Шоколадный торт", "harvestcraft:chocolatedonutitem", "harvestcraft:chocolatedonutitem", 4, 9, 0),
        ("Энергетический смузи", "harvestcraft:strawberrysmoothieitem", "harvestcraft:strawberrysmoothieitem", 4, 9, 1),
        ("Горячий шоколад с зефиром", "harvestcraft:hotchocolateitem", "harvestcraft:hotchocolateitem", 4, 10, 0),
        ("Королевский завтрак", "harvestcraft:heartybreakfastitem", "harvestcraft:heartybreakfastitem", 4, 10, 1),
        ("Ловушка для рыбы (Water Trap)", "harvestcraft:watertrap", "harvestcraft:watertrap", 1, 5, 2),
        ("Ловушка для дичи (Ground Trap)", "harvestcraft:groundtrap", "harvestcraft:groundtrap", 1, 6, 2),
        ("Приманка для рыбы", "harvestcraft:fruittrapbaititem", "harvestcraft:fruittrapbaititem", 8, 7, 2),
        ("Приманка для зерновых птиц", "harvestcraft:graintrapbaititem", "harvestcraft:graintrapbaititem", 8, 8, 2),
        ("Пасека пасечника Pam's", "harvestcraft:apiary", "harvestcraft:apiary", 1, 9, 2),
        ("Пчелиный воск", "harvestcraft:beeswaxitem", "harvestcraft:beeswaxitem", 8, 10, 2),
        ("Свежий мед в сотах", "harvestcraft:honeycombitem", "harvestcraft:honeycombitem", 8, 11, 2),
        ("Баночка чистого меда", "harvestcraft:honeyitem", "harvestcraft:honeyitem", 8, 11, 1),
        ("Соковыжималка пресса", "harvestcraft:presser", "harvestcraft:presser", 1, 7, -1),
        ("Тофу шелковый", "harvestcraft:silkentofuitem", "harvestcraft:silkentofuitem", 16, 8, -2),
        ("Тофу твердый", "harvestcraft:firmtofuitem", "harvestcraft:firmtofuitem", 16, 9, -2),
        ("Веганский стейк из тофу", "harvestcraft:tofusteakitem", "harvestcraft:tofusteakitem", 8, 10, -2),
        ("Садовый маркет семян", "farmingforblockheads:market", "farmingforblockheads:market", 1, 1, -1),
        ("Компостер удобрений", "farmingforblockheads:compost_bin", "farmingforblockheads:compost_bin", 1, 1, -2),
        ("Зеленое удобрение", "farmingforblockheads:fertilizer:0", "farmingforblockheads:fertilizer:0", 16, 2, -2),
        ("Красное ускоряющее удобрение", "farmingforblockheads:fertilizer:1", "farmingforblockheads:fertilizer:1", 16, 3, -2),
        ("Желтое урожайное удобрение", "farmingforblockheads:fertilizer:2", "farmingforblockheads:fertilizer:2", 16, 4, -2),
        ("Кормушка для скота", "farmingforblockheads:feeding_trough", "farmingforblockheads:feeding_trough", 1, 5, -3),
        ("Куриное гнездо", "farmingforblockheads:chicken_nest", "farmingforblockheads:chicken_nest", 2, 6, -3),
        ("Морковный ланчбокс (Spice of Life)", "solcarrotdetector:food_book", "minecraft:carrot", 1, 0, 1),
        ("Мастер Гастрономии Нексуса", "harvestcraft:heartybreakfastitem", "harvestcraft:heartybreakfastitem", 16, 12, 0)
    ]

    for idx, (pname, icon_id, task_id, cnt, c, r) in enumerate(pams_nodes):
        q_ch2.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 7 or idx == 49),
            "name": pname,
            "desc": f"Кулинарные и фермерские технологии: {pname}. Разнообразие пищи увеличивает максимальное здоровье благодаря Spice of Life!",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("harvestcraft:applepieitem", 4), ("minecraft:iron_ingot", 2)],
            "xp": 100, "loot_tier": 1,
            "prereqs": [idx - 1] if idx > 0 and idx not in [14, 29, 41, 48] else []
        })

    chapters.append(build_chapter(
        line_id=2, order=2,
        line_name="Глава 2: Кулинария и Фермерство: Pam's Harvestcraft",
        line_desc="Полноценная кухня Cooking for Blockheads, автоматические ловушки, фермы и расширение здоровья.",
        line_icon_spec=("harvestcraft:cuttingboarditem", 1),
        base_qid=100, quest_specs=q_ch2
    ))

    # =========================================================================
    # CHAPTER 3: Паровая Эра: Immersive Engineering (QIDs 150-199)
    # =========================================================================
    q_ch3 = []
    ie_nodes = [
        ("Молот Инженера", "immersiveengineering:tool:0", "immersiveengineering:tool:0", 1, 0, 0),
        ("Кусачки электрика", "immersiveengineering:tool:1", "immersiveengineering:tool:1", 1, 0, 1),
        ("Руководство Инженера", "immersiveengineering:tool:3", "immersiveengineering:tool:3", 1, 0, -1),
        ("Коксовый кирпич", "immersiveengineering:stone_decoration:0", "immersiveengineering:stone_decoration:0", 27, 1, 0),
        ("Коксовая печь (3x3x3)", "immersiveengineering:stone_decoration:0", "immersiveengineering:stone_decoration:0", 27, 2, 0),
        ("Каменноугольный кокс", "immersiveengineering:material:6", "immersiveengineering:material:6", 16, 3, 0),
        ("Креозотовое масло", "immersiveengineering:fluid_containers:creosote", "immersiveengineering:fluid_containers:creosote", 1, 3, 1),
        ("Обработанная древесина", "immersiveengineering:treated_wood", "immersiveengineering:treated_wood", 32, 4, 1),
        ("Доменный кирпич", "immersiveengineering:stone_decoration:1", "immersiveengineering:stone_decoration:1", 27, 2, -1),
        ("Примитивная доменная печь", "immersiveengineering:stone_decoration:1", "immersiveengineering:stone_decoration:1", 27, 3, -1),
        ("Стальной слиток", "thermalfoundation:material:160", "thermalfoundation:material:160", 16, 4, -1),
        ("Шлак доменной печи", "immersiveengineering:material:7", "immersiveengineering:material:7", 16, 4, -2),
        ("Медный провод LV", "immersiveengineering:wirecoil:0", "immersiveengineering:wirecoil:0", 16, 5, 0),
        ("Коннектор LV", "immersiveengineering:connector:0", "immersiveengineering:connector:0", 4, 5, 1),
        ("Реле LV", "immersiveengineering:connector:1", "immersiveengineering:connector:1", 4, 5, -1),
        ("Кинетический динамо-генератор", "immersiveengineering:metal_device1:2", "immersiveengineering:metal_device1:2", 1, 6, 0),
        ("Водяное колесо", "immersiveengineering:wooden_device1:1", "immersiveengineering:wooden_device1:1", 3, 6, 1),
        ("Ветряная мельница", "immersiveengineering:wooden_device1:2", "immersiveengineering:wooden_device1:2", 1, 6, -1),
        ("Низковольтный аккумулятор LV", "immersiveengineering:metal_device0:0", "immersiveengineering:metal_device0:0", 1, 7, 0),
        ("Верстак Инженера", "immersiveengineering:wooden_device0:2", "immersiveengineering:wooden_device0:2", 1, 5, 2),
        ("Чертеж: Компоненты", "immersiveengineering:blueprint", "immersiveengineering:blueprint", 1, 6, 2),
        ("Чертеж: Огнестрельное оружие", "immersiveengineering:blueprint", "immersiveengineering:blueprint", 1, 6, 3),
        ("Стальной каркас механизма", "immersiveengineering:metal_decoration0:5", "immersiveengineering:metal_decoration0:5", 4, 7, 1),
        ("Легкий инженерный блок", "immersiveengineering:metal_decoration0:4", "immersiveengineering:metal_decoration0:4", 8, 8, 0),
        ("Тяжелый инженерный блок", "immersiveengineering:metal_decoration0:5", "immersiveengineering:metal_decoration0:5", 8, 8, 1),
        ("Блок радиатора", "immersiveengineering:metal_decoration0:7", "immersiveengineering:metal_decoration0:7", 4, 8, -1),
        ("Металлический пресс (Многоблок)", "immersiveengineering:metal_multiblock:0", "immersiveengineering:metal_decoration0:5", 1, 9, 0),
        ("Форма пресса: Пластины", "immersiveengineering:mold:0", "immersiveengineering:mold:0", 1, 9, -1),
        ("Форма пресса: Стержни", "immersiveengineering:mold:1", "immersiveengineering:mold:1", 1, 9, 1),
        ("Форма пресса: Провода", "immersiveengineering:mold:2", "immersiveengineering:mold:2", 1, 10, -1),
        ("Дробитель (Crusher Многоблок)", "immersiveengineering:metal_multiblock:1", "immersiveengineering:metal_decoration0:5", 1, 10, 0),
        ("Удвоение руды в пыль", "thermalfoundation:material:0", "thermalfoundation:material:0", 16, 11, 0),
        ("Электрометаллургическая печь", "immersiveengineering:stone_decoration:10", "immersiveengineering:stone_decoration:10", 1, 10, 1),
        ("Электромеханический провод MV", "immersiveengineering:wirecoil:1", "immersiveengineering:wirecoil:1", 16, 8, 2),
        ("Коннектор MV", "immersiveengineering:connector:2", "immersiveengineering:connector:2", 4, 9, 2),
        ("Средневольтный аккумулятор MV", "immersiveengineering:metal_device0:1", "immersiveengineering:metal_device0:1", 1, 10, 2),
        ("Высоковольтный кабель HV", "immersiveengineering:wirecoil:2", "immersiveengineering:wirecoil:2", 16, 11, 2),
        ("Коннектор HV", "immersiveengineering:connector:4", "immersiveengineering:connector:4", 4, 12, 2),
        ("Трансформатор HV/MV", "immersiveengineering:metal_device1:0", "immersiveengineering:metal_device1:0", 1, 12, 1),
        ("Высоковольтный аккумулятор HV", "immersiveengineering:metal_device0:2", "immersiveengineering:metal_device0:2", 1, 13, 2),
        ("Револьвер инженера", "immersiveengineering:revolver", "immersiveengineering:revolver", 1, 7, 3),
        ("Патроны с картечью", "immersiveengineering:bullet:0", "immersiveengineering:bullet:0", 16, 8, 3),
        ("Рельсотрон (Railgun)", "immersiveengineering:railgun", "immersiveengineering:railgun", 1, 9, 3),
        ("Конвейерная лента", "immersiveengineering:conveyor:0", "immersiveengineering:conveyor:0", 16, 8, -2),
        ("Сортировочный конвейер", "immersiveengineering:conveyor:1", "immersiveengineering:conveyor:1", 4, 9, -2),
        ("Термоэлектрический генератор", "immersiveengineering:metal_device1:3", "immersiveengineering:metal_device1:3", 1, 11, -1),
        ("Резервуар для жидкостей (Многоблок)", "immersiveengineering:metal_device0:4", "immersiveengineering:metal_decoration0:5", 1, 12, 0),
        ("Прожектор инженера", "immersiveengineering:metal_device1:4", "immersiveengineering:metal_device1:4", 2, 12, -1),
        ("Паропроводная сборка (Гейт s01)", "contenttweaker:pressure_assembly", "contenttweaker:pressure_assembly", 1, 14, 0),
        ("Мастер Промышленной Революции", "immersiveengineering:metal_device0:2", "immersiveengineering:metal_device0:2", 1, 14, 1)
    ]

    for idx, (iname, icon_id, task_id, cnt, c, r) in enumerate(ie_nodes):
        is_gate = (idx == 48)
        q_ch3.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 4 or idx == 10 or idx == 26 or is_gate),
            "name": iname,
            "desc": f"Тяжелое машиностроение Immersive Engineering: {iname}. Постройте многоблочные конструкции и электрические сети.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("thermalfoundation:material:160", 4), ("immersiveengineering:material:6", 8)],
            "xp": 150 if not is_gate else 400,
            "loot_tier": 2,
            "prereqs": [idx - 1] if idx > 0 and idx not in [8, 12, 19, 40, 43] else [],
            "command": "/gamestage add VAR_NAME s02_awakened_nature" if is_gate else None,
            "command_desc": "Переход в эпоху пробужденной природы (s02_awakened_nature)" if is_gate else None
        })

    chapters.append(build_chapter(
        line_id=3, order=3,
        line_name="Глава 3: Паровая Эра: Immersive Engineering",
        line_desc="Коксовые батареи, доменная плавка стали, водяные колеса, провода и грандиозные дизель-панк механизмы.",
        line_icon_spec=("immersiveengineering:metal_device1:2", 1),
        base_qid=150, quest_specs=q_ch3
    ))

    # =========================================================================
    # CHAPTER 4: Тяжелая Нефтехимия: Immersive Petroleum & Tech (QIDs 200-249)
    # =========================================================================
    q_ch4 = []
    petro_nodes = [
        ("Геологический молот", "immersivepetroleum:schematic:0", "immersiveengineering:tool:0", 1, 0, 0),
        ("Образец породы (Core Sample)", "immersivepetroleum:material:0", "immersivepetroleum:material:0", 1, 1, 0),
        ("Нефтяное месторождение", "immersivepetroleum:material:0", "immersivepetroleum:material:0", 1, 2, 0),
        ("Тяжелые трубы для нефти", "immersiveengineering:metal_device1:6", "immersiveengineering:metal_device1:6", 16, 2, 1),
        ("Буровая вышка (Pumpjack Многоблок)", "immersivepetroleum:metal_multiblock:0", "immersiveengineering:metal_decoration0:5", 1, 3, 0),
        ("Сырая нефть (Crude Oil)", "immersivepetroleum:fluid_containers:crudeoil", "immersivepetroleum:fluid_containers:crudeoil", 1, 4, 0),
        ("Дистилляционная колонна (Distillation Tower)", "immersivepetroleum:metal_multiblock:1", "immersiveengineering:metal_decoration0:5", 1, 5, 0),
        ("Дизельное топливо", "immersivepetroleum:fluid_containers:diesel", "immersivepetroleum:fluid_containers:diesel", 1, 6, 0),
        ("Бензин (Gasoline)", "immersivepetroleum:fluid_containers:gasoline", "immersivepetroleum:fluid_containers:gasoline", 1, 6, -1),
        ("Смазочное масло (Lubricant)", "immersivepetroleum:fluid_containers:lubricant", "immersivepetroleum:fluid_containers:lubricant", 1, 6, 1),
        ("Битум нефтяной", "immersivepetroleum:material:0", "immersivepetroleum:material:0", 16, 7, 0),
        ("Асфальт для дорог", "immersivepetroleum:stone_decoration:0", "immersivepetroleum:stone_decoration:0", 32, 8, 0),
        ("Скоростная асфальтовая магистраль", "immersivepetroleum:stone_decoration:0", "immersivepetroleum:stone_decoration:0", 64, 9, 0),
        ("Дизельный генератор (Многоблок)", "immersiveengineering:metal_multiblock:10", "immersiveengineering:metal_decoration0:5", 1, 7, 1),
        ("Генерация мегаватт энергии", "immersiveengineering:metal_device0:2", "immersiveengineering:metal_device0:2", 1, 8, 1),
        ("Портативная канистра топлива", "immersivepetroleum:metal_device:0", "immersivepetroleum:metal_device:0", 1, 7, -1),
        ("Автозаправочная колонка", "immersivepetroleum:metal_device:1", "immersivepetroleum:metal_device:1", 1, 8, -1),
        ("Моторная лодка (Speedboat)", "immersivepetroleum:speedboat", "immersivepetroleum:speedboat", 1, 9, -1),
        ("Турбо-апгрейд лодки", "immersivepetroleum:upgrades:0", "immersivepetroleum:upgrades:0", 1, 10, -1),
        ("Бронеплиты лодки", "immersivepetroleum:upgrades:1", "immersivepetroleum:upgrades:1", 1, 10, -2),
        ("Паровой бойлер Immersive Tech", "immersiveengineering:metal_decoration0:5", "immersiveengineering:metal_decoration0:5", 1, 5, 2),
        ("Паровая турбина высокого давления", "immersiveengineering:metal_decoration0:5", "immersiveengineering:metal_decoration0:5", 1, 6, 2),
        ("Охладительная башня градирни", "immersiveengineering:metal_decoration0:5", "immersiveengineering:metal_decoration0:5", 1, 7, 2),
        ("Радиаторные теплообменники", "immersiveengineering:metal_decoration0:7", "immersiveengineering:metal_decoration0:7", 8, 8, 2),
        ("Солнечная башня концентратора", "immersiveengineering:metal_decoration0:5", "immersiveengineering:metal_decoration0:5", 1, 9, 2),
        ("Зеркала гелиостата", "immersiveengineering:metal_decoration0:5", "immersiveengineering:metal_decoration0:5", 4, 10, 2),
        ("Биодизельный завод", "immersiveengineering:metal_multiblock:3", "immersiveengineering:metal_decoration0:5", 1, 4, 3),
        ("Промышленный пресс этанола", "immersiveengineering:metal_multiblock:2", "immersiveengineering:metal_decoration0:5", 1, 5, 3),
        ("Емкости ферментации", "immersiveengineering:metal_multiblock:4", "immersiveengineering:metal_decoration0:5", 1, 6, 3),
        ("Растительное масло из семян", "immersiveengineering:fluid_containers:plantoil", "immersiveengineering:fluid_containers:plantoil", 1, 7, 3),
        ("Этанол из картофеля", "immersiveengineering:fluid_containers:ethanol", "immersiveengineering:fluid_containers:ethanol", 1, 8, 3),
        ("Чистый биодизель", "immersiveengineering:fluid_containers:biodiesel", "immersiveengineering:fluid_containers:biodiesel", 1, 9, 3),
        ("Огнетушитель пожаротушения", "immersiveengineering:tool:2", "immersiveengineering:tool:2", 1, 3, -1),
        ("Взрывозащищенный кабель", "immersiveengineering:wirecoil:2", "immersiveengineering:wirecoil:2", 16, 4, -1),
        ("Промышленные ворота ангара", "engineersdoors:door_steel", "engineersdoors:door_steel", 2, 5, -1),
        ("Шлюзовая переборка", "engineersdoors:trapdoor_steel", "engineersdoors:trapdoor_steel", 2, 6, -2),
        ("Манометр давления пара", "immersiveengineering:tool:0", "immersiveengineering:tool:0", 1, 7, -2),
        ("Трубопроводный насос", "immersiveengineering:metal_device0:5", "immersiveengineering:metal_device0:5", 2, 8, -2),
        ("Жидкостный клапан автоматики", "immersiveengineering:metal_device1:6", "immersiveengineering:metal_device1:6", 2, 9, -2),
        ("Стальная цистерна 512k mB", "immersiveengineering:metal_device0:4", "immersiveengineering:metal_decoration0:5", 1, 10, 0),
        ("Сжатый газ и компрессия", "immersiveengineering:metal_device1:6", "immersiveengineering:metal_device1:6", 1, 11, 0),
        ("Тяжелые смазочные контуры", "immersivepetroleum:fluid_containers:lubricant", "immersivepetroleum:fluid_containers:lubricant", 1, 11, 1),
        ("Дизельный тепловоз", "immersivepetroleum:material:0", "immersivepetroleum:material:0", 1, 11, -1),
        ("Цистерна на платформе", "immersiveengineering:metal_device0:4", "immersiveengineering:metal_device0:4", 1, 12, -1),
        ("Контроллер электросети завода", "immersiveengineering:connector:4", "immersiveengineering:connector:4", 4, 12, 1),
        ("Магнитный сепаратор шлама", "immersiveengineering:metal_decoration0:5", "immersiveengineering:metal_decoration0:5", 1, 12, 0),
        ("Синтетический углеводород", "immersivepetroleum:material:0", "immersivepetroleum:material:0", 8, 13, 0),
        ("Каталитический крекинг", "immersivepetroleum:metal_multiblock:1", "immersiveengineering:metal_decoration0:5", 1, 13, 1),
        ("Пластиковый предшественник", "thermalfoundation:material:160", "thermalfoundation:material:160", 16, 14, 0),
        ("Нефтяной Магнат Нексуса", "immersivepetroleum:fluid_containers:diesel", "immersivepetroleum:fluid_containers:diesel", 1, 14, 1)
    ]

    for idx, (pname, icon_id, task_id, cnt, c, r) in enumerate(petro_nodes):
        q_ch4.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 4 or idx == 6 or idx == 13),
            "name": pname,
            "desc": f"Нефтехимический комплекс: {pname}. Разведка недр, глубокое бурение, перегонка фракций и генерация десятков тысяч RF/t.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("thermalfoundation:material:160", 8), ("immersivepetroleum:material:0", 16)],
            "xp": 200, "loot_tier": 2,
            "prereqs": [idx - 1] if idx > 0 and idx not in [20, 26, 32] else []
        })

    chapters.append(build_chapter(
        line_id=4, order=4,
        line_name="Глава 4: Тяжелая Нефтехимия: Immersive Petroleum & Tech",
        line_desc="Геологоразведка, гигантские нефтяные вышки, дистилляционные колонны, дизельное топливо и паротурбинные циклы.",
        line_icon_spec=("immersivepetroleum:schematic", 1),
        base_qid=200, quest_specs=q_ch4
    ))

    # =========================================================================
    # CHAPTER 5: Цветочная Магия: Botania — Основы (QIDs 250-299)
    # =========================================================================
    q_ch5 = []
    bot_nodes = [
        ("Мистические лепестки", "botania:petal:0", "botania:petal:0", 8, 0, 0),
        ("Лепестковый аптекарь", "botania:altar", "botania:altar", 1, 1, 0),
        ("Чистая маргаритка (Pure Daisy)", "botania:specialflower", "botania:specialflower", 1, 2, 0),
        ("Жизнедерево (Livingwood)", "botania:livingwood", "botania:livingwood", 16, 3, 0),
        ("Жизнекамень (Livingrock)", "botania:livingrock", "botania:livingrock", 16, 3, 1),
        ("Жезл леса (Wand of the Forest)", "botania:twigwand", "botania:twigwand", 1, 4, 0),
        ("Бассейн маны (Mana Pool)", "botania:pool:0", "botania:pool:0", 1, 5, 0),
        ("Распространитель маны (Mana Spreader)", "botania:spreader:0", "botania:spreader:0", 1, 5, 1),
        ("Генератор: Эндопламя (Endoflame)", "botania:specialflower", "botania:specialflower", 4, 6, 0),
        ("Генератор: Водогортензия (Hydroangeas)", "botania:specialflower", "botania:specialflower", 4, 6, 1),
        ("Генератор: Термалилия (Thermalily)", "botania:specialflower", "botania:specialflower", 1, 6, -1),
        ("Слиток манастали", "botania:manaresource:0", "botania:manaresource:0", 16, 7, 0),
        ("Жемчуг маны", "botania:manaresource:1", "botania:manaresource:1", 8, 7, 1),
        ("Алмаз маны", "botania:manaresource:2", "botania:manaresource:2", 4, 7, -1),
        ("Планшет маны (Mana Tablet)", "botania:manatablet", "botania:manatablet", 1, 8, 0),
        ("Рунический алтарь (Runic Altar)", "botania:runealtar", "botania:runealtar", 1, 8, 1),
        ("Руна Воды", "botania:rune:0", "botania:rune:0", 2, 9, 1),
        ("Руна Огня", "botania:rune:1", "botania:rune:1", 2, 9, 2),
        ("Руна Земли", "botania:rune:2", "botania:rune:2", 2, 10, 1),
        ("Руна Воздуха", "botania:rune:3", "botania:rune:3", 2, 10, 2),
        ("Руна Маны", "botania:rune:8", "botania:rune:8", 2, 10, 0),
        ("Руна Весны", "botania:rune:4", "botania:rune:4", 1, 11, 1),
        ("Руна Лета", "botania:rune:5", "botania:rune:5", 1, 11, 2),
        ("Руна Осени", "botania:rune:6", "botania:rune:6", 1, 12, 1),
        ("Руна Зимы", "botania:rune:7", "botania:rune:7", 1, 12, 2),
        ("Цветок: Парящая маргаритка", "botania:floatingflower", "botania:floatingflower", 1, 4, 1),
        ("Цветок: Гурмарилис (Пожиратель еды)", "botania:specialflower", "botania:specialflower", 1, 7, 2),
        ("Цветок: Энтропинниум (Питание от ТНТ)", "botania:specialflower", "botania:specialflower", 1, 8, 2),
        ("Цветок: Арканироза (Питание от опыта)", "botania:specialflower", "botania:specialflower", 1, 9, -1),
        ("Мана-нить для ткачества", "botania:manaresource:16", "botania:manaresource:16", 16, 8, -2),
        ("Мана-ткань мага", "botania:manaresource:22", "botania:manaresource:22", 8, 9, -2),
        ("Мантия из мана-ткани", "botania:manasteelchest", "botania:manasteelchest", 1, 10, -2),
        ("Линза маны: Скорость", "botania:lens:1", "botania:lens:1", 1, 6, 2),
        ("Линза маны: Мощность", "botania:lens:2", "botania:lens:2", 1, 6, 3),
        ("Линза маны: Рикошет", "botania:lens:3", "botania:lens:3", 1, 7, 3),
        ("Импульсный распространитель маны", "botania:spreader:1", "botania:spreader:1", 1, 8, 3),
        ("Мана-пушка (Mana Blaster)", "botania:managun", "botania:managun", 1, 9, 3),
        ("Цветок: Белладонна павшего (Dreadthorn)", "botania:specialflower", "botania:specialflower", 1, 10, 3),
        ("Цветок: Агрохимик (Agricarnation)", "botania:specialflower", "botania:specialflower", 2, 11, 3),
        ("Цветок: Гейзер маны (Spectrolus)", "botania:specialflower", "botania:specialflower", 1, 12, 3),
        ("Цветок: Раффлезия (Dandelifeon)", "botania:specialflower", "botania:specialflower", 1, 13, 3),
        ("Мана-стекло", "botania:managlass", "botania:managlass", 16, 5, -1),
        ("Мана-линза фантомности", "botania:lens:10", "botania:lens:10", 1, 6, -2),
        ("Чародейский мех (Bellows)", "botania:bellows", "botania:bellows", 1, 7, -3),
        ("Мана-дилютор", "botania:pool:2", "botania:pool:2", 1, 8, -3),
        ("Мана-кольцо мага", "botania:manaring", "botania:manaring", 1, 9, -3),
        ("Кольцо магнита", "botania:magnetring", "botania:magnetring", 1, 10, -3),
        ("Мана-зеркало связи", "botania:manamirror", "botania:manamirror", 1, 11, -3),
        ("Живой проводник (Гейт s02)", "contenttweaker:living_conductor", "contenttweaker:living_conductor", 1, 13, 0),
        ("Магистр Естественной Магии", "botania:pool:0", "botania:pool:0", 1, 14, 0)
    ]

    for idx, (bname, icon_id, task_id, cnt, c, r) in enumerate(bot_nodes):
        is_gate = (idx == 48)
        q_ch5.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 2 or idx == 6 or idx == 11 or idx == 15 or is_gate),
            "name": bname,
            "desc": f"Природная магия Botania: {bname}. Управляйте потоками маны, собирайте руны и создавайте живые проводники.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("botania:manaresource:0", 4), ("botania:manaresource:1", 2)],
            "xp": 180 if not is_gate else 500,
            "loot_tier": 2,
            "prereqs": [idx - 1] if idx > 0 and idx not in [25, 32, 41] else [],
            "command": "/gamestage add VAR_NAME s03_electromechanics" if is_gate else None,
            "command_desc": "Переход в эпоху электромеханики (s03_electromechanics)" if is_gate else None
        })

    chapters.append(build_chapter(
        line_id=5, order=5,
        line_name="Глава 5: Цветочная Магия: Botania — Основы",
        line_desc="Лепестковый аптекарь, чистая маргаритка, генераторы маны, бассейны, рунический алтарь и манасталь.",
        line_icon_spec=("botania:flower", 1),
        base_qid=250, quest_specs=q_ch5
    ))

    # =========================================================================
    # CHAPTER 6: Эльфийская Магия и Террасталь: Botania — Продвинутая (QIDs 300-349)
    # =========================================================================
    q_ch6 = []
    bot_adv_nodes = [
        ("Плита агломерации террастали", "botania:terraplate", "botania:terraplate", 1, 0, 0),
        ("Искра маны (Spark)", "botania:spark", "botania:spark", 4, 1, 0),
        ("Улучшение искры: Рассеивание", "botania:sparkupgrade:0", "botania:sparkupgrade:0", 1, 1, 1),
        ("Улучшение искры: Накопление", "botania:sparkupgrade:1", "botania:sparkupgrade:1", 1, 1, -1),
        ("Слиток Террастали", "botania:manaresource:4", "botania:manaresource:4", 2, 2, 0),
        ("Шлем террастали", "botania:terrasteelhelm", "botania:terrasteelhelm", 1, 3, -1),
        ("Кираса террастали", "botania:terrasteelchest", "botania:terrasteelchest", 1, 3, 0),
        ("Поножи террастали", "botania:terrasteellegs", "botania:terrasteellegs", 1, 3, 1),
        ("Ботинки террастали", "botania:terrasteelboots", "botania:terrasteelboots", 1, 3, 2),
        ("Крушитель скал (Terra Shatterer)", "botania:terrapick", "botania:terrapick", 1, 4, 0),
        ("Терра-усекатель (Terra Truncator)", "botania:terraaxe", "botania:terraaxe", 1, 4, 1),
        ("Терра-лезвие (Terra Blade)", "botania:terrasword", "botania:terrasword", 1, 4, -1),
        ("Светящийся жизнекамень", "botania:livingrock:1", "botania:livingrock:1", 4, 5, 0),
        ("Пилон природы (Natura Pylon)", "botania:pylon:0", "botania:pylon:0", 2, 5, 1),
        ("Врата в Эльфхейм (Portal to Alfheim)", "botania:alfheimportal", "botania:alfheimportal", 1, 6, 0),
        ("Эльфийский обмен ресурсами", "botania:manaresource:7", "botania:manaresource:7", 8, 7, 0),
        ("Слиток Элементия", "botania:manaresource:7", "botania:manaresource:7", 16, 7, 1),
        ("Пыльца феи (Pixie Dust)", "botania:manaresource:8", "botania:manaresource:8", 8, 8, 1),
        ("Древесина Драконьего дерева", "botania:dreamwood", "botania:dreamwood", 16, 7, -1),
        ("Драконий жезл леса", "botania:twigwand", "botania:dreamwood", 1, 8, -1),
        ("Эльфийский распространитель маны", "botania:spreader:2", "botania:spreader:2", 1, 8, 0),
        ("Стеклянный флакон эликсиров", "botania:vial:0", "botania:vial:0", 8, 9, 0),
        ("Ботаническая пивоварня", "botania:brewery", "botania:brewery", 1, 9, 1),
        ("Эликсир регенерации", "botania:brewvial", "botania:brewvial", 1, 10, 1),
        ("Пилон Гайи (Gaia Pylon)", "botania:pylon:2", "botania:pylon:2", 4, 10, 0),
        ("Маяк вызова Стража Гайи", "minecraft:beacon", "minecraft:beacon", 1, 11, 0),
        ("Битва: Страж Гайи I", "botania:manaresource:5", "botania:manaresource:5", 1, 12, 0),
        ("Дух Гайи (Gaia Spirit)", "botania:manaresource:5", "botania:manaresource:5", 8, 13, 0),
        ("Битва: Страж Гайи II (Хардкор)", "botania:manaresource:5", "botania:manaresource:5", 16, 13, 1),
        ("Кость судьбы (Dice of Fate)", "botania:dice", "botania:dice", 1, 14, 0),
        ("Реликвия: Кольцо Одина", "botania:odinring", "botania:odinring", 1, 15, -1),
        ("Реликвия: Кольцо Тора", "botania:thorring", "botania:thorring", 1, 15, 0),
        ("Реликвия: Кольцо Локи", "botania:lokiring", "botania:lokiring", 1, 15, 1),
        ("Реликвия: Око Флюгеля", "botania:flugeleye", "botania:flugeleye", 1, 16, 0),
        ("Реликвия: Бездонный фрукт", "botania:infinitefruit", "botania:infinitefruit", 1, 16, -1),
        ("Реликвия: Корона Небес", "botania:kingkey", "botania:kingkey", 1, 16, 1),
        ("Элементиевая кирка", "botania:elementiumpick", "botania:elementiumpick", 1, 8, 2),
        ("Элементиевый топор", "botania:elementiumaxe", "botania:elementiumaxe", 1, 9, 2),
        ("Элементиевый меч", "botania:elementiumsword", "botania:elementiumsword", 1, 9, 3),
        ("Броня из Элементия", "botania:elementiumchest", "botania:elementiumchest", 1, 10, 2),
        ("Искра Гайи сверхпроводимости", "botania:sparkupgrade:2", "botania:sparkupgrade:2", 2, 11, 2),
        ("Улучшение искры: Изоляция", "botania:sparkupgrade:3", "botania:sparkupgrade:3", 2, 12, 2),
        ("Мана-накопитель Гайи", "botania:pool:3", "botania:pool:3", 1, 13, 2),
        ("Мана-ткацкий станок Гайи", "botania:loom", "botania:loom", 1, 10, -2),
        ("Мантия высшего архимага", "botania:terrasteelchest", "botania:terrasteelchest", 1, 11, -2),
        ("Линза маны: Детонация", "botania:lens:9", "botania:lens:9", 1, 12, -2),
        ("Линза маны: Разрез", "botania:lens:11", "botania:lens:11", 1, 13, -2),
        ("Звездный резонатор маны", "botania:starfield", "botania:starfield", 1, 14, -1),
        ("Контроллер природного равновесия", "botania:manaresource:5", "botania:manaresource:5", 32, 17, 0),
        ("Триумфатор Эльфхейма и Гайи", "botania:dice", "botania:dice", 1, 18, 0)
    ]

    for idx, (bname, icon_id, task_id, cnt, c, r) in enumerate(bot_adv_nodes):
        q_ch6.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 4 or idx == 14 or idx == 26 or idx == 29),
            "name": bname,
            "desc": f"Высшая природная магия Botania: {bname}. Террасталь, открытие портала в Эльфхейм, победа над Стражем Гайи и обретение древних божественных реликвий.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("botania:manaresource:4", 2), ("botania:manaresource:5", 4)],
            "xp": 350, "loot_tier": 3,
            "prereqs": [idx - 1] if idx > 0 and idx not in [36, 43] else []
        })

    chapters.append(build_chapter(
        line_id=6, order=6,
        line_name="Глава 6: Эльфийская Магия и Террасталь: Botania — Продвинутая",
        line_desc="Террастальная агломерация, врата в Эльфхейм, обмен на Элементий, вызов Стража Гайи и 6 реликвий Асгарда.",
        line_icon_spec=("botania:terrasteel", 1),
        base_qid=300, quest_specs=q_ch6
    ))

    # =========================================================================
    # CHAPTER 7: Звездный Свет: Astral Sorcery — Основы (QIDs 350-399)
    # =========================================================================
    q_ch7 = []
    as_nodes = [
        ("Дневник Астронома", "astralsorcery:itemjournal", "astralsorcery:itemjournal", 1, 0, 0),
        ("Аквамарин (Aquamarine)", "astralsorcery:itemcraftingcomponent:0", "astralsorcery:itemcraftingcomponent:0", 16, 1, 0),
        ("Мрамор Астрала", "astralsorcery:blockmarble:0", "astralsorcery:blockmarble:0", 64, 1, 1),
        ("Рунная доска мрамора", "astralsorcery:blockmarble:6", "astralsorcery:blockmarble:6", 32, 2, 1),
        ("Мраморная колонна", "astralsorcery:blockmarble:2", "astralsorcery:blockmarble:2", 16, 2, 2),
        ("Мраморное гравированное кольцо", "astralsorcery:blockmarble:4", "astralsorcery:blockmarble:4", 16, 3, 1),
        ("Светящаяся палочка (Fosic Wand)", "astralsorcery:itemwand", "astralsorcery:itemwand", 1, 2, 0),
        ("Поиск звездного поля", "astralsorcery:itemwand", "astralsorcery:itemwand", 1, 3, 0),
        ("Световой верстак (Luminous Crafting Table)", "astralsorcery:blockaltar:0", "astralsorcery:blockaltar:0", 1, 4, 0),
        ("Светящийся кристалл скалы (Rock Crystal)", "astralsorcery:itemrockcrystalsimple", "astralsorcery:itemrockcrystalsimple", 1, 4, -1),
        ("Резонирующая палочка (Resonating Wand)", "astralsorcery:itemresonatingwand", "astralsorcery:itemresonatingwand", 1, 5, 0),
        ("Жидкий звездный свет (Liquid Starlight)", "astralsorcery:fluidcontainer", "astralsorcery:fluidcontainer", 1, 5, 1),
        ("Световой колодец (Lightwell)", "astralsorcery:blockwell", "astralsorcery:blockwell", 1, 5, 2),
        ("Звездный металл (Starmetal Ore)", "astralsorcery:blockcustomore:1", "astralsorcery:blockcustomore:1", 4, 6, 1),
        ("Слиток звездного металла (Starmetal Ingot)", "astralsorcery:itemcraftingcomponent:1", "astralsorcery:itemcraftingcomponent:1", 8, 6, 0),
        ("Звездная пыль (Stardust)", "astralsorcery:itemcraftingcomponent:2", "astralsorcery:itemcraftingcomponent:2", 16, 6, -1),
        ("Алтарь звездного света (Starlight Crafting Altar)", "astralsorcery:blockaltar:1", "astralsorcery:blockaltar:1", 1, 7, 0),
        ("Стеклянная линза", "astralsorcery:itemcraftingcomponent:3", "astralsorcery:itemcraftingcomponent:3", 4, 7, 1),
        ("Линза сбора звездного света", "astralsorcery:blocklens", "astralsorcery:blocklens", 2, 8, 1),
        ("Призма звездной фокусировки", "astralsorcery:blockprism", "astralsorcery:blockprism", 1, 8, 2),
        ("Подзорная труба (Hand Telescope)", "astralsorcery:itemhandtelescope", "astralsorcery:itemhandtelescope", 1, 7, -1),
        ("Созвездие: Дискадия (Discidia)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 8, -1),
        ("Созвездие: Армара (Armara)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 8, -2),
        ("Созвездие: Ворче (Vicio)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 9, -1),
        ("Созвездие: Эвицио (Aevitas)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 9, -2),
        ("Созвездие: Луцелла (Lucerna)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 10, -1),
        ("Стационарный телескоп (Telescope)", "astralsorcery:blockmachine:0", "astralsorcery:blockmachine:0", 1, 9, 0),
        ("Инструмент резчика (Chisel of Astral)", "astralsorcery:itemchisel", "astralsorcery:itemchisel", 1, 5, -2),
        ("Звездный резонатор эфира", "astralsorcery:itemskyresonator:0", "astralsorcery:itemskyresonator:0", 1, 6, -2),
        ("Кристальный топор Астрала", "astralsorcery:itemcrystalaxe", "astralsorcery:itemcrystalaxe", 1, 9, 1),
        ("Кристальная кирка Астрала", "astralsorcery:itemcrystalpickaxe", "astralsorcery:itemcrystalpickaxe", 1, 10, 1),
        ("Кристальная лопата Астрала", "astralsorcery:itemcrystalshovel", "astralsorcery:itemcrystalshovel", 1, 10, 2),
        ("Кристальный меч Астрала", "astralsorcery:itemcrystalsword", "astralsorcery:itemcrystalsword", 1, 11, 1),
        ("Очищенный кристалл скалы 100%", "astralsorcery:itemrockcrystalsimple", "astralsorcery:itemrockcrystalsimple", 1, 10, 0),
        ("Выращивание небесного кристалла", "astralsorcery:itemcelestialcrystal", "astralsorcery:itemcelestialcrystal", 1, 11, 0),
        ("Небесный кристалл (Celestial Crystal)", "astralsorcery:itemcelestialcrystal", "astralsorcery:itemcelestialcrystal", 4, 12, 0),
        ("Небесный алтарь (Celestial Altar T3)", "astralsorcery:blockaltar:2", "astralsorcery:blockaltar:2", 1, 13, 0),
        ("Осветительный порошок (Illumination Powder)", "astralsorcery:itemusabledust:0", "astralsorcery:itemusabledust:0", 16, 7, 2),
        ("Ноктюрнальная вспышка (Nocturnal Powder)", "astralsorcery:itemusabledust:1", "astralsorcery:itemusabledust:1", 8, 8, 3),
        ("Светящаяся палочка освещения", "astralsorcery:itemilluminationswand", "astralsorcery:itemilluminationswand", 1, 9, 2),
        ("Палочка архитектора", "astralsorcery:itemarchitectwand", "astralsorcery:itemarchitectwand", 1, 10, 3),
        ("Палочка обмена блоками", "astralsorcery:itemexchangerwand", "astralsorcery:itemexchangerwand", 1, 11, 2),
        ("Палочка захвата существ", "astralsorcery:itemgrapplewand", "astralsorcery:itemgrapplewand", 1, 12, 2),
        ("Звездный компас (Blink Wand)", "astralsorcery:itemblinkwand", "astralsorcery:itemblinkwand", 1, 13, 2),
        ("Заряженный кристалл 900+ Starlight", "astralsorcery:itemcelestialcrystal", "astralsorcery:itemcelestialcrystal", 1, 13, 1),
        ("Песочные часы времени (Horologium)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 12, -1),
        ("Созвездие затмения (Octans)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 13, -1),
        ("Созвездие: Бувидар (Bootes)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 14, -1),
        ("Созвездие: Форнакс (Fornax)", "astralsorcery:itemconstellationpaper", "astralsorcery:itemconstellationpaper", 1, 14, 0),
        ("Первооткрыватель Звездного Неба", "astralsorcery:blockaltar:2", "astralsorcery:blockaltar:2", 1, 15, 0)
    ]

    for idx, (aname, icon_id, task_id, cnt, c, r) in enumerate(as_nodes):
        q_ch7.append({
            "id": idx, "col": c, "row": r, "is_main": (idx == 8 or idx == 16 or idx == 36),
            "name": aname,
            "desc": f"Звездная магия Astral Sorcery: {aname}. Изучайте созвездия ночного неба, собирайте жидкий звездный свет и улучшайте алтари.",
            "icon": (icon_id, 1),
            "tasks": [(task_id, cnt)],
            "rewards": [("astralsorcery:itemcraftingcomponent:1", 4), ("astralsorcery:itemcraftingcomponent:2", 4)],
            "xp": 250, "loot_tier": 2,
            "prereqs": [idx - 1] if idx > 0 and idx not in [20, 27, 37] else []
        })

    chapters.append(build_chapter(
        line_id=7, order=7,
        line_name="Глава 7: Звездный Свет: Astral Sorcery — Основы",
        line_desc="Астрономический дневник, мраморные храмы, световой верстак, созвездия, линзы и алтарь небес.",
        line_icon_spec=("astralsorcery:itemjournal", 1),
        base_qid=350, quest_specs=q_ch7
    ))

    return chapters
