scoreboard players add @s wither.ability.prep 1

execute positioned ~ ~3 ~ rotated ~ 0 positioned ^1.5 ^ ^ run particle large_smoke ~ ~ ~ 0.2 0.2 0.2 0.01 8 force
execute positioned ~ ~3 ~ rotated ~ 0 positioned ^-1.5 ^ ^ run particle large_smoke ~ ~ ~ 0.2 0.2 0.2 0.01 8 force

#TP upwards
execute at @s[scores={wither.ability.prep=1..20}] facing entity @p eyes rotated ~ -45 positioned ^ ^ ^1 if block ^ ^ ^1 #wither_rework:transparent run tp @s ~ ~ ~ ~ ~
execute at @s[scores={wither.ability.prep=21..}] facing entity @p eyes rotated ~ 0 positioned ^ ^ ^0.1 if block ^ ^ ^0.1 #wither_rework:transparent run tp @s ~ ~ ~ ~ ~

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight

