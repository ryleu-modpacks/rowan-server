kill @e[type=minecraft:item,limit=1,distance=...1,nbt={Item:{id:"minecraft:iron_block"}}]
data merge entity @s {Item:{components:{"minecraft:custom_model_data":6510000}}}
tag @s add rowanitems.modified
