scoreboard players add @s c.data.lifetime 1

#Particle
execute at @s run particle smoke ~ ~0.2 ~ 0.1 0.1 0.1 0.005 3 normal

#Motion
execute as @s[scores={c.data.lifetime=10}] at @s run function wither_rework:wither/attack/0/projectile/motion

#Impact
execute at @s unless block ^ ^ ^1 #wither_rework:transparent run function wither_rework:wither/attack/0/projectile/impact