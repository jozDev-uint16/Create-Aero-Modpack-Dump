scoreboard players add @s wither.ability 1

#Particle
execute positioned ~ ~1.5 ~ rotated ~ 0 run particle electric_spark ~ ~ ~ 2 2 2 1.5 5 force

#Charge
execute at @s[scores={wither.ability=1..100}] unless entity @p[distance=..1.5] facing entity @p eyes run tp @s ^ ^ ^0.25 ~ ~

#Explode
scoreboard players add @s wither.ability.int.0 1
execute if score @s wither.ability.int.0 matches 20 run function wither_rework:wither/attack/3/explode

data merge entity @s[scores={wither.ability=21}] {Invulnerable:0b}

#Particle
scoreboard players add @s wither.ability.int.1 1
execute if score @s wither.ability.int.1 matches 8.. run particle explosion ~ ~2 ~ 1.5 1.5 1.5 0 1 normal
execute if score @s wither.ability.int.1 matches 8.. run playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 0.1 0
execute if score @s wither.ability.int.1 matches 8.. run scoreboard players reset @s wither.ability.int.1

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight
