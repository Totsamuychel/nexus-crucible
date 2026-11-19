#!/usr/bin/env python3
"""
Nexus Crucible - Blood Magic, Thaumcraft & Kami Recipes
Generates ~180 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_blood_thaum_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    # Blood Magic Materials
    blank_slate = "bloodmagic:slate:0"
    reinf_slate = "bloodmagic:slate:1"
    imbued_slate = "bloodmagic:slate:2"
    demonic_slate = "bloodmagic:slate:3"
    ethereal_slate = "bloodmagic:slate:4"

    blood_rune_blank = "bloodmagic:blood_rune:0"
    blood_altar = "bloodmagic:altar"

    stone = "minecraft:stone"
    gold_ingot = "minecraft:gold_ingot"
    diamond = "minecraft:diamond"
    iron_plate = "thermalfoundation:material:32"
    glass = "minecraft:glass"

    # Thaumcraft Materials
    salis_mundus = "thaumcraft:salis_mundus"
    thaumium = "thaumcraft:ingot:0"
    void_metal = "thaumcraft:ingot:1"
    amber = "thaumcraft:amber"
    quicksilver = "thaumcraft:quicksilver"

    # 1. BLOOD MAGIC ALTAR & SLATES
    recipes.append(Recipe(
        name="nexus_exp_bm_altar",
        output=blood_altar,
        is_shaped=True,
        remove_output=True,
        comment="Кровавый алтарь Blood Magic",
        pattern=[
            [stone, None, stone],
            [stone, "minecraft:furnace", stone],
            [gold_ingot, diamond, gold_ingot]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_bm_sacrificial_dagger",
        output="bloodmagic:sacrificial_dagger",
        is_shaped=True,
        remove_output=True,
        comment="Жертвенный кинжал",
        pattern=[
            [glass, glass, glass],
            [None, gold_ingot, glass],
            [iron_plate, None, glass]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_bm_dagger_of_sacrifice",
        output="bloodmagic:dagger_of_sacrifice",
        is_shaped=True,
        remove_output=True,
        comment="Кинжал жертвоприношения мобов",
        pattern=[
            [None, diamond, iron_plate],
            [None, reinf_slate, diamond],
            [gold_ingot, None, None]
        ]
    ))

    # Blood Runes
    blood_runes_data = [
        ("speed", 1, "minecraft:sugar", "Руна скорости"),
        ("sacrifice", 2, gold_ingot, "Руна жертвоприношения"),
        ("self_sacrifice", 3, "minecraft:glowstone_dust", "Руна самопожертвования"),
        ("dislocation", 4, "minecraft:water_bucket", "Руна перемещения"),
        ("capacity", 5, "minecraft:bucket", "Руна вместимости"),
        ("augmented_capacity", 6, "minecraft:cauldron", "Руна усиленной вместимости"),
        ("superior_capacity", 7, diamond, "Руна высшей вместимости"),
        ("charging", 8, "minecraft:redstone_block", "Руна зарядки"),
        ("acceleration", 9, "minecraft:clock", "Руна ускорения")
    ]

    recipes.append(Recipe(
        name="nexus_exp_bm_rune_blank",
        output=f"{blood_rune_blank} * 2",
        is_shaped=True,
        remove_output=True,
        comment="Пустая кровавая руна",
        pattern=[
            [stone, blank_slate, stone],
            [blank_slate, blood_altar, blank_slate],
            [stone, blank_slate, stone]
        ]
    ))

    for rname, meta, core_mat, rdesc in blood_runes_data:
        recipes.append(Recipe(
            name=f"nexus_exp_bm_rune_{rname}",
            output=f"bloodmagic:blood_rune:{meta}",
            is_shaped=True,
            remove_output=True,
            comment=rdesc,
            pattern=[
                [stone, reinf_slate, stone],
                [core_mat, blood_rune_blank, core_mat],
                [stone, reinf_slate, stone]
            ]
        ))

    # 2. BLOOD MAGIC SIGILS
    sigils = [
        ("divination", "bloodmagic:sigil_divination", [[blank_slate, "minecraft:redstone", blank_slate], ["minecraft:redstone", glass, "minecraft:redstone"], [blank_slate, "minecraft:redstone", blank_slate]], "Сигил предсказания"),
        ("water", "bloodmagic:sigil_water", [[blank_slate, "minecraft:water_bucket", blank_slate], ["minecraft:water_bucket", reinf_slate, "minecraft:water_bucket"], [blank_slate, "minecraft:water_bucket", blank_slate]], "Сигил воды"),
        ("lava", "bloodmagic:sigil_lava", [[reinf_slate, "minecraft:lava_bucket", reinf_slate], ["minecraft:lava_bucket", reinf_slate, "minecraft:lava_bucket"], [reinf_slate, "minecraft:lava_bucket", reinf_slate]], "Сигил лавы"),
        ("air", "bloodmagic:sigil_air", [[reinf_slate, "minecraft:feather", reinf_slate], ["minecraft:feather", "minecraft:ghast_tear", "minecraft:feather"], [reinf_slate, "minecraft:feather", reinf_slate]], "Сигил воздуха"),
        ("green_grove", "bloodmagic:sigil_green_grove", [[blank_slate, "minecraft:sapling", blank_slate], ["minecraft:wheat", reinf_slate, "minecraft:wheat"], [blank_slate, "minecraft:bone_meal", blank_slate]], "Сигил зеленеющей рощи"),
        ("blood_light", "bloodmagic:sigil_blood_light", [[blank_slate, "minecraft:glowstone_dust", blank_slate], ["minecraft:glowstone_dust", blank_slate, "minecraft:glowstone_dust"], [blank_slate, "minecraft:glowstone_dust", blank_slate]], "Сигил кровавого света"),
        ("magnetism", "bloodmagic:sigil_magnetism", [[imbued_slate, iron_plate, imbued_slate], [iron_plate, "minecraft:iron_block", iron_plate], [imbued_slate, iron_plate, imbued_slate]], "Сигил магнетизма"),
        ("phantom_bridge", "bloodmagic:sigil_phantom_bridge", [[demonic_slate, "minecraft:ender_pearl", demonic_slate], ["minecraft:stone", demonic_slate, "minecraft:stone"], [demonic_slate, "minecraft:ender_pearl", demonic_slate]], "Сигил призрачного моста"),
        ("void", "bloodmagic:sigil_void", [[reinf_slate, "minecraft:bucket", reinf_slate], ["minecraft:bucket", "minecraft:nether_star", "minecraft:bucket"], [reinf_slate, "minecraft:bucket", reinf_slate]], "Сигил пустоты"),
        ("fast_miner", "bloodmagic:sigil_fast_miner", [[imbued_slate, "minecraft:iron_pickaxe", imbued_slate], ["minecraft:gold_pickaxe", "minecraft:diamond_pickaxe", "minecraft:gold_pickaxe"], [imbued_slate, "minecraft:iron_pickaxe", imbued_slate]], "Сигил быстрой добычи")
    ]
    for sid, sout, spat, sdesc in sigils:
        recipes.append(Recipe(
            name=f"nexus_exp_bm_sigil_{sid}",
            output=sout,
            is_shaped=True,
            remove_output=True,
            comment=sdesc,
            pattern=spat
        ))

    # 3. TARTARIC GEMS & SENTIENT GEAR
    tartaric_gems = [
        ("petty", "bloodmagic:soul_gem:0", diamond, "minecraft:redstone", "Крошечный тартаров самоцвет"),
        ("lesser", "bloodmagic:soul_gem:1", "bloodmagic:soul_gem:0", reinf_slate, "Малый тартаров самоцвет"),
        ("common", "bloodmagic:soul_gem:2", "bloodmagic:soul_gem:1", imbued_slate, "Обычный тартаров самоцвет"),
        ("greater", "bloodmagic:soul_gem:3", "bloodmagic:soul_gem:2", demonic_slate, "Большой тартаров самоцвет"),
    ]
    for gid, gout, gcore, gslate, gdesc in tartaric_gems:
        recipes.append(Recipe(
            name=f"nexus_exp_bm_gem_{gid}",
            output=gout,
            is_shaped=True,
            remove_output=True,
            comment=gdesc,
            pattern=[
                [None, "minecraft:gold_ingot", None],
                [gslate, gcore, gslate],
                [None, glass, None]
            ]
        ))

    # Sentient Sword
    recipes.append(Recipe(
        name="nexus_exp_bm_sentient_sword",
        output="bloodmagic:sentient_sword",
        is_shaped=True,
        remove_output=True,
        comment="Разумный меч Blood Magic",
        pattern=[
            [None, "bloodmagic:item_demon_crystal:0", None],
            [None, "bloodmagic:item_demon_crystal:0", None],
            [None, "bloodmagic:soul_gem:1", None]
        ]
    ))

    # 4. THAUMCRAFT CORE UTILITIES
    recipes.append(Recipe(
        name="nexus_exp_tc_arcane_workbench",
        output="thaumcraft:arcane_workbench",
        is_shaped=True,
        remove_output=True,
        comment="Магический верстак Thaumcraft",
        pattern=[
            [salis_mundus],
            ["minecraft:crafting_table"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_crucible",
        output="thaumcraft:crucible",
        is_shaped=True,
        remove_output=True,
        comment="Тигель Thaumcraft",
        pattern=[
            [salis_mundus],
            ["minecraft:cauldron"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_thaumometer",
        output="thaumcraft:thaumometer",
        is_shaped=True,
        remove_output=True,
        comment="Таумометр для сканирования аспектов",
        pattern=[
            [gold_ingot, glass, gold_ingot],
            [glass, salis_mundus, glass],
            [gold_ingot, glass, gold_ingot]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_goggles",
        output="thaumcraft:goggles",
        is_shaped=True,
        remove_output=True,
        comment="Очки откровения (Goggles of Revealing)",
        pattern=[
            ["minecraft:leather", thaumium, "minecraft:leather"],
            ["thaumcraft:thaumometer", None, "thaumcraft:thaumometer"]
        ]
    ))

    # 5. INFUSION MATRIX & PEDESTALS
    recipes.append(Recipe(
        name="nexus_exp_tc_infusion_matrix",
        output="thaumcraft:infusion_matrix",
        is_shaped=True,
        remove_output=True,
        comment="Матрица наполнения Thaumcraft",
        pattern=[
            ["thaumcraft:stone_arcane", "minecraft:ender_pearl", "thaumcraft:stone_arcane"],
            ["minecraft:ender_pearl", salis_mundus, "minecraft:ender_pearl"],
            ["thaumcraft:stone_arcane", "minecraft:ender_pearl", "thaumcraft:stone_arcane"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_pedestal",
        output="thaumcraft:pedestal_arcane * 2",
        is_shaped=True,
        remove_output=True,
        comment="Пьедестал наполнения",
        pattern=[
            ["thaumcraft:stone_arcane", "thaumcraft:stone_arcane", "thaumcraft:stone_arcane"],
            [None, "thaumcraft:stone_arcane", None],
            ["thaumcraft:stone_arcane", "thaumcraft:stone_arcane", "thaumcraft:stone_arcane"]
        ]
    ))

    # 6. VOID METAL & CASTER GAUNTLETS
    recipes.append(Recipe(
        name="nexus_exp_tc_caster_gauntlet",
        output="thaumcraft:caster_basic",
        is_shaped=True,
        remove_output=True,
        comment="Базовая метательная перчатка",
        pattern=[
            [iron_plate, "minecraft:leather", iron_plate],
            ["minecraft:leather", salis_mundus, "minecraft:leather"],
            [iron_plate, "minecraft:leather", iron_plate]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_tc_void_seed_craft",
        output="thaumcraft:void_seed * 2",
        is_shaped=True,
        remove_output=False,
        comment="Семена пустоты Thaumcraft",
        pattern=[
            ["minecraft:ender_eye", "minecraft:obsidian", "minecraft:ender_eye"],
            ["minecraft:obsidian", salis_mundus, "minecraft:obsidian"],
            ["minecraft:ender_eye", "minecraft:obsidian", "minecraft:ender_eye"]
        ]
    ))

    # 7. ESSENTIA SMELTERY & JARS
    essentia_items = [
        ("jar", "thaumcraft:jar_normal", [[glass, "minecraft:slab", glass], [glass, None, glass], [glass, glass, glass]], "Банка для эссенции Thaumcraft"),
        ("phial", "thaumcraft:phial:0 * 8", [[None, glass, None], [glass, None, glass], [None, glass, None]], "Стеклянный флакон для эссенции"),
        ("alembic", "thaumcraft:alembic", [[iron_plate, "minecraft:bucket", iron_plate], [glass, "thaumcraft:crucible", glass], [iron_plate, iron_plate, iron_plate]], "Дистиллятор эссенции (Alembic)"),
        ("smeltery", "thaumcraft:smelter_basic", [["thaumcraft:stone_arcane", "minecraft:furnace", "thaumcraft:stone_arcane"], ["thaumcraft:stone_arcane", "thaumcraft:crucible", "thaumcraft:stone_arcane"], ["thaumcraft:stone_arcane", "minecraft:furnace", "thaumcraft:stone_arcane"]], "Печь очистки эссенции"),
        ("stabilizer", "thaumcraft:stabilizer", [[thaumium, "minecraft:ender_eye", thaumium], ["minecraft:diamond", salis_mundus, "minecraft:diamond"], [thaumium, "minecraft:gold_block", thaumium]], "Стабилизатор рунической матрицы"),
        ("inlay", "thaumcraft:matrix_cost", [["thaumcraft:stone_arcane", thaumium, "thaumcraft:stone_arcane"], [thaumium, salis_mundus, thaumium], ["thaumcraft:stone_arcane", thaumium, "thaumcraft:stone_arcane"]], "Инкрустация матрицы наполнения")
    ]
    for eid, eout, epat, edesc in essentia_items:
        recipes.append(Recipe(
            name=f"nexus_exp_tc_{eid}",
            output=eout,
            is_shaped=True,
            remove_output=True,
            comment=edesc,
            pattern=epat
        ))

    # 8. THAUMCRAFT FORTRESS & CASTER FOCUS ITEMS
    tc_extras = [
        ("focus_fire", "thaumcraft:focus_1", [[None, "minecraft:blaze_powder", None], ["minecraft:quartz", salis_mundus, "minecraft:quartz"], [None, "minecraft:blaze_powder", None]], "Фокус огня Thaumcraft"),
        ("focus_frost", "thaumcraft:focus_2", [[None, "minecraft:snowball", None], ["minecraft:quartz", salis_mundus, "minecraft:quartz"], [None, "minecraft:snowball", None]], "Фокус холода Thaumcraft"),
        ("focus_shock", "thaumcraft:focus_3", [[None, "minecraft:glowstone_dust", None], ["minecraft:quartz", salis_mundus, "minecraft:quartz"], [None, "minecraft:glowstone_dust", None]], "Фокус молнии Thaumcraft"),
        ("fortress_helm", "thaumcraft:fortress_helm", [[thaumium, thaumium, thaumium], [thaumium, "thaumcraft:goggles", thaumium]], "Шлем таум-крепости"),
        ("fortress_chest", "thaumcraft:fortress_chest", [[thaumium, None, thaumium], [thaumium, thaumium, thaumium], [thaumium, thaumium, thaumium]], "Кираса таум-крепости"),
        ("fortress_legs", "thaumcraft:fortress_legs", [[thaumium, thaumium, thaumium], [thaumium, None, thaumium], [thaumium, None, thaumium]], "Поножи таум-крепости"),
        ("arcane_levitator", "thaumcraft:levitator", [[iron_plate, "minecraft:feather", iron_plate], ["thaumcraft:stone_arcane", salis_mundus, "thaumcraft:stone_arcane"], [iron_plate, "thaumcraft:stone_arcane", iron_plate]], "Магический левитатор"),
        ("void_siphon", "thaumcraft:void_siphon", [[void_metal, "minecraft:ender_eye", void_metal], [void_metal, salis_mundus, void_metal], [void_metal, "thaumcraft:stone_arcane", void_metal]], "Пустотный сифон")
    ]
    for tid, tout, tpat, tdesc in tc_extras:
        recipes.append(Recipe(
            name=f"nexus_exp_tc_{tid}",
            output=tout,
            is_shaped=True,
            remove_output=False,
            comment=tdesc,
            pattern=tpat
        ))

    return recipes
