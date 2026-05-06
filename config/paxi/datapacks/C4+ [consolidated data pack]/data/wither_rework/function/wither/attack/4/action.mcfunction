scoreboard players add @s wither.ability 1

#To to Ground
execute if block ~ ~-1 ~ #wither_rework:transparent run tp @s ~ ~-0.2 ~ facing entity @p
execute unless block ~ ~-1 ~ #wither_rework:transparent run tp @s ~ ~ ~ facing entity @p

#Wave Attack
scoreboard players add @s[scores={wither.ability=..201}] wither.ability.int.0 1

execute if score @s wither.ability.int.0 matches 20.. run function wither_rework:wither/attack/4/pattern/random

#Stun
execute if score @s wither.ability matches 201..380 run function wither_rework:wither/attack/4/stun
execute if score @s wither.ability matches 381 run function wither_rework:wither/attack/4/stun_clear
execute if score @s wither.ability matches 381.. run particle explosion ~ ~ ~ 5 0.5 5 0 1 force @a

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight
