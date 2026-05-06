scoreboard players add @s wither.ability.prep 1

#TP upwards
execute if block ~ ~3 ~ #wither_rework:transparent rotated ~ 0 if entity @p[distance=..8] run tp @s ^ ^0.5 ^-0.5
execute if block ~ ~3 ~ #wither_rework:transparent rotated ~ 0 unless entity @p[distance=..8] run tp @s ^ ^0.5 ^0.1 facing entity @p

#Armour Reduce
execute if score @s wither.ability.prep matches 10.. run attribute @s generic.armor base set 10
execute if score @s wither.ability.prep matches 10.. run attribute @s generic.armor_toughness base set 0

#No AI
data merge entity @s {NoAI:1b}

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight