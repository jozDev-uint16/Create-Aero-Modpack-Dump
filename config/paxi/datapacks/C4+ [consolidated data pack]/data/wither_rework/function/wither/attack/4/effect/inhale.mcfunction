particle minecraft:large_smoke ^ ^2 ^4 ^ ^ ^-100000 0.000003 0 force

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 1.. rotated ~15 0 run function wither_rework:wither/attack/4/effect/inhale