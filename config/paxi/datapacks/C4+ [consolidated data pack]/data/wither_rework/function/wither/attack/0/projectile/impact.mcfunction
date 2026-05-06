
execute if entity @p[distance=..8] run summon creeper ~ ~0.5 ~ {Invulnerable:1b,ExplosionRadius:3b,Fuse:1,ignited:1b,CustomName:'"Wither Skull"'}

#Particle
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute unless entity @p[distance=..8] run playsound entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1 1 0
execute if entity @p[distance=..25] run scoreboard players set @s c.int.0 20
execute if entity @p[distance=..25] rotated ~ 0 run function wither_rework:wither/attack/0/projectile/effect/explosion

#Kill
kill @s