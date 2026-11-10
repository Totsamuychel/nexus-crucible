import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.event.PlayerPickupItemEvent;

// ========================================================
// Nexus Crucible: Automated GameStage Progression System
// Dynamic stage unlocking upon crafting or item pickup
// ========================================================

events.onPlayerCrafted(function(event as PlayerCraftedEvent) {
    if (event.player.world.isRemote()) {
        return;
    }
    val player = event.player;
    val itemId = event.output.definition.id;

    if (itemId == "contenttweaker:fired_foundation") {
        if (!player.hasGameStage("s01_steam")) {
            player.addGameStage("s01_steam");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s01_steam (Сила Пара)!");
            player.sendChat("§7Доступны: Tinkers' Smeltery, Коксовые печи Immersive Engineering, обработка бронзы и меди.");
        }
    } else if (itemId == "contenttweaker:pressure_assembly") {
        if (!player.hasGameStage("s02_awakened_nature")) {
            player.addGameStage("s02_awakened_nature");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s02_awakened_nature (Пробуждённая Природа)!");
            player.sendChat("§7Доступны: Botania (Аптекарь, Чистая Флора), Звёздный алтарь Astral Sorcery.");
        }
    } else if (itemId == "contenttweaker:living_conductor") {
        if (!player.hasGameStage("s03_electromechanics")) {
            player.addGameStage("s03_electromechanics");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s03_electromechanics (Электромеханика)!");
            player.sendChat("§7Доступны: Thermal Expansion (Индукционная плавильня, Дробитель), Генераторы RF.");
        }
    } else if (itemId == "contenttweaker:insulated_industrial_core") {
        if (!player.hasGameStage("s04_industrial_chemistry")) {
            player.addGameStage("s04_industrial_chemistry");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s04_industrial_chemistry (Индустриальная Химия)!");
            player.sendChat("§7Доступны: Immersive Petroleum (Перегонный куб), Industrial Foregoing (Пластик, Латекс).");
        }
    } else if (itemId == "contenttweaker:alchemical_machine_frame") {
        if (!player.hasGameStage("s05_arcane_engineering")) {
            player.addGameStage("s05_arcane_engineering");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s05_arcane_engineering (Тайная Инженерия)!");
            player.sendChat("§7Доступны: Thaumcraft 6 (Тигель, Инфузия), Blood Magic (Кровавый алтарь), Twilight Forest.");
        }
    } else if (itemId == "contenttweaker:runic_logic_core") {
        if (!player.hasGameStage("s06_networked_factory")) {
            player.addGameStage("s06_networked_factory");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s06_networked_factory (Цифровая Сеть)!");
            player.sendChat("§7Доступны: Applied Energistics 2 (МЭ Контроллер, Накопители), Прессы, Автокрафт.");
        }
    } else if (itemId == "contenttweaker:distributed_control_matrix") {
        if (!player.hasGameStage("s07_advanced_industry")) {
            player.addGameStage("s07_advanced_industry");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s07_advanced_industry (Передовая Индустрия)!");
            player.sendChat("§7Доступны: NuclearCraft (Реакторы деления, Радиация), Mekanism (Лазеры, Очистка руд).");
        }
    } else if (itemId == "contenttweaker:stabilized_quantum_substrate") {
        if (!player.hasGameStage("s08_celestial_synthesis")) {
            player.addGameStage("s08_celestial_synthesis");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s08_celestial_synthesis (Звёздный Синтез)!");
            player.sendChat("§7Доступны: Draconic Evolution (Ядра, Слияние), Astral Sorcery (Радужный Алтарь).");
        }
    } else if (itemId == "contenttweaker:celestial_binding_matrix") {
        if (!player.hasGameStage("s09_stellar_engineering")) {
            player.addGameStage("s09_stellar_engineering");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s09_stellar_engineering (Сингулярная Инженерия)!");
            player.sendChat("§7Доступны: Extended Crafting (Верстак 7x7, 9x9), Квантовый компрессор, Сингулярности.");
        }
    } else if (itemId == "contenttweaker:nexus_singularity") {
        if (!player.hasGameStage("s10_convergence")) {
            player.addGameStage("s10_convergence");
            player.sendChat("§5§l[Nexus Crucible] §d★ ВНИМАНИЕ! Разблокирована финальная Эпоха s10_convergence (Конвергенция)!");
            player.sendChat("§dДоступны: Avaritia Верстак Экстремального Крафта 9x9, Катализатор Бесконечности, Слитки Бесконечности!");
        }
    } else if (itemId == "contenttweaker:convergence_core") {
        player.sendChat("§e§l==================================================");
        player.sendChat("§6§l★ ПОЗДРАВЛЯЕМ! ВЫ СОЗДАЛИ ЯДРО КОНВЕРГЕНЦИИ! ★");
        player.sendChat("§aВы покорили все эпохи от кремня до бесконечности в Nexus Crucible!");
        player.sendChat("§e§l==================================================");
    }
});

