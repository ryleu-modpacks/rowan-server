execute as @e[type=item,nbt={Item:{id:"minecraft:carved_pumpkin",count:1}},tag=!rowanitems.modified] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_wool",count:1}},distance=...2] run function rowanitems:replacements/top_hat
execute as @e[type=item,nbt={Item:{id:"minecraft:mace",count:1}},tag=!rowanitems.modified] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block",count:1}},distance=...2] run function rowanitems:replacements/silver_hammer
execute as @e[type=item,nbt={Item:{id:"minecraft:carved_pumpkin",count:1}},tag=!rowanitems.modified] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_wool",count:2}},distance=...2] run function rowanitems:replacements/topper_hat

execute as @e[type=minecraft:item,scores={rowanitems.custom_model_data=1..}] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:cactus"}},distance=...2] run function rowanitems:clear

execute as @e[type=item] store result score @s rowanitems.custom_model_data run data get entity @s Item.components."minecraft:custom_model_data"