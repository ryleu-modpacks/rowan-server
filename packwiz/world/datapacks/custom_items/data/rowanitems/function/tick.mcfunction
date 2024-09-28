execute as @e[type=item,nbt={Item:{id:"minecraft:carved_pumpkin"}},tag=!rowanitems.modified] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_wool"}},distance=...2] run function rowanitems:replacements/top_hat
execute as @e[type=item,nbt={Item:{id:"minecraft:mace"}},tag=!rowanitems.modified] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block"}},distance=...2] run function rowanitems:replacements/silver_hammer

execute as @e[type=item] store result score @s rowanitems.custom_model_data run data get entity @s Item.components."minecraft:custom_model_data"
execute as @e[type=minecraft:item,scores={rowanitems.custom_model_data=1..}] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:cactus"}},distance=...1] run function rowanitems:clear
