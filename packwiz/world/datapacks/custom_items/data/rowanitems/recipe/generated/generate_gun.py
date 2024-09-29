#!/bin/env python3

from json import dump

template = lambda addition, model: \
{
    "type": "minecraft:smithing_transform",
    "base": {
        "item": "minecraft:crossbow"
    },
    "template": {
        "item": "minecraft:gunpowder"
    },
    "addition": addition,
    "result": {
        "id": "minecraft:crossbow",
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

def ingot_of(material):
    return item(f"{material}_ingot")

types = [
    ("pistol", ingot_of("iron"), 6510003),
    ("blaster_pistol", block_of("iron"), 6510011),
    ("rifle", "diamond", 6510012),
    ("blaster_rifle", block_of("diamond"), 6510013),
    ("reset", item("cactus"), 0)
]

for (name, addition, model) in types:
    with open(f"gun/{name}.json", "w") as f:
        dump(template(addition, model), f, indent=2)
