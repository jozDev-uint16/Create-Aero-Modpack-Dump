summon creeper ~ ~1.5 ~ {Invulnerable:1b,ExplosionRadius:3b,Fuse:1,ignited:1b,CustomName:'"Wither"'}

#Particle
summon item_display ~ ~1.5 ~ {brightness:{block:15,sky:15},Tags:["wither_rework.boss.wither.attack.3.explosion_effect"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

#particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force
#particle large_smoke ~ ~2 ~ 0 0 0 0.2 40 normal

playsound entity.generic.explode hostile @a[distance=..24] ~ ~ ~ 0.8 0.8 0.1
playsound entity.zombie.attack_wooden_door hostile @a[distance=..24] ~ ~ ~ 0.7 0.5 0

playsound entity.wither_skeleton.death hostile @a[distance=..24] ~ ~ ~ 1 0.5 0.1
playsound entity.wither_skeleton.death hostile @a[distance=..24] ~ ~ ~ 1 0.6 0.1

#execute if entity @p[distance=..25] run scoreboard players set @s c.int.0 36
#execute if entity @p[distance=..25] at @s rotated ~ 0 positioned ~ ~1.5 ~ run function wither_rework:wither/attack/2/effect/explosion

#Reset
scoreboard players reset @s wither.ability.int.0

#Invulnerability
data merge entity @s {Invulnerable:1b}