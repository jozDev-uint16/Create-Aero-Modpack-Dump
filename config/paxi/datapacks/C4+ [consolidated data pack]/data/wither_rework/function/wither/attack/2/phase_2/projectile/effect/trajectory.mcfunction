particle dust_color_transition{from_color:[0.341,0.259,0.259],scale:0.9,to_color:[1.000,0.902,0.000]} ~ ~ ~ 0 0 0 1 0 force

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 1.. positioned ^ ^ ^0.5 run function wither_rework:wither/attack/2/phase_2/projectile/effect/trajectory