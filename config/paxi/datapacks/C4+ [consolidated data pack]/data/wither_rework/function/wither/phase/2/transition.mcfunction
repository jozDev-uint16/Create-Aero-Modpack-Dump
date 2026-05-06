scoreboard players add @s wither.animation 1

#No AI + Invulnerable
data merge entity @s {NoAI:1b,Invulnerable:1b}
tag @s add wither_rework.boss.wither.allow_flight

#Transition Finish
execute if score @s wither.animation matches 140 run return run function wither_rework:wither/phase/2/transition_finish_effects
execute if score @s wither.animation matches 150.. run return run function wither_rework:wither/phase/2/transition_finish
execute if score @s wither.animation matches 120.. run return run playsound entity.wither.ambient master @a ~ ~ ~ 0 0 0

#Particles
scoreboard players operation @s wither.ability.int.1 += @s wither.animation

execute if score @s wither.ability.int.1 matches 250.. run function wither_rework:wither/phase/2/crack_particles

#Movement
execute if score @s wither.animation matches 1..4 if block ~ ~3 ~ #wither_rework:transparent run tp @s ~ ~0.1 ~
execute if score @s wither.animation matches 5..8 if block ~ ~3 ~ #wither_rework:transparent run tp @s ~ ~0.25 ~
execute if score @s wither.animation matches 9..12 if block ~ ~3 ~ #wither_rework:transparent run tp @s ~ ~0.5 ~
execute if score @s wither.animation matches 12..14 if block ~ ~3 ~ #wither_rework:transparent run tp @s ~ ~0.25 ~
execute if score @s wither.animation matches 14..16 if block ~ ~3 ~ #wither_rework:transparent run tp @s ~ ~0.1 ~


