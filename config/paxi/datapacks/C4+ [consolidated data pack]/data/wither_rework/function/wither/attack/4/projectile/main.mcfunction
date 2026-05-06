scoreboard players add @s c.data.lifetime 1

#Particle
execute if score @s c.data.lifetime matches 10.. run particle smoke ~ ~0.5 ~ 0 0.25 0 0 1 force @a[distance=..16]

execute as @s[scores={c.data.lifetime=2}] store result entity @s Rotation.[0] float 1 run scoreboard players get @s c.int.1

#Velocity
execute if score @s c.data.lifetime matches 15.. run function wither_rework:wither/attack/4/projectile/simple_velocity

execute if score @s c.data.lifetime matches 15.. if entity @e[type=!#wither_rework:wither_target_blacklist,dx=0,dy=2,dz=0] run function wither_rework:wither/attack/4/projectile/explode

kill @s[scores={c.data.lifetime=75..}]
