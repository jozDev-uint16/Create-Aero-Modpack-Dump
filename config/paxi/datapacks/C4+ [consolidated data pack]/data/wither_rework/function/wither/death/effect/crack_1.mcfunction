particle dust_color_transition{from_color:[0.431,0.369,0.365],scale:1.75,to_color:[0.25,0.22,0.21]} ~ ~ ~ 0.12 0.12 0.12 0.1 20 normal

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 3.. positioned ^ ^ ^0.5 run return run function wither_rework:wither/death/effect/crack_1
execute if score @s c.int.0 matches 1.. positioned ^ ^ ^0.5 run function wither_rework:wither/death/effect/crack_2