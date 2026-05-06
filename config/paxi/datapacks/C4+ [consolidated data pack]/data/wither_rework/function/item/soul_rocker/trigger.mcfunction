#Special Attack
execute if predicate wither_rework:sneaking unless entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{soul_rocker:1b}}}]}] unless score @s item.soul_rocker.main_atk matches 1.. at @s run function wither_rework:item/soul_rocker/special_attack/spawn

#Main Attack
execute unless predicate wither_rework:sneaking unless entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{soul_rocker:1b}}}]}] unless score @s item.soul_rocker.main_atk matches 1.. at @s run function wither_rework:item/soul_rocker/main_attack/spawn_projectile

#Play Note
execute unless score @s item.soul_rocker.main_atk matches 10.. unless score @s item.soul_rocker.hold_check matches 1.. positioned ~ ~ ~ run function wither_rework:item/soul_rocker/play_note

#Hold Check
scoreboard players set @s item.soul_rocker.hold_check 2

#Revoke Advancement
advancement revoke @s only wither_rework:trigger/right_click_soul_string