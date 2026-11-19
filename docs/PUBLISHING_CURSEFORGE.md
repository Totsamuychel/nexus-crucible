# Руководство по публикации сборки на CurseForge

## 1. Подготовка и требования
CurseForge требует специальный формат экспорта modpack:
- **Файл для загрузки:** `release/Nexus-Crucible-1.2.0-CurseForge.zip` (весит ~2.25 МБ).
- Внутри архива строго соблюдены стандарты CurseForge:
  - `manifest.json`: список всех 204 модов с их официальными `projectID` и `fileID`, Forge 14.23.5.2860, Minecraft 1.12.2.
  - `modlist.html`: HTML список модов с кликабельными ссылками на авторов (обязательное требование модерации CurseForge).
  - Папка `overrides/`: конфигурации (`config/`), скрипты (`scripts/`), кастомные квесты (`DefaultQuests.json`), таблицы лута (`DefaultLoot.json`), текстуры (`resources/`).
  - **Важно:** Файл OptiFine исключен из архива CurseForge (правила CurseForge запрещают упаковку OptiFine в zip, так как у него отдельная лицензия). Игрокам рекомендуется доустановить OptiFine 1.12.2 HD U G5 вручную в папку `mods`.

---

## 2. Пошаговая инструкция загрузки на CurseForge

1. Перейдите на [CurseForge Authors](https://authors.curseforge.com/) или [CurseForge Dashboard](https://curseforge.com/) и войдите в свой аккаунт.
2. Нажмите **"Create Project"** -> выберите категорию **"Minecraft"** -> тип **"Modpacks"**.
3. Заполните поля проекта:
   - **Name:** `Nexus Crucible`
   - **Summary (Краткое описание):** `A hardcore expert progression modpack featuring 1,514 quests and 2,500+ unified cross-mod recipes across 11 technological and magical eras.`
   - **Categories:** Tech, Magic, Quests, Hardcore, Progression, Sci-Fi.
   - **Logo:** Загрузите логотип из файла `instance/icon.png`.
4. Вставьте описание проекта (см. шаблон ниже).
5. После создания проекта перейдите во вкладку **"Files"** -> **"Upload File"**:
   - Выберите файл: `release/Nexus-Crucible-1.2.0-CurseForge.zip`.
   - **Display Name:** `Nexus Crucible 1.2.0 (Expert Overhaul)`
   - **Release Type:** `Release` (или `Beta`).
   - **Minecraft Version:** `1.12.2`.
   - **Changelog:** Скопируйте текст из `CHANGELOG.md` секции `[1.2.0-expert-recipes]`.
6. Нажмите **Submit**. Модерация CurseForge обычно занимает от 30 минут до нескольких часов в рабочие дни.

---

## 3. Шаблон описания для страницы CurseForge (Description)

```markdown
# 🌌 Nexus Crucible — Expert Progression Modpack

Welcome to **Nexus Crucible**, a monumental expert modpack designed for Minecraft 1.12.2 inspired by legendary packs like *Divine Journey 2* and *Enigmatica 2: Expert*.

---

### ✨ Core Highlights

- **📜 1,514 Quests in 34 Chapters:** Complete progression tree powered by BetterQuesting with tiered loot crates (Common, Uncommon, Rare, Epic Endgame).
- **⚙️ 2,500+ Interconnected Expert Recipes:** Unified metallurgy and cross-mod recipes using CraftTweaker 2. No simple vanilla tool skips; every machine and tier feels earned.
- **⚡ 11 Balanced Progression Stages:** From stone-age primitive survival (`s00_primitive`) all the way to ultimate singularity engineering and the Convergence Core (`s10_convergence`).
- **🔮 Deep Magic Systems:** Fully integrated Botania, Astral Sorcery, Blood Magic & Thaumcraft 6.
- **🏭 Heavy Industrial Tech:** Immersive Engineering, Thermal Expansion, Ender IO, Industrial Foregoing, Mekanism (up to 5x ore processing), NuclearCraft fission reactors, and Environmental Tech miners.
- **💾 Digital Automation:** Applied Energistics 2, AE2 Stuff, PackagedAuto, XNet, and Integrated Dynamics for massive factory automation.
- **⏳ 420+ Hours of Balanced Gameplay:** Verified smooth pacing with no dead ends or broken chains.

---

### 💻 System Requirements & Optimization

- **Allocated RAM:** Minimum 6 GB, Recommended 8 GB (`-Xmx8G -Xms6G`).
- **Java:** Java 8 (x64) with G1GC garbage collection:
  ```
  -XX:+UseG1GC -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M
  ```
- **OptiFine:** Highly recommended! Download `OptiFine 1.12.2 HD U G5` and drop it into your `.minecraft/mods` folder for optimal FPS and shader support.
```
