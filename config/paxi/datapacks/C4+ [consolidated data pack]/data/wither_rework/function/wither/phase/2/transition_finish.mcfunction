#Data
execute if score @s wither.animation matches 150.. run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute if score @s wither.animation matches 150.. run tag @s remove wither_rework.boss.wither.allow_flight

#Phase
execute if score @s wither.animation matches 150.. run scoreboard players set @s wither.phase 2

scoreboard players set @s global.ability_rate 150

#Reset
scoreboard players reset @s wither.animation