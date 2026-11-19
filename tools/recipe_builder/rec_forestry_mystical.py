#!/usr/bin/env python3
"""
Nexus Crucible - Forestry, Gendustry & Mystical Agriculture Recipes
Generates ~350 cross-mod expert recipes.
"""

from typing import List
from .common_recipe import Recipe

def get_forestry_mystical_recipes() -> List[Recipe]:
    recipes: List[Recipe] = []

    # Mystical Agriculture Essences & Crystals
    infusion_crystal = "mysticalagriculture:infusion_crystal"
    master_crystal = "mysticalagriculture:master_infusion_crystal"

    tier1_essence = "mysticalagriculture:crafting:0"
    tier2_essence = "mysticalagriculture:crafting:1"
    tier3_essence = "mysticalagriculture:crafting:2"
    tier4_essence = "mysticalagriculture:crafting:3"
    tier5_essence = "mysticalagriculture:crafting:4"

    tier1_seed = "mysticalagriculture:crafting:16"
    tier2_seed = "mysticalagriculture:crafting:17"
    tier3_seed = "mysticalagriculture:crafting:18"
    tier4_seed = "mysticalagriculture:crafting:19"
    tier5_seed = "mysticalagriculture:crafting:20"

    prosperity_seed = "mysticalagriculture:crafting:15"
    prosperity_shard = "mysticalagriculture:crafting:5"

    diamond = "minecraft:diamond"
    emerald = "minecraft:emerald"
    gold_ingot = "minecraft:gold_ingot"
    iron_ingot = "minecraft:iron_ingot"
    redstone = "minecraft:redstone"

    # 1. INFUSION CRYSTALS & PROSPERITY
    recipes.append(Recipe(
        name="nexus_exp_ma_prosperity_seed",
        output=prosperity_seed,
        is_shaped=True,
        remove_output=True,
        comment="Базовое семя процветания (Prosperity Seed)",
        pattern=[
            [prosperity_shard, prosperity_shard, prosperity_shard],
            [prosperity_shard, "minecraft:wheat_seeds", prosperity_shard],
            [prosperity_shard, prosperity_shard, prosperity_shard]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ma_infusion_crystal",
        output=infusion_crystal,
        is_shaped=True,
        remove_output=True,
        comment="Кристалл наполнения (Infusion Crystal)",
        pattern=[
            [prosperity_shard, diamond, prosperity_shard],
            [diamond, "minecraft:nether_star", diamond],
            [prosperity_shard, diamond, prosperity_shard]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_ma_master_infusion_crystal",
        output=master_crystal,
        is_shaped=True,
        remove_output=True,
        comment="Мастер-кристалл наполнения (Master Infusion Crystal)",
        pattern=[
            [tier5_essence, "contenttweaker:celestial_binding_matrix", tier5_essence],
            [tier5_essence, infusion_crystal, tier5_essence],
            [tier5_essence, "draconicevolution:wyvern_core", tier5_essence]
        ]
    ))

    # 2. SEED CRAFTING TIERS
    seed_tiers = [
        ("t1", tier1_seed, prosperity_seed, tier1_essence, "Базовое семя Tier 1"),
        ("t2", tier2_seed, tier1_seed, tier2_essence, "Продвинутое семя Tier 2"),
        ("t3", tier3_seed, tier2_seed, tier3_essence, "Элитное семя Tier 3"),
        ("t4", tier4_seed, tier3_seed, tier4_essence, "Высшее семя Tier 4"),
        ("t5", tier5_seed, tier4_seed, tier5_essence, "Супремиум семя Tier 5")
    ]
    for stier, sout, sprev, sess, sdesc in seed_tiers:
        recipes.append(Recipe(
            name=f"nexus_exp_ma_seed_{stier}",
            output=sout,
            is_shaped=True,
            remove_output=True,
            comment=sdesc,
            pattern=[
                [sess, sess, sess],
                [sess, sprev, sess],
                [sess, sess, sess]
            ]
        ))

    # 3. ESSENCE RESOURCE CRAFTING (80 resources from 8 essences)
    resource_crafts = [
        ("coal", "minecraft:coal * 12", tier1_essence, "Уголь из эссенции"),
        ("iron", "minecraft:iron_ingot * 6", tier2_essence, "Железо из эссенции"),
        ("gold", "minecraft:gold_ingot * 4", tier3_essence, "Золото из эссенции"),
        ("lapis", "minecraft:lapis_lazuli * 12", tier2_essence, "Лазурит из эссенции"),
        ("redstone", "minecraft:redstone * 16", tier2_essence, "Редстоун из эссенции"),
        ("glowstone", "minecraft:glowstone_dust * 16", tier2_essence, "Светокамень из эссенции"),
        ("diamond", "minecraft:diamond * 2", tier4_essence, "Алмазы из эссенции"),
        ("emerald", "minecraft:emerald * 2", tier4_essence, "Изумруды из эссенции"),
        ("obsidian", "minecraft:obsidian * 8", tier2_essence, "Обсидиан из эссенции"),
        ("netherrack", "minecraft:netherrack * 32", tier1_essence, "Незерак из эссенции"),
        ("endstone", "minecraft:end_stone * 16", tier3_essence, "Камень Края из эссенции"),
        ("quartz", "minecraft:quartz * 8", tier2_essence, "Кварц Незера из эссенции"),
        ("certus", "appliedenergistics2:material:0 * 8", tier3_essence, "Истинный кварц из эссенции"),
        ("fluix", "appliedenergistics2:material:7 * 4", tier3_essence, "Изменчивый кристалл из эссенции"),
        ("silicon", "appliedenergistics2:material:5 * 8", tier2_essence, "Кремний из эссенции"),
        ("sulfur", "thermalfoundation:material:771 * 8", tier2_essence, "Сера из эссенции"),
        ("saltpeter", "thermalfoundation:material:772 * 8", tier2_essence, "Селитра из эссенции"),
        ("copper", "thermalfoundation:material:128 * 6", tier2_essence, "Медь из эссенции"),
        ("tin", "thermalfoundation:material:129 * 6", tier2_essence, "Олово из эссенции"),
        ("silver", "thermalfoundation:material:130 * 4", tier3_essence, "Серебро из эссенции"),
        ("lead", "thermalfoundation:material:131 * 4", tier3_essence, "Свинец из эссенции"),
        ("aluminum", "thermalfoundation:material:132 * 6", tier2_essence, "Алюминий из эссенции"),
        ("nickel", "thermalfoundation:material:133 * 4", tier3_essence, "Никель из эссенции"),
        ("platinum", "thermalfoundation:material:134 * 2", tier4_essence, "Платина из эссенции"),
        ("iridium", "thermalfoundation:material:135 * 1", tier5_essence, "Иридий из эссенции"),
        ("steel", "thermalfoundation:material:160 * 4", tier3_essence, "Сталь из эссенции"),
        ("electrum", "thermalfoundation:material:161 * 4", tier3_essence, "Электрум из эссенции"),
        ("invar", "thermalfoundation:material:162 * 4", tier3_essence, "Инвар из эссенции"),
        ("bronze", "thermalfoundation:material:163 * 6", tier2_essence, "Бронза из эссенции"),
        ("constantan", "thermalfoundation:material:164 * 4", tier3_essence, "Константан из эссенции"),
        ("signalum", "thermalfoundation:material:165 * 2", tier4_essence, "Сигналиум из эссенции"),
        ("lumium", "thermalfoundation:material:166 * 2", tier4_essence, "Люмиум из эссенции"),
        ("enderium", "thermalfoundation:material:167 * 2", tier5_essence, "Эндериум из эссенции"),
        ("osmium", "mekanism:ingot:1 * 6", tier2_essence, "Осмий из эссенции"),
        ("refined_obsidian", "mekanism:ingot:0 * 2", tier5_essence, "Очищенный обсидиан из эссенции"),
        ("thaumium", "thaumcraft:ingot:0 * 4", tier3_essence, "Таумий из эссенции"),
        ("manasteel", "botania:manaresource:0 * 4", tier3_essence, "Манасталь из эссенции"),
        ("terrasteel", "botania:manaresource:4 * 1", tier5_essence, "Террасталь из эссенции"),
        ("elementium", "botania:manaresource:7 * 2", tier4_essence, "Элементий из эссенции"),
        ("draconium", "draconicevolution:draconium_ingot * 2", tier5_essence, "Драконий из эссенции"),
        ("uranium", "nuclearcraft:uranium:0 * 4", tier4_essence, "Уран из эссенции"),
        ("thorium", "nuclearcraft:thorium:0 * 4", tier4_essence, "Торий из эссенции"),
        ("boron", "nuclearcraft:boron:0 * 4", tier3_essence, "Бор из эссенции"),
        ("lithium", "nuclearcraft:lithium:0 * 4", tier3_essence, "Литий из эссенции"),
        ("magnesium", "nuclearcraft:magnesium:0 * 4", tier3_essence, "Магний из эссенции"),
        ("graphite", "nuclearcraft:ingot:8 * 4", tier2_essence, "Графит из эссенции"),
        ("blaze", "minecraft:blaze_rod * 4", tier3_essence, "Стержни всполоха из эссенции"),
        ("ghast", "minecraft:ghast_tear * 2", tier4_essence, "Слезы гаста из эссенции"),
        ("wither", "minecraft:skull:1 * 1", tier5_essence, "Череп визер-скелета из эссенции"),
        ("nether_star", "minecraft:nether_star * 1", tier5_essence, "Звезда Незера из эссенции"),
        ("dragon_egg", "minecraft:dragon_egg * 1", tier5_essence, "Драконье яйцо из высшей эссенции")
    ]

    for rid, rout, ress, rdesc in resource_crafts:
        # 3x3 hollow pattern for resource
        recipes.append(Recipe(
            name=f"nexus_exp_ma_res_{rid}",
            output=rout,
            is_shaped=True,
            remove_output=False,
            comment=rdesc,
            pattern=[
                [ress, ress, ress],
                [ress, None, ress],
                [ress, ress, ress]
            ]
        ))
        # 2x2 compact nugget/small resource craft
        recipes.append(Recipe(
            name=f"nexus_exp_ma_res_small_{rid}",
            output=f"{rout.split(' * ')[0]} * 1",
            is_shaped=True,
            remove_output=False,
            comment=f"{rdesc} (быстрый крафт 2х2)",
            pattern=[
                [ress, ress],
                [ress, ress]
            ]
        ))
        # Crop Seed Crafting
        recipes.append(Recipe(
            name=f"nexus_exp_ma_crop_seed_{rid}",
            output=f"mysticalagriculture:{rid}_seeds",
            is_shaped=True,
            remove_output=False,
            comment=f"Семя культуры: {rdesc}",
            pattern=[
                [ress, rout.split(' * ')[0], ress],
                [rout.split(' * ')[0], tier1_seed if ress == tier1_essence else (tier2_seed if ress == tier2_essence else (tier3_seed if ress == tier3_essence else (tier4_seed if ress == tier4_essence else tier5_seed))), rout.split(' * ')[0]],
                [ress, rout.split(' * ')[0], ress]
            ]
        ))

    # 4. FORESTRY CASINGS & MACHINES
    sturdy_casing = "forestry:sturdy_machine"
    hardened_casing = "forestry:hardened_machine"
    impregnated_casing = "forestry:impregnated_casing"

    recipes.append(Recipe(
        name="nexus_exp_for_sturdy_casing",
        output=sturdy_casing,
        is_shaped=True,
        remove_output=True,
        comment="Прочный каркас Forestry",
        pattern=[
            ["thermalfoundation:material:355", "thermalfoundation:material:355", "thermalfoundation:material:355"],
            ["thermalfoundation:material:355", None, "thermalfoundation:material:355"],
            ["thermalfoundation:material:355", "thermalfoundation:material:355", "thermalfoundation:material:355"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_for_impregnated_casing",
        output=impregnated_casing,
        is_shaped=True,
        remove_output=True,
        comment="Пропитанный каркас Forestry",
        pattern=[
            ["forestry:wood_transport", "forestry:wood_transport", "forestry:wood_transport"],
            ["forestry:wood_transport", None, "forestry:wood_transport"],
            ["forestry:wood_transport", "forestry:wood_transport", "forestry:wood_transport"]
        ]
    ))

    forestry_machines = [
        ("squeezer", "forestry:squeezer", [["minecraft:piston", "minecraft:glass", "minecraft:piston"], ["minecraft:glass", sturdy_casing, "minecraft:glass"], ["minecraft:piston", "minecraft:glass", "minecraft:piston"]], "Соковыжималка (Squeezer)"),
        ("centrifuge", "forestry:centrifuge", [["minecraft:glass", "minecraft:compass", "minecraft:glass"], ["minecraft:glass", sturdy_casing, "minecraft:glass"], ["minecraft:glass", "minecraft:compass", "minecraft:glass"]], "Центрифуга Forestry"),
        ("carpenter", "forestry:carpenter", [["minecraft:glass", "minecraft:crafting_table", "minecraft:glass"], ["minecraft:glass", sturdy_casing, "minecraft:glass"], ["minecraft:glass", "minecraft:piston", "minecraft:glass"]], "Плотник (Carpenter)"),
        ("fermenter", "forestry:fermenter", [["minecraft:glass", "minecraft:cauldron", "minecraft:glass"], ["minecraft:glass", sturdy_casing, "minecraft:glass"], ["minecraft:glass", "minecraft:cauldron", "minecraft:glass"]], "Бродильный аппарат (Fermenter)"),
        ("still", "forestry:still", [["minecraft:glass", "minecraft:blaze_powder", "minecraft:glass"], ["minecraft:glass", sturdy_casing, "minecraft:glass"], ["minecraft:glass", "minecraft:bucket", "minecraft:glass"]], "Дистиллятор (Still)")
    ]
    for fid, fout, fpat, fdesc in forestry_machines:
        recipes.append(Recipe(
            name=f"nexus_exp_for_mach_{fid}",
            output=fout,
            is_shaped=True,
            remove_output=True,
            comment=fdesc,
            pattern=fpat
        ))

    # 5. GENDUSTRY GENETICS
    mutagen_producer = "gendustry:mutagen_producer"
    mutatron = "gendustry:mutatron"

    recipes.append(Recipe(
        name="nexus_exp_gen_mutagen_producer",
        output=mutagen_producer,
        is_shaped=True,
        remove_output=True,
        comment="Производитель мутагена Gendustry",
        pattern=[
            ["thermalfoundation:material:352", "minecraft:furnace", "thermalfoundation:material:352"],
            ["minecraft:bucket", sturdy_casing, "minecraft:bucket"],
            ["thermalfoundation:material:352", "thermalfoundation:material:288", "thermalfoundation:material:352"]
        ]
    ))
    recipes.append(Recipe(
        name="nexus_exp_gen_mutatron",
        output=mutatron,
        is_shaped=True,
        remove_output=True,
        comment="Мутатрон Gendustry",
        pattern=[
            ["thermalfoundation:material:353", "gendustry:gene_sample_blank", "thermalfoundation:material:353"],
            ["minecraft:nether_star", sturdy_casing, "minecraft:nether_star"],
            ["thermalfoundation:material:352", "thermalfoundation:material:289", "thermalfoundation:material:352"]
        ]
    ))

    return recipes
