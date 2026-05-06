execute if score @s item.soul_rocker.hold_check matches 1.. run scoreboard players remove @s item.soul_rocker.hold_check 1
execute if score @s item.soul_rocker.main_atk matches 1.. run scoreboard players remove @s item.soul_rocker.main_atk 1

#Offhand
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{soul_rocker:1b}}}]}] run function wither_rework:item/soul_rocker/offhand
