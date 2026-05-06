
particle end_rod ~ ~1.2 ~ ^ ^ ^100000 0.000002 0 force

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 1.. rotated ~18 0 run return run function wither_rework:nether_star/particle
scoreboard players reset @s c.int.0
