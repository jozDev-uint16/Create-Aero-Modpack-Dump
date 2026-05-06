scoreboard players add @s wither.animation 1

#No AI + Invulnerable
data merge entity @s {NoAI:1b,Invulnerable:1b}
tag @s add wither_rework.boss.wither.allow_flight

#Stop Music
execute if score @s wither.animation matches 10.. unless entity @e[type=wither,distance=1..100] as @a[distance=..80,scores={wither.music=1..}] run function wither_rework:wither/music/stop

#Particles
scoreboard players operation @s wither.ability.int.0 += @s wither.animation

execute if score @s wither.ability.int.0 matches 250.. if score @s wither.animation matches ..100 run function wither_rework:wither/death/crack_particles

    execute as @e[tag=wither_rework.boss.wither.death_crack_particle,distance=..10] at @s positioned ~ ~2 ~ positioned ^ ^ ^1 run particle large_smoke ~ ~ ~ ^ ^ ^100000 0.000002 0 normal

execute if score @s wither.animation matches 120.. run function wither_rework:wither/death/kill

#Movement
execute if block ~ ~-1 ~ #wither_rework:transparent run tp @s ~ ~-0.1 ~


#Death Tag
tag @s add wither_rework.boss.wither.death_anim