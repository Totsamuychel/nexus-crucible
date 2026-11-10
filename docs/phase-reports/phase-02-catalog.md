# Phase 2: Catalog & Dependencies Lock Report

**Phase:** Phase 2 (Файлы и права)  
**Status:** completed  

### Approved scope:
1. Загрузка минимального базового кластера JAR для 1.12.2 Forge.
2. Проверка ключевых зависимостей:
   - ContentTweaker требует B.A.S.E.
   - Tinkers' Construct требует Mantle.
   - ModTweaker требует CraftTweaker2.
   - VintageFix требует MixinBooter.
3. Расчёт контрольных сумм SHA256 и формирование `manifests/mods.lock.json`.

### Completed:
- Разработан скрипт выгрузки и верификации [`tools/fetch_baseline_mods.py`](file:///home/Danya/nexus-crucible/tools/fetch_baseline_mods.py).
- Загружен и проверен стартовый функциональный кластер (11 модов в `instance/mods/`):
  1. `CraftTweaker2-1.12-4.1.20.698.jar` (ZenScript движок)
  2. `modtweaker-4.0.20.11.jar` (интеграции механизмов)
  3. `ContentTweaker-1.12.2-4.10.0.jar` (кастомные предметы)
  4. `base-1.12.2-3.14.0.jar` (библиотека ContentTweaker)
  5. `jei_1.12.2-4.24.0.1042.jar` (просмотр рецептов)
  6. `Mantle-1.12-1.3.3.55.jar` (библиотека Tinkers)
  7. `TConstruct-1.12.2-2.13.0.183.jar` (металлургия и плавильня)
  8. `mixinbooter-10.5.jar` (coremod загрузчик миксинов)
  9. `vintagefix-0.7.2.jar` (оптимизация рендера и памяти 1.12)
  10. `Clumps-3.1.2.jar` (оптимизация XP сущностей)
  11. `AppleSkin-mc1.12-1.0.14.jar` (индикация сытости)
- Сформирован [`manifests/mods.lock.json`](file:///home/Danya/nexus-crucible/manifests/mods.lock.json) с полными SHA256 хэшами.

### Artifacts:
- `manifests/mods.lock.json`
- `tools/fetch_baseline_mods.py`
- `instance/mods/*.jar`

### Versions and hashes:
- Все хэши зафиксированы в `manifests/mods.lock.json`.

### Changes:
- Разрешён конфликт версий JEI (оставлен только актуальный релиз 4.24).
- Разрешена обязательная зависимость VintageFix -> добавлен MixinBooter 10.5.

### Tests passed:
- `tools/fetch_baseline_mods.py` выполнился без ошибок.
- Целостность JAR-архивов проверена чтением манифестов.

### Tests failed:
- Нет.

### Known issues:
- Нет.

### Blocking risks:
- Нет.

### Decisions required:
- Переход к Фазе 3 (первичный запуск инстанса) и Фазе 4/5 (конфиги и рецепты стадий).

### Rollback procedure:
- `rm -rf instance/mods/*`
- `git checkout phase/01-progression`

### Next phase proposal:
- Фаза 3 (первичный запуск baseline ядра в Prism Launcher).
