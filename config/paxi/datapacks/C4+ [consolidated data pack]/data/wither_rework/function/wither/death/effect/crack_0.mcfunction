particle dust_color_transition{from_color:[0.25,0.22,0.21],scale:2,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.2 0.2 0.2 0.1 25 normal

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 5.. positioned ^ ^ ^0.5 run return run function wither_rework:wither/death/effect/crack_0
execute if score @s c.int.0 matches 1.. positioned ^ ^ ^0.5 run function wither_rework:wither/death/effect/crack_1