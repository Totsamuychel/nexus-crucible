#!/usr/bin/env python3
"""
Nexus Crucible - ZenScript Validator
Parses all .zs files in instance/scripts/ to ensure:
1. Balanced braces and brackets
2. Unique recipe names across all stages
3. Correct registration of all 11 gate items
"""

import re
import sys
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
SCRIPTS_DIR = BASE_DIR / "instance" / "scripts"

GATE_ITEMS = [
    "fired_foundation",
    "pressure_assembly",
    "living_conductor",
    "insulated_industrial_core",
    "alchemical_machine_frame",
    "runic_logic_core",
    "distributed_control_matrix",
    "stabilized_quantum_substrate",
    "celestial_binding_matrix",
    "nexus_singularity",
    "convergence_core"
]

def check_brackets(content, filepath):
    pairs = {"(": ")", "[": "]", "{": "}"}
    stack = []
    # Strip comments
    lines = []
    for line in content.splitlines():
        line = re.sub(r'//.*$', '', line)
        lines.append(line)
    clean = "\n".join(lines)
    clean = re.sub(r'/\*.*?\*/', '', clean, flags=re.DOTALL)

    for i, char in enumerate(clean):
        if char in pairs:
            stack.append((char, i))
        elif char in pairs.values():
            if not stack:
                return f"Unmatched closing '{char}' at pos {i}"
            open_char, _ = stack.pop()
            if pairs[open_char] != char:
                return f"Mismatched pair '{open_char}' and '{char}' at pos {i}"
    if stack:
        return f"Unclosed '{stack[-1][0]}'"
    return None

def validate_all():
    errors = []
    recipe_names = set()
    found_gates = set()

    zs_files = sorted(SCRIPTS_DIR.glob("**/*.zs"))
    if not zs_files:
        return ["No .zs files found in instance/scripts/!"]

    print(f"🔍 Validating {len(zs_files)} ZenScript files...")

    for f in zs_files:
        content = f.read_text(encoding="utf-8")
        # 1. Bracket syntax
        b_err = check_brackets(content, f)
        if b_err:
            errors.append(f"{f.name}: {b_err}")

        # 2. Recipe name uniqueness
        matches = re.findall(r'recipes\.addShape[d|less]\s*\(\s*["\']([^"\']+)["\']', content)
        for r_name in matches:
            if r_name in recipe_names:
                errors.append(f"Duplicate recipe name: '{r_name}' in {f.name}")
            recipe_names.add(r_name)

        # 3. Gate items presence
        for gate in GATE_ITEMS:
            if gate in content:
                found_gates.add(gate)

    missing_gates = set(GATE_ITEMS) - found_gates
    if missing_gates:
        errors.append(f"Missing gate items in scripts: {missing_gates}")

    return errors, len(zs_files), len(recipe_names)

if __name__ == "__main__":
    errs, count_files, count_recipes = validate_all()
    if errs:
        print("❌ ZenScript Validation FAILED:")
        for e in errs:
            print(f"  - {e}")
        sys.exit(1)
    else:
        print(f"✅ All {count_files} ZenScript files validated! ({count_recipes} unique custom recipes)")
        sys.exit(0)
