particle end_rod ~ ~3 ~ 0 0 0 0.1 15 force

#Add Back Armour
attribute @s generic.armor base set 20
attribute @s generic.armor_toughness base set 10

#Warn Players
playsound entity.wither.death hostile @a ~ ~ ~ 1 0.8 0
playsound entity.wither.death hostile @a ~ ~ ~ 1 0.8 0

effect clear @a[distance=..7] wither
#Knockback Players
execute at @a[distance=..7] facing entity @s feet rotated ~ 0 positioned ^ ^1.5 ^0.5 run summon creeper ~ ~ ~ {ExplosionRadius:-2b,Fuse:1,ignited:1b}