#!/usr/bin/env python3
"""
Nexus Crucible - Botania & Astral Sorcery Recipes
Generates ~180 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_botania_astral_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    livingrock = "botania:livingrock"
    livingwood = "botania:livingwood"
    manasteel = "botania:manaresource:0"
    mana_pearl = "botania:manaresource:1"
    mana_diamond = "botania:manaresource:2"
    terrasteel = "botania:manaresource:4"
    elementium = "botania:manaresource:7"
    dragonstone = "botania:manaresource:9"

    marble = "astralsorcery:blockmarble:0"
    aquamarine = "astralsorcery:itemcraftingcomponent:0"
    starmetal_ingot = "astralsorcery:itemcraftingcomponent:1"
    res_gem = "astralsorcery:itemcraftingcomponent:4"

    # 1. BOTANIA RUNES (16 Runes)
    runes = [
        ("water", 0, "minecraft:water_bucket", "minecraft:bone_meal", "Руна Воды"),
        ("fire", 1, "minecraft:netherrack", "minecraft:gunpowder", "Руна Огня"),
        ("earth", 2, "minecraft:dirt", "minecraft:clay_ball", "Руна Земли"),
        ("air", 3, "minecraft:feather", "minecraft:string", "Руна Воздуха"),
        ("spring", 4, "minecraft:sapling", "minecraft:wheat", "Руна Весны"),
        ("summer", 5, "minecraft:melon", "minecraft:sand", "Руна Лета"),
        ("autumn", 6, "minecraft:pumpkin", "minecraft:spider_eye", "Руна Осени"),
        ("winter", 7, "minecraft:snowball", "minecraft:cake", "Руна Зимы"),
        ("mana", 8, manasteel, mana_pearl, "Руна Маны"),
        ("lust", 9, mana_diamond, "minecraft:apple", "Руна Похоти"),
        ("gluttony", 10, "minecraft:golden_apple", "minecraft:bread", "Руна Чревоугодия"),
        ("greed", 11, "minecraft:gold_ingot", "minecraft:emerald", "Руна Жадности"),
        ("sloth", 12, "minecraft:bed", "minecraft:clock", "Руна Лени"),
        ("wrath", 13, "minecraft:blaze_rod", "minecraft:magma_cream", "Руна Гнева"),
        ("envy", 14, "minecraft:ender_eye", "minecraft:rabbit_foot", "Руна Зависти"),
        ("pride", 15, "minecraft:golden_helmet", "minecraft:speckled_melon", "Руна Гордыни")
    ]

    for rname, meta, mat1, mat2, rdesc in runes:
        recipes.append(Recipe(
            name=f"nexus_exp_bot_rune_{rname}",
            output=f"botania:rune:{meta} * 2",
            is_shaped=True,
            remove_output=False,
            comment=rdesc,
            pattern=[
                [livingrock, mat1, livingrock],
                [mat2, mana_pearl, mat2],
                [livingrock, mat1, livingrock]
            ]
        ))

    # 2. BOTANIA CORE INFRASTRUCTURE
    recipes.append(Recipe(
        name="nexus_exp_bot_mana_pool",
        output="botania:pool:0",
        is_shaped=True,
        remove_output=True,
        comment="Бассейн маны",
        pattern=[
            [livingrock, None, livingrock],
            [livingrock, mana_pearl, livingrock],
            [livingrock, livingrock, livingrock]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_bot_diluted_pool",
        output="botania:pool:2",
        is_shaped=True,
        remove_output=True,
        comment="Разбавленный бассейн маны",
        pattern=[
            ["botania:livingrock0slab", None, "botania:livingrock0slab"],
            ["botania:livingrock0slab", None, "botania:livingrock0slab"],
            ["botania:livingrock0slab", "botania:livingrock0slab", "botania:livingrock0slab"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_bot_runic_altar",
        output="botania:runealtar",
        is_shaped=True,
        remove_output=True,
        comment="Рунический алтарь Botania",
        pattern=[
            [livingrock, mana_pearl, livingrock],
            [livingrock, mana_diamond, livingrock],
            [livingrock, livingrock, livingrock]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_bot_apothecary",
        output="botania:altar:0",
        is_shaped=True,
        remove_output=True,
        comment="Лепестковый аптекарь",
        pattern=[
            ["minecraft:stone", "minecraft:flower_pot", "minecraft:stone"],
            [None, "minecraft:stone", None],
            ["minecraft:stone", "minecraft:stone", "minecraft:stone"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_bot_elven_gateway",
        output="botania:alfheimportal",
        is_shaped=True,
        remove_output=True,
        comment="Ядро эльфийских врат",
        pattern=[
            [livingwood, terrasteel, livingwood],
            [terrasteel, "botania:rune:8", terrasteel],
            [livingwood, terrasteel, livingwood]
        ]
    ))

    # 3. SPARKS & AUGMENTS
    spark = "botania:spark"
    recipes.append(Recipe(
        name="nexus_exp_bot_spark_base",
        output=f"{spark} * 2",
        is_shaped=True,
        remove_output=True,
        comment="Искра маны (Spark)",
        pattern=[
            [None, "botania:petal:0", None],
            ["minecraft:blaze_powder", mana_pearl, "minecraft:blaze_powder"],
            [None, "botania:petal:0", None]
        ]
    ))
    spark_upgrades = [
        ("dispersive", 0, "botania:rune:0", "Рассеивающее улучшение искры"),
        ("dominant", 1, "botania:rune:1", "Доминантное улучшение искры"),
        ("recessive", 2, "botania:rune:2", "Рецессивное улучшение искры"),
        ("isolated", 3, "botania:rune:3", "Изолирующее улучшение искры")
    ]
    for sname, meta, rune_it, sdesc in spark_upgrades:
        recipes.append(Recipe(
            name=f"nexus_exp_bot_spark_upg_{sname}",
            output=f"botania:sparkupgrade:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=sdesc,
            pattern=[
                [None, rune_it, None],
                [elementium, spark, elementium],
                [None, rune_it, None]
            ]
        ))

    # 4. TERRASTEEL & MANASTEEL TOOLS
    recipes.append(Recipe(
        name="nexus_exp_bot_terra_pick",
        output="botania:terrapick",
        is_shaped=True,
        remove_output=True,
        comment="Крушитель Земли (Terra Shatterer)",
        pattern=[
            [terrasteel, terrasteel, terrasteel],
            ["botania:rune:2", "botania:manaresource:3", "botania:rune:8"],
            [None, "botania:manaresource:3", None]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_bot_terra_sword",
        output="botania:terrasword",
        is_shaped=True,
        remove_output=True,
        comment="Меч Земли (Terra Blade)",
        pattern=[
            [terrasteel],
            [terrasteel],
            ["botania:manaresource:3"]
        ]
    ))

    # 5. FLOATING FLOWERS (16 floating flower variants)
    for fidx in range(16):
        recipes.append(Recipe(
            name=f"nexus_exp_bot_float_flower_{fidx}",
            output=f"botania:floatingflower:{fidx}",
            is_shaped=True,
            remove_output=False,
            comment=f"Парящий мистический цветок #{fidx}",
            pattern=[
                [None, f"botania:specialflower:{fidx}" if fidx == 0 else f"botania:shinyflower:{fidx}", None],
                [None, "botania:floatingspice", None],
                [None, "minecraft:dirt", None]
            ]
        ))

    # 6. ASTRAL SORCERY ARCHITECTURE (Marble & Starlight)
    as_marbles = [
        ("engraved", 1, "Гравированный мрамор"),
        ("chiseled", 2, "Резной мрамор"),
        ("pillar", 3, "Мраморная колонна"),
        ("runed", 4, "Рунический мрамор"),
        ("arch", 5, "Мраморная арка"),
        ("bricks", 6, "Мраморный кирпич")
    ]
    for mname, meta, mdesc in as_marbles:
        recipes.append(Recipe(
            name=f"nexus_exp_as_marble_{mname}",
            output=f"astralsorcery:blockmarble:{meta} * 4",
            is_shaped=True,
            remove_output=True,
            comment=mdesc,
            pattern=[
                [marble, marble],
                [marble, marble]
            ]
        ))

    # 7. ASTRAL ALTARS & OPTICS
    recipes.append(Recipe(
        name="nexus_exp_as_luminous_crafting_table",
        output="astralsorcery:blockaltar:0",
        is_shaped=True,
        remove_output=True,
        comment="Светящийся верстак (Luminous Crafting Table)",
        pattern=[
            [marble, "minecraft:crafting_table", marble],
            [marble, aquamarine, marble],
            [marble, marble, marble]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_as_starlight_altar",
        output="astralsorcery:blockaltar:1",
        is_shaped=True,
        remove_output=True,
        comment="Алтарь звездного света (Starlight Crafting Altar)",
        pattern=[
            [starmetal_ingot, "astralsorcery:itemrockcrystalsimple", starmetal_ingot],
            [marble, "astralsorcery:blockaltar:0", marble],
            [marble, res_gem, marble]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_as_resonator",
        output="astralsorcery:itemskyresonator:0",
        is_shaped=True,
        remove_output=True,
        comment="Звездный резонатор",
        pattern=[
            [aquamarine, "minecraft:gold_ingot", aquamarine],
            [starmetal_ingot, "minecraft:ender_pearl", starmetal_ingot],
            [None, starmetal_ingot, None]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_as_telescope",
        output="astralsorcery:blockmachine:0",
        is_shaped=True,
        remove_output=True,
        comment="Телескоп для обнаружения созвездий",
        pattern=[
            [None, "astralsorcery:itemcraftingcomponent:3", "minecraft:gold_ingot"],
            [None, "minecraft:planks", "astralsorcery:itemcraftingcomponent:3"],
            ["minecraft:stick", None, None]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_as_linking_tool",
        output="astralsorcery:itemlinkingtool",
        is_shaped=True,
        remove_output=True,
        comment="Инструмент связывания звездных кристаллов",
        pattern=[
            [None, aquamarine, "minecraft:stick"],
            [None, "minecraft:stick", aquamarine],
            ["minecraft:stick", None, None]
        ]
    ))

    # 8. CONSTELLATION PAPERS (12 major constellations)
    constellations = [
        ("discidia", "Discidia (Оружие)"),
        ("armara", "Armara (Броня)"),
        ("vicio", "Vicio (Полет)"),
        ("aevitas", "Aevitas (Жизнь)"),
        ("evorsio", "Evorsio (Разрушение)"),
        ("lucerna", "Lucerna (Свет)"),
        ("mineralis", "Mineralis (Руды)"),
        ("horologium", "Horologium (Время)"),
        ("octans", "Octans (Океан)"),
        ("bootes", "Bootes (Пастух)"),
        ("fornax", "Fornax (Огонь)"),
        ("pelotrio", "Pelotrio (Призыв)")
    ]
    for cname, cdesc in constellations:
        recipes.append(Recipe(
            name=f"nexus_exp_as_paper_{cname}",
            output="astralsorcery:itemconstellationpaper",
            is_shaped=True,
            remove_output=False,
            comment=f"Свиток созвездия: {cdesc}",
            pattern=[
                ["minecraft:glowstone_dust", aquamarine, "minecraft:glowstone_dust"],
                [aquamarine, "minecraft:paper", aquamarine],
                ["minecraft:glowstone_dust", starmetal_ingot, "minecraft:glowstone_dust"]
            ]
        ))

    # 9. BOTANIA BAUBLES & RODS
    bot_baubles = [
        ("ring_reach", "botania:reachring", [[elementium, "botania:rune:3", elementium], [elementium, None, elementium], [None, elementium, None]], "Кольцо далекого касания (Ring of Far Reach)"),
        ("ring_magnet", "botania:magnetring", [[manasteel, "minecraft:iron_ingot", manasteel], [manasteel, None, manasteel], [None, manasteel, None]], "Кольцо магнетизма"),
        ("ring_chordata", "botania:waterring", [[elementium, "botania:rune:0", elementium], [elementium, "minecraft:fish", elementium], [None, elementium, None]], "Кольцо хордовых (дыхание под водой)"),
        ("sash", "botania:travelbelt", [["minecraft:leather", "botania:rune:2", "minecraft:leather"], ["minecraft:leather", manasteel, "minecraft:leather"], ["minecraft:leather", None, "minecraft:leather"]], "Пояс странника (Sojourner's Sash)"),
        ("rod_skies", "botania:tornadorod", [[None, "botania:rune:3", elementium], [None, livingwood, "botania:rune:3"], [livingwood, None, None]], "Жезл небес"),
        ("rod_hells", "botania:firerod", [[None, "botania:rune:1", elementium], [None, livingwood, "botania:rune:1"], [livingwood, None, None]], "Жезл глубин (Огненный)"),
        ("rod_seas", "botania:waterrod", [[None, "botania:rune:0", manasteel], [None, livingwood, "botania:rune:0"], [livingwood, None, None]], "Жезл морей"),
        ("rod_bifrost", "botania:rainbowrod", [[None, elementium, "botania:rune:8"], [None, livingwood, elementium], [livingwood, None, None]], "Жезл Радужного моста (Биврёст)")
    ]
    for bid, bout, bpat, bdesc in bot_baubles:
        recipes.append(Recipe(
            name=f"nexus_exp_bot_{bid}",
            output=bout,
            is_shaped=True,
            remove_output=True,
            comment=bdesc,
            pattern=bpat
        ))

    # 10. ASTRAL OPTICS & LENSES
    astral_optics = [
        ("lens", "astralsorcery:itemcraftingcomponent:3", [["astralsorcery:itemcraftingcomponent:0", "minecraft:glass_pane", "astralsorcery:itemcraftingcomponent:0"], ["minecraft:glass_pane", "minecraft:gold_ingot", "minecraft:glass_pane"], ["astralsorcery:itemcraftingcomponent:0", "minecraft:glass_pane", "astralsorcery:itemcraftingcomponent:0"]], "Стеклянная линза Astral Sorcery"),
        ("prism", "astralsorcery:blocklens:0", [[starmetal_ingot, "astralsorcery:itemcraftingcomponent:3", starmetal_ingot], ["astralsorcery:itemcraftingcomponent:3", res_gem, "astralsorcery:itemcraftingcomponent:3"], [starmetal_ingot, marble, starmetal_ingot]], "Звездная призма"),
        ("chalice", "astralsorcery:blockchalice", [[gold_ingot := "minecraft:gold_ingot", None, gold_ingot], [aquamarine, gold_ingot, aquamarine], [marble, gold_ingot, marble]], "Чаша звездного света (Chalice)")
    ]
    for oid, oout, opat, odesc in astral_optics:
        recipes.append(Recipe(
            name=f"nexus_exp_as_{oid}",
            output=oout,
            is_shaped=True,
            remove_output=True,
            comment=odesc,
            pattern=opat
        ))

    # 11. MYSTICAL FLOWERS & APOTHECARY (16 functional flowers)
    flowers = [
        ("pure_daisy", "botania:specialflower", ["botania:petal:0", "botania:petal:0", "botania:petal:0", "botania:petal:0", "minecraft:wheat_seeds"], "Чистая маргаритка (Pure Daisy)"),
        ("endoflame", "botania:specialflower", ["botania:petal:1", "botania:petal:4", "botania:petal:14", "minecraft:coal", "minecraft:wheat_seeds"], "Пламя Энда (Endoflame)"),
        ("hydroangeas", "botania:specialflower", ["botania:petal:3", "botania:petal:11", "botania:petal:3", "minecraft:water_bucket", "minecraft:wheat_seeds"], "Водогортензия (Hydroangeas)"),
        ("thermalily", "botania:specialflower", ["botania:petal:14", "botania:petal:1", "botania:petal:4", "minecraft:lava_bucket", "minecraft:wheat_seeds"], "Теплолилия (Thermalily)"),
        ("rosa_arcana", "botania:specialflower", ["botania:petal:13", "botania:petal:10", "botania:petal:9", "minecraft:experience_bottle", "minecraft:wheat_seeds"], "Тайная роза (Rosa Arcana)"),
        ("munchdew", "botania:specialflower", ["botania:petal:10", "botania:petal:13", "botania:petal:10", "minecraft:shears", "minecraft:wheat_seeds"], "Жуй-роса (Munchdew)"),
        ("entropinnyum", "botania:specialflower", ["botania:petal:14", "botania:petal:7", "botania:petal:14", "minecraft:gunpowder", "minecraft:wheat_seeds"], "Энтропинниум (Entropinnyum)"),
        ("kekimurus", "botania:specialflower", ["botania:petal:4", "botania:petal:9", "botania:petal:11", "minecraft:cake", "minecraft:wheat_seeds"], "Кекимурус (Kekimurus)"),
        ("gourmaryllis", "botania:specialflower", ["botania:petal:4", "botania:petal:14", "botania:petal:1", "minecraft:cooked_beef", "minecraft:wheat_seeds"], "Гурмариллис (Gourmaryllis)"),
        ("dandelifeon", "botania:specialflower", ["botania:petal:10", "botania:petal:10", "botania:petal:10", "minecraft:golden_apple", "minecraft:wheat_seeds"], "Данделифеон (Dandelifeon)"),
        ("orechid", "botania:specialflower", ["botania:petal:7", "botania:petal:8", "botania:petal:7", "minecraft:iron_pickaxe", "minecraft:wheat_seeds"], "Рудоцвет (Orechid)"),
        ("fallen_kanade", "botania:specialflower", ["botania:petal:4", "botania:petal:4", "botania:petal:0", "minecraft:golden_carrot", "minecraft:wheat_seeds"], "Падшая Канаде (Fallen Kanade)"),
        ("spectrolus", "botania:specialflower", ["botania:petal:0", "botania:petal:1", "botania:petal:2", "minecraft:wool", "minecraft:wheat_seeds"], "Спектролус (Spectrolus)"),
        ("rafflowsia", "botania:specialflower", ["botania:petal:5", "botania:petal:10", "botania:petal:13", "minecraft:slime_ball", "minecraft:wheat_seeds"], "Раффлоузия (Rafflowsia)"),
        ("medumone", "botania:specialflower", ["botania:petal:8", "botania:petal:7", "botania:petal:8", "minecraft:cobblestone", "minecraft:wheat_seeds"], "Медумона (Medumone)"),
        ("marimorphosis", "botania:specialflower", ["botania:petal:7", "botania:petal:4", "botania:petal:1", "minecraft:stone", "minecraft:wheat_seeds"], "Мариморфоз (Marimorphosis)")
    ]
    for fid, fout, finputs, fdesc in flowers:
        recipes.append(Recipe(
            name=f"nexus_exp_bot_flower_{fid}",
            output=fout,
            is_shaped=False,
            remove_output=False,
            comment=fdesc,
            shapeless_inputs=finputs
        ))

    return recipes
