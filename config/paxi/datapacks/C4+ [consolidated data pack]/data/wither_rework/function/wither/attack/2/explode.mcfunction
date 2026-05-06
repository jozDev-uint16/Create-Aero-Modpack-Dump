execute if entity @p[distance=..8] run summon creeper ~ ~1.5 ~ {Invulnerable:1b,ExplosionRadius:4b,Fuse:1,ignited:1b,CustomName:'"Wither"'}

#Effect
summon item_display ~ ~1 ~ {Tags:["wither_rework.boss.wither.attack.2.impact_effect"],transformation:{left_rotation:[1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.5f],scale:[0f,0f,0f]}}

#Particle
#particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force
particle large_smoke ~ ~2 ~ 0 0 0 0.2 40 normal

playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.8 0.8 0.1
playsound entity.zombie.attack_wooden_door hostile @a[distance=..32] ~ ~ ~ 0.7 0.5 0

playsound entity.wither_skeleton.hurt hostile @a[distance=..24] ~ ~ ~ 1 0.5 0.1
playsound entity.wither_skeleton.death hostile @a[distance=..24] ~ ~ ~ 1 0.7 0.1
playsound entity.wither_skeleton.death hostile @a[distance=..24] ~ ~ ~ 1 0.9 0.1

#execute if entity @p[distance=..25] run scoreboard players set @s c.int.0 36
#execute if entity @p[distance=..25] at @s rotated ~ 0 positioned ~ ~1.5 ~ run function wither_rework:wither/attack/2/effect/explosion

#Invulnerability
data merge entity @s {Invulnerable:1b}