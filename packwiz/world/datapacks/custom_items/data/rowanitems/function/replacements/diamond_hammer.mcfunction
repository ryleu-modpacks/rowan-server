kill @e[type=minecraft:item,limit=1,distance=...2,nbt={Item:{id:"minecraft:diamond_block",count:1}}]
data merge entity @s {Item:{components:{"minecraft:custom_model_data":6510005}}}
tag @s add rowanitems.modified
