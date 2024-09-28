#!/bin/env python3

from json import dump

template = lambda addition, model: \
{
    "type": "minecraft:smithing_transform",
    "base": {
        "item": "minecraft:mace"
    },
    "template": {
        "item": "minecraft:stick"
    },
    "addition": addition,
    "result": {
        "id": "minecraft:mace",
        "components": {
            "minecraft:custom_model_data": model
        }
    }
}

def item(item_name):
    return {
        "item": f"minecraft:{item_name}"
    }

def block_of(material):
    return item(f"{material}_block")

def tag(tag_name):
    return {
        "tag": f"#minecraft:{tag_name}"
    }

types = [
    ("iron", block_of("iron"), 6510000),
    ("diamond", block_of("diamond"), 6510005),
    ("golden", block_of("gold"), 6510006),
    ("netherite", block_of("netherite"), 6510007),
    ("wooden", tag("logs_that_burn"), 6510008),
    ("stone", item("stone"), 6510009),
    ("reset", item("cactus"), 0)
]

for (name, addition, model) in types:
    with open(f"hammer/{name}_hammer.json", "w") as f:
        dump(template(addition, model), f, indent=2)
