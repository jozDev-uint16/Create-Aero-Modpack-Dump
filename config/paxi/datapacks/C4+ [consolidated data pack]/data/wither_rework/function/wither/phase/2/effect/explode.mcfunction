particle minecraft:squid_ink ~ ~ ~ ^ ^ ^100000 0.00002 0 force
particle minecraft:squid_ink ~ ~ ~ ^ ^ ^100000 0.000008 0 force

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 1.. rotated ~12 0 run function wither_rework:wither/phase/2/effect/explode