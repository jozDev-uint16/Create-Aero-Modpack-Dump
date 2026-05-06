execute rotated ~ -70 run particle minecraft:large_smoke ~ ~ ~ ^ ^ ^100000 0.000008 0 force
execute rotated ~ -80 run particle minecraft:large_smoke ~ ~-2 ~ ^ ^ ^100000 0.000006 0 force
execute rotated ~ -85 run particle minecraft:large_smoke ~ ~-3 ~ ^ ^ ^100000 0.0000045 0 force

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 1.. rotated ~15 0 run function wither_rework:wither/attack/2/effect/drop_down