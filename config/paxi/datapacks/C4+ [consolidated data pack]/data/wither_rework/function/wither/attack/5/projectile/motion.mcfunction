#Impact
execute at @s unless block ^ ^ ^0.5 #wither_rework:transparent run return run function wither_rework:wither/attack/5/projectile/impact
execute at @s positioned ^ ^ ^0.5 if entity @e[type=!#wither_rework:wither_target_blacklist,dx=0,dy=0,dz=0] run return run function wither_rework:wither/attack/5/projectile/impact

#Move
scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 1.. positioned ^ ^ ^0.1 run return run function wither_rework:wither/attack/5/projectile/motion

execute if score @s c.data.lifetime matches 20.. if entity @e[type=!#wither_rework:wither_target_blacklist,distance=..6] run tag @s add stop_following

execute if entity @s[tag=stop_following] run return run tp @s ~ ~ ~ ~ ~
execute if score @s c.data.lifetime matches ..12 run return run tp @s ~ ~ ~ ~ ~

execute unless entity @s[tag=stop_following] facing entity @n[type=!#wither_rework:wither_target_blacklist,distance=..64] eyes positioned ^ ^ ^0.2 rotated as @s positioned ^ ^ ^0.8 positioned ^ ^ ^-1 facing entity @s eyes facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~