events.onPlayerPickupItem(function(event as PlayerPickupItemEvent) {
    if (event.player.world.isRemote()) {
        return;
    }
    val player = event.player;
    val itemId = event.item.item.definition.id;

    if (itemId == "contenttweaker:fired_foundation") {
        if (!player.hasGameStage("s01_steam")) {
            player.addGameStage("s01_steam");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s01_steam (Сила Пара)!");
            player.sendChat("§7Доступны: Tinkers' Smeltery, Коксовые печи Immersive Engineering, обработка бронзы и меди.");
        }
    } else if (itemId == "contenttweaker:pressure_assembly") {
        if (!player.hasGameStage("s02_awakened_nature")) {
            player.addGameStage("s02_awakened_nature");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s02_awakened_nature (Пробуждённая Природа)!");
            player.sendChat("§7Доступны: Botania (Аптекарь, Чистая Флора), Звёздный алтарь Astral Sorcery.");
        }
    } else if (itemId == "contenttweaker:living_conductor") {
        if (!player.hasGameStage("s03_electromechanics")) {
            player.addGameStage("s03_electromechanics");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s03_electromechanics (Электромеханика)!");
            player.sendChat("§7Доступны: Thermal Expansion (Индукционная плавильня, Дробитель), Генераторы RF.");
        }
    } else if (itemId == "contenttweaker:insulated_industrial_core") {
        if (!player.hasGameStage("s04_industrial_chemistry")) {
            player.addGameStage("s04_industrial_chemistry");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s04_industrial_chemistry (Индустриальная Химия)!");
            player.sendChat("§7Доступны: Immersive Petroleum (Перегонный куб), Industrial Foregoing (Пластик, Латекс).");
        }
    } else if (itemId == "contenttweaker:alchemical_machine_frame") {
        if (!player.hasGameStage("s05_arcane_engineering")) {
            player.addGameStage("s05_arcane_engineering");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s05_arcane_engineering (Тайная Инженерия)!");
            player.sendChat("§7Доступны: Thaumcraft 6 (Тигель, Инфузия), Blood Magic (Кровавый алтарь), Twilight Forest.");
        }
    } else if (itemId == "contenttweaker:runic_logic_core") {
        if (!player.hasGameStage("s06_networked_factory")) {
            player.addGameStage("s06_networked_factory");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s06_networked_factory (Цифровая Сеть)!");
            player.sendChat("§7Доступны: Applied Energistics 2 (МЭ Контроллер, Накопители), Прессы, Автокрафт.");
        }
    } else if (itemId == "contenttweaker:distributed_control_matrix") {
        if (!player.hasGameStage("s07_advanced_industry")) {
            player.addGameStage("s07_advanced_industry");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s07_advanced_industry (Передовая Индустрия)!");
            player.sendChat("§7Доступны: NuclearCraft (Реакторы деления, Радиация), Mekanism (Лазеры, Очистка руд).");
        }
    } else if (itemId == "contenttweaker:stabilized_quantum_substrate") {
        if (!player.hasGameStage("s08_celestial_synthesis")) {
            player.addGameStage("s08_celestial_synthesis");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s08_celestial_synthesis (Звёздный Синтез)!");
            player.sendChat("§7Доступны: Draconic Evolution (Ядра, Слияние), Astral Sorcery (Радужный Алтарь).");
        }
    } else if (itemId == "contenttweaker:celestial_binding_matrix") {
        if (!player.hasGameStage("s09_stellar_engineering")) {
            player.addGameStage("s09_stellar_engineering");
            player.sendChat("§6[Nexus Crucible] §a★ Разблокирована Эпоха s09_stellar_engineering (Сингулярная Инженерия)!");
            player.sendChat("§7Доступны: Extended Crafting (Верстак 7x7, 9x9), Квантовый компрессор, Сингулярности.");
        }
    } else if (itemId == "contenttweaker:nexus_singularity") {
        if (!player.hasGameStage("s10_convergence")) {
            player.addGameStage("s10_convergence");
            player.sendChat("§5§l[Nexus Crucible] §d★ ВНИМАНИЕ! Разблокирована финальная Эпоха s10_convergence (Конвергенция)!");
            player.sendChat("§dДоступны: Avaritia Верстак Экстремального Крафта 9x9, Катализатор Бесконечности, Слитки Бесконечности!");
        }
    } else if (itemId == "contenttweaker:convergence_core") {
        player.sendChat("§e§l==================================================");
        player.sendChat("§6§l★ ПОЗДРАВЛЯЕМ! ВЫ СОЗДАЛИ ЯДРО КОНВЕРГЕНЦИИ! ★");
        player.sendChat("§aВы покорили все эпохи от кремня до бесконечности в Nexus Crucible!");
        player.sendChat("§e§l==================================================");
    }
});

print("[Nexus Crucible] Stage progression unlock events registered.");
