particle minecraft:large_smoke ~ ~ ~ ^ ^ ^100000 0.00001 0 force

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 1.. rotated ~10 0 run function wither_rework:wither/attack/2/effect/explosion