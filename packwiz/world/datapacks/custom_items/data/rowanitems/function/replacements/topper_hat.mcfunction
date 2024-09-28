kill @e[type=minecraft:item,limit=1,distance=...2,nbt={Item:{id:"minecraft:black_wool"}}]
data merge entity @s {Item:{components:{"minecraft:custom_model_data":6510002}}}
tag @s add rowanitems.modified
