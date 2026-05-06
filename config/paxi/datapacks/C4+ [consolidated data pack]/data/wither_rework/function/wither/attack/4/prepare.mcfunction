scoreboard players add @s wither.ability.prep 1

scoreboard players set @s c.int.0 24
execute rotated ~ 0 run function wither_rework:wither/attack/4/effect/inhale

#To to Ground
execute if block ~ ~-1 ~ #wither_rework:transparent run tp @s ~ ~-0.2 ~

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight

