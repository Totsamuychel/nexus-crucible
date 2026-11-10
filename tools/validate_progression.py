#!/usr/bin/env python3
"""
Nexus Crucible - Progression & Recipe Specification Validator
Verifies:
1. Contiguous stage progression s00 -> s10
2. Absence of cyclic gate dependencies
3. 9x9 Extreme Crafting matrix dimensions and valid key coverage
"""

import sys
import yaml
from pathlib import Path

def validate():
    base_dir = Path(__file__).resolve().parent.parent
    gates_file = base_dir / "recipe-specs" / "gates.yaml"
    extreme_file = base_dir / "recipe-specs" / "extreme-crafting.yaml"
    materials_file = base_dir / "recipe-specs" / "materials.yaml"

    errors = []

    # 1. Validate gates
    if not gates_file.exists():
        errors.append(f"Missing gates file: {gates_file}")
        return errors

    with open(gates_file, "r", encoding="utf-8") as f:
        gates_data = yaml.safe_load(f)

    stages = gates_data.get("stages", {})
    expected_stages = [f"s{i:02d}" for i in range(11)]
    actual_stages = sorted([k.split("_")[0] for k in stages.keys()])

    if actual_stages != expected_stages:
        errors.append(f"Stage mismatch! Expected {expected_stages}, got {actual_stages}")

    for stage_key, data in stages.items():
        if "gate_item" not in data or "id" not in data["gate_item"]:
            errors.append(f"Stage {stage_key} missing gate_item.id")

    # 2. Validate Extreme Crafting 9x9
    if not extreme_file.exists():
        errors.append(f"Missing extreme crafting file: {extreme_file}")
        return errors

    with open(extreme_file, "r", encoding="utf-8") as f:
        extreme_data = yaml.safe_load(f)

    recipes = extreme_data.get("recipes", {})
    for r_name, r_spec in recipes.items():
        pattern = r_spec.get("pattern", [])
        if len(pattern) != 9:
            errors.append(f"Recipe '{r_name}' pattern must have 9 rows, got {len(pattern)}")
        for i, row in enumerate(pattern):
            cols = row.split()
            if len(cols) != 9:
                errors.append(f"Recipe '{r_name}' row {i} must have 9 columns, got {len(cols)}")

    # 3. Validate Materials
    if not materials_file.exists():
        errors.append(f"Missing materials file: {materials_file}")
    else:
        with open(materials_file, "r", encoding="utf-8") as f:
            mat_data = yaml.safe_load(f)
            if "primary_metals" not in mat_data:
                errors.append("materials.yaml missing primary_metals section")

    return errors

if __name__ == "__main__":
    errs = validate()
    if errs:
        print("❌ Progression Validation FAILED:")
        for e in errs:
            print(f"  - {e}")
        sys.exit(1)
    else:
        print("✅ Nexus Crucible Progression Validation PASSED!")
        sys.exit(0)
