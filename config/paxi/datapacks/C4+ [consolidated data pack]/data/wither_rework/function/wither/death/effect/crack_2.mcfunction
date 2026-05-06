particle dust_color_transition{from_color:[0.569,0.486,0.482],scale:1.5,to_color:[0.431,0.369,0.365]} ~ ~ ~ 0.07 0.07 0.07 0.1 15 normal

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 1.. positioned ^ ^ ^0.5 run function wither_rework:wither/death/effect/crack_2