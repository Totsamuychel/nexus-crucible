#!/usr/bin/env python3
"""
Common helper classes and functions for generating ZenScript recipes
"""

from dataclasses import dataclass, field
from typing import List, Optional, Union, Any

@dataclass
class Recipe:
    name: str
    output: str
    pattern: List[List[Optional[str]]] = field(default_factory=list)
    shapeless_inputs: List[str] = field(default_factory=list)
    is_shaped: bool = True
    remove_output: bool = True
    comment: str = ""

def format_item(it: Optional[str]) -> str:
    if it is None:
        return "null"
    it = it.strip()
    if it == "null":
        return "null"
    if it.startswith("<"):
        return it
    if " * " in it:
        base, count = it.split(" * ", 1)
        base = base.strip()
        if not (base.startswith("<") and base.endswith(">")):
            base = f"<{base}>"
        return f"{base} * {count.strip()}"
    return f"<{it}>"

def get_base_item(it: str) -> str:
    it = it.strip()
    if " * " in it:
        it = it.split(" * ", 1)[0].strip()
    if it.startswith("<") and it.endswith(">"):
        return it
    return f"<{it}>"

def format_recipe(r: Recipe) -> str:
    lines = []
    if r.comment:
        lines.append(f"// {r.comment}")
    if r.remove_output:
        base_out = get_base_item(r.output)
        lines.append(f"recipes.remove({base_out});")

    out_formatted = format_item(r.output)

    if r.is_shaped:
        lines.append(f'recipes.addShaped("{r.name}", {out_formatted}, [')
        row_strs = []
        for row in r.pattern:
            row_items = [format_item(it) for it in row]
            row_strs.append("    [" + ", ".join(row_items) + "]")
        lines.append(",\n".join(row_strs))
        lines.append("]);")
    else:
        in_items = [format_item(it) for it in r.shapeless_inputs]
        lines.append(f'recipes.addShapeless("{r.name}", {out_formatted}, [{", ".join(in_items)}]);')

    lines.append("")
    return "\n".join(lines)

def generate_zs_file(title: str, recipes: List[Recipe]) -> str:
    header = f"""// ========================================================
// Nexus Crucible: Expert Recipe Overhaul
// Module: {title}
// Generated Recipes: {len(recipes)}
// ========================================================

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

"""
    body = "\n".join(format_recipe(r) for r in recipes)
    return header + body
