# Phase 0: Runtime & Core Stack Report

**Phase:** Phase 0 (Стек)  
**Status:** completed  

### Approved scope:
1. Определение среды выполнения: Minecraft 1.12.2, Forge, Java 8 x64.
2. Проверка доступности системных инструментов и изоляции инстанса.
3. Определение стержней: стандартный стек технологий (IE -> Thermal/EnderIO -> AE2 -> Mekanism) и магии (Botania/Astral -> Blood Magic/Thaumcraft -> Endgame Avaritia).
4. Определение лимитов памяти: 4096 – 8192 MB RAM с G1GC (ноутбук с 16 GB общей RAM).

### Completed:
- Установлен OpenJDK 8 (`jre8-openjdk` 8.504.u01).
- Установлен и настроен Prism Launcher (`extra/prismlauncher`).
- Создан и привязан профиль инстанса `Nexus-Crucible` с версией Minecraft 1.12.2 и Forge 14.23.5.2860.
- Инициализирован Git-репозиторий сборки в `/home/Danya/nexus-crucible`.

### Artifacts:
- `~/.local/share/PrismLauncher/instances/Nexus-Crucible/instance.cfg`
- `~/.local/share/PrismLauncher/instances/Nexus-Crucible/mmc-pack.json`
- `.minecraft` symlink -> `/home/Danya/nexus-crucible/instance`

### Versions and hashes:
- Minecraft: `1.12.2`
- Forge: `14.23.5.2860`
- Java: `OpenJDK 1.8.0_504` (`/usr/lib/jvm/java-8-openjdk/jre/bin/java`)

### Changes:
- Базовый runtime зафиксирован на Java 8 без рискованных неофициальных форков.

### Tests passed:
- `archlinux-java status`: подтверждено наличие `java-8-openjdk`.
- `prismlauncher --help`: подтверждена интеграция CLI.

### Tests failed:
- Нет.

### Known issues:
- Нет.

### Blocking risks:
- Нет.

### Decisions required:
- Утверждение перехода к Фазе 2 (Каталог и lock-файл).

### Rollback procedure:
- Удаление `~/.local/share/PrismLauncher/instances/Nexus-Crucible` и каталога `/home/Danya/nexus-crucible`.

### Next phase proposal:
- Фаза 1 (Прогрессия и спецификации рецептов) — завершена.
- Фаза 2 (Проверка зависимостей и манифестов).
