#Sounds
playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.5 0
playsound entity.wither_skeleton.death hostile @a ~ ~ ~ 1 0.1 0
playsound entity.wither_skeleton.death hostile @a ~ ~ ~ 1 0.25 0

playsound entity.wither.death hostile @a ~ ~ ~ 1 0.8 0

#Explosion effects
particle large_smoke ~ ~1.5 ~ 0 0 0 0.25 50 force

scoreboard players set @s c.int.0 30
execute positioned ~ ~1.5 ~ run function wither_rework:wither/phase/2/effect/explode
