scoreboard players add @s wither.ability 1

#Charge
scoreboard players set @s[scores={wither.ability=1}] wither.ability.int.0 2
scoreboard players set @s[scores={wither.ability=4}] wither.ability.int.0 3
scoreboard players set @s[scores={wither.ability=6}] wither.ability.int.0 4

scoreboard players operation @s c.int.0 = @s wither.ability.int.0
execute at @s[scores={wither.ability=1..20}] rotated ~ 90 if block ~ ~-1 ~ #wither_rework:transparent run function wither_rework:wither/attack/2/velocity

execute unless score @s wither.ability matches 20.. unless block ~ ~-1 ~ #wither_rework:transparent run scoreboard players set @s wither.ability 20

#Effect
execute if score @s wither.ability matches 5 if entity @p[distance=..50] run scoreboard players set @s c.int.0 24
execute if score @s wither.ability matches 5 if entity @p[distance=..50] at @s rotated ~ 0 positioned ~ ~1.5 ~ run function wither_rework:wither/attack/2/effect/drop_down

execute if score @s wither.ability matches ..20 run particle minecraft:squid_ink ~ ~1.5 ~ 1 1 1 0 20 normal
execute if score @s wither.ability matches ..20 run particle minecraft:squid_ink ~ ~3 ~ 0.7 1 0.7 0 20 normal

#Stun
execute if score @s wither.ability matches 21..120 run function wither_rework:wither/attack/2/stun
execute if score @s wither.ability matches 121 run function wither_rework:wither/attack/2/stun_clear
execute if score @s wither.ability matches 121.. run particle explosion ~ ~ ~ 5 0.5 5 0 1 force @a

#Explode
execute if score @s wither.ability matches 20 run function wither_rework:wither/attack/2/explode

data merge entity @s[scores={wither.ability=21}] {Invulnerable:0b}

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight
