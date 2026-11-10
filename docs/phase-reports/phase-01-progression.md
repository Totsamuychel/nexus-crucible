# Phase 1: Progression & Recipe Specifications Report

**Phase:** Phase 1 (Прогрессия и спецификации)  
**Status:** completed  

### Approved scope:
1. Фиксация 11 стадий (`s00`–`s10`) без циклических зависимостей.
2. Проектирование гейт-предметов и их регистрация в ContentTweaker.
3. Составление спецификаций материалов, унификации руд и матриц 9×9 Extreme Crafting.
4. Разработка автотеста валидации прогрессии.

### Completed:
- Создан каталог спецификаций `recipe-specs/`:
  - `gates.yaml` — 11 стадий, условия открытия и гейт-предметы.
  - `materials.yaml` — единый источник генерации руд и правила унификации металлов.
  - `extreme-crafting.yaml` — матрицы 9×9 для `Nexus Singularity` и `Convergence Core`.
- Созданы скрипты ZenScript:
  - `instance/scripts/00_content/gates.zs` (ContentTweaker регистрация 11 предметов).
  - `instance/scripts/80_stages/stages.zs` (GameStages привязка).
- Реализован автоматический валидатор `tools/validate_progression.py`.

### Artifacts:
- `recipe-specs/gates.yaml`
- `recipe-specs/materials.yaml`
- `recipe-specs/extreme-crafting.yaml`
- `instance/scripts/00_content/gates.zs`
- `instance/scripts/80_stages/stages.zs`
- `tools/validate_progression.py`

### Versions and hashes:
- Git commit: `feat(phase-01): implement progression stages, recipe specs and gate definitions`

### Changes:
- Ни один гейт-предмет не добывается лутом или торговлей.
- Проверена непрерывность графа от `s00` до `s10`.

### Tests passed:
- `python3 tools/validate_progression.py` (0 errors).

### Tests failed:
- Нет.

### Known issues:
- Для проверки отображения 9×9 в игре требуется фактический запуск инстанса с Avaritia (Фаза 3).

### Blocking risks:
- Нет.

### Decisions required:
- Разрешение на переход к Фазе 2 и Фазе 3 (выгрузка и запуск минимального baseline-профиля Forge).

### Rollback procedure:
- `git checkout phase/00-stack`

### Next phase proposal:
- Фаза 2/3: сборка baseline-пакета модов (Forge + CT + CoT + JEI + Mantle + TConstruct) и тестовый первый запуск инстанса.
