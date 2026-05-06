#Reset
execute if entity @s[scores={wither.ability=60..}] run return run function wither_rework:wither/attack/0/reset

#Warn Sound
execute unless score @s wither.ability.prep matches 1.. run playsound entity.wither.ambient hostile @a 1 0.5 0

#Prep and Action
execute unless score @s wither.ability.prep matches 16.. run function wither_rework:wither/attack/0/prepare
execute if score @s wither.ability.prep matches 16.. run function wither_rework:wither/attack/0/action

    #Particles
    scoreboard players set @s c.int.0 20
    execute positioned ~ ~1.5 ~ rotated ~ 0 run function wither_rework:wither/attack/0/effect/ring_0

    execute store result score @s c.int.0 run data get entity @s Rotation.[0]
    scoreboard players add @s c.int.0 5
    execute store result entity @s Rotation.[0] float 1 run scoreboard players get @s c.int.0

    scoreboard players set @s c.int.0 20
    execute positioned ~ ~1.5 ~ rotated ~ 90 run function wither_rework:wither/attack/0/effect/ring_1

    scoreboard players set @s c.int.0 20
    execute positioned ~ ~1.5 ~ rotated ~90 90 run function wither_rework:wither/attack/0/effect/ring_2

#Add Tag
tag @s add wither_rework.boss.wither.attack.0
