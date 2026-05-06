tp @s[scores={c.int.0=1}] ~ ~ ~

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 1.. rotated ~ 0 positioned ^ ^ ^-0.1 run function wither_rework:wither/attack/1/velocity_reverse
