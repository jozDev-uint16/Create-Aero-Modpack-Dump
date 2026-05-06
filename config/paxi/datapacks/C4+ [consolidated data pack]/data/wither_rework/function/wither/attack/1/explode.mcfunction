execute if entity @p[distance=..8] run summon creeper ~ ~1.5 ~ {Invulnerable:1b,ExplosionRadius:4b,Fuse:1,ignited:1b,CustomName:'"Wither"'}

#Effect
summon item_display ~ ~2 ~ {Tags:["wither_rework.boss.wither.attack.2.impact_effect"],transformation:{left_rotation:[1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.5f],scale:[0f,0f,0f]}}

#Particle
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force
execute unless entity @p[distance=..8] run playsound entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1 0.8 0
playsound entity.zombie.attack_wooden_door hostile @a[distance=..16] ~ ~ ~ 1 0.5 0

#Invulnerability
data merge entity @s {Invulnerable:1b}