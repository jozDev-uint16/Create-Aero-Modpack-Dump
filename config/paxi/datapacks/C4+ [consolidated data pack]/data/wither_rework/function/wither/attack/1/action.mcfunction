scoreboard players add @s wither.ability 1

#Charge
scoreboard players set @s[scores={wither.ability=1}] wither.ability.int.0 20

scoreboard players operation @s c.int.0 = @s wither.ability.int.0
execute at @s[scores={wither.ability=1..20}] rotated ~ 0 if block ^ ^1 ^1 #wither_rework:transparent run function wither_rework:wither/attack/1/velocity
scoreboard players remove @s[scores={wither.ability=1..20}] wither.ability.int.0 1
execute if score @s wither.ability matches 1..20 rotated ~ 0 positioned ^ ^ ^1 if entity @e[type=player,distance=..4] run scoreboard players remove @s wither.ability.int.0 2

execute if score @s wither.ability matches 5..19 unless score @s wither.ability.int.0 matches 1.. run scoreboard players set @s wither.ability 20

#Particles
execute if score @s wither.ability matches ..20 positioned ^ ^ ^1 run function wither_rework:wither/attack/1/effect/charge_particles

#Explode
execute if score @s wither.ability matches 25 run function wither_rework:wither/attack/1/explode

data merge entity @s[scores={wither.ability=26}] {Invulnerable:0b}

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight
