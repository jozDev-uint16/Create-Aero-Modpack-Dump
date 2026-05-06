summon marker ~ ~ ~ {Tags:["wither_rework.boss.wither.crack_particle"]}

execute as @e[tag=wither_rework.boss.wither.crack_particle,limit=1,sort=nearest] store result entity @s Rotation.[0] float 1 run random value -180..180
execute as @e[tag=wither_rework.boss.wither.crack_particle,limit=1,sort=nearest] store result entity @s Rotation.[1] float 1 run random value -45..45

scoreboard players set @s c.int.0 6
execute rotated as @e[tag=wither_rework.boss.wither.crack_particle,limit=1,sort=nearest] positioned ~ ~2 ~ positioned ^ ^ ^1 run function wither_rework:wither/phase/2/effect/crack_0

kill @e[tag=wither_rework.boss.wither.crack_particle,distance=..20]

#Sound
playsound entity.wither_skeleton.death hostile @a ~ ~ ~ 1 0.6 0
playsound entity.wither_skeleton.death hostile @a ~ ~ ~ 1 0.4 0

playsound item.trident.return hostile @a ~ ~ ~ 1 1.5 0
playsound item.trident.return hostile @a ~ ~ ~ 1 1.5 0

#Reset
scoreboard players reset @s wither.ability.int.1