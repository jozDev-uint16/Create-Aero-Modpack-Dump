scoreboard players add @s wither.ability.prep 1

#To to Ground
execute if score @s wither.ability.prep matches 1..20 if block ~ ~3 ~ #wither_rework:transparent run tp @s ~ ~0.25 ~
execute if score @s wither.ability.prep matches 21..25 if block ~ ~3 ~ #wither_rework:transparent run tp @s ~ ~0.175 ~
execute if score @s wither.ability.prep matches 26..30 if block ~ ~3 ~ #wither_rework:transparent run tp @s ~ ~0.1 ~

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight

