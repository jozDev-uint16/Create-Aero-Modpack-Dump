execute as @e[type=!#minecraft:wither_friends,dx=0,dy=2,dz=0] at @s run damage @s 5 wither by @n[type=wither,distance=..40]
effect give @e[type=!#minecraft:wither_friends,dx=0,dy=2,dz=0] wither 2 3 false

#Particle
particle smoke ~ ~2 ~ 0 0 0 0.1 10 normal

playsound entity.wither.shoot hostile @a ~ ~ ~ 0.5 0.2 0

#execute if entity @p[distance=..25] run scoreboard players set @s c.int.0 36
#execute if entity @p[distance=..25] at @s rotated ~ 0 positioned ~ ~1.5 ~ run function wither_rework:wither/attack/2/effect/explosion

kill @s