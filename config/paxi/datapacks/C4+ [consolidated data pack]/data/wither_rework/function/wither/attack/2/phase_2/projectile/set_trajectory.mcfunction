tp @s ~ ~ ~ facing entity @p eyes

#Playsound
playsound entity.wither.shoot hostile @a ~ ~ ~ 1 0.8 0

#Particle
particle smoke ~ ~ ~ 0 0 0 0.1 30 normal

#Trajectory
scoreboard players set @s c.int.0 4
execute facing entity @p eyes run function wither_rework:wither/attack/2/phase_2/projectile/effect/trajectory

scoreboard players set @s c.int.0 10
execute facing entity @p eyes run function wither_rework:wither/attack/2/phase_2/projectile/effect/trajectory
