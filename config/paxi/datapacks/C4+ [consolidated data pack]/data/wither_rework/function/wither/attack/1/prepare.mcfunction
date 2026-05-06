scoreboard players add @s wither.ability.prep 1

#TP upwards
scoreboard players set @s[scores={wither.ability.prep=10}] wither.ability.int.0 15

scoreboard players operation @s c.int.0 = @s wither.ability.int.0
tp @s[scores={wither.ability.prep=9}] ~ ~ ~ facing entity @p
tp @s[scores={wither.ability.prep=30}] ~ ~ ~ facing entity @p
execute at @s[scores={wither.ability.prep=10..30}] if entity @p[distance=..20] positioned ~ ~1 ~ rotated ~ 0 if block ^ ^ ^-1 #wither_rework:transparent positioned ~ ~-1 ~ run function wither_rework:wither/attack/1/velocity_reverse
scoreboard players remove @s wither.ability.int.0 1

#Particles
function wither_rework:wither/attack/1/effect/charge_particles

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight