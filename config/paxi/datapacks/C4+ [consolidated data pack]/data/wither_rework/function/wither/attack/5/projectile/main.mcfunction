#New
execute unless entity @s[tag=processed] run function wither_rework:wither/attack/5/projectile/new

#Particle
execute if score @s c.data.lifetime matches ..5 run particle large_smoke ~ ~ ~ 0 0 0 0.01 2 force @a[distance=..40]

#Velocity
execute if score @s c.data.lifetime matches 4..10 run scoreboard players remove @s c.data.velocity 1
execute if score @s c.data.lifetime matches 25..40 run scoreboard players add @s c.data.velocity 1

scoreboard players operation @s c.int.0 = @s c.data.velocity
execute at @s positioned ^ ^ ^0.1 run function wither_rework:wither/attack/5/projectile/motion

#Particles
particle electric_spark ~ ~0.1 ~ 0.1 0.1 0.1 1 2 normal @a[distance=..50]

#Fly-by Sound
playsound minecraft:entity.allay.item_taken hostile @a[distance=..10] ~ ~ ~ 0.8 0.7 0

#Hard kill
execute if score @s c.data.lifetime matches 100.. run function wither_rework:wither/attack/5/projectile/impact

#Add
scoreboard players add @s c.data.lifetime 1
