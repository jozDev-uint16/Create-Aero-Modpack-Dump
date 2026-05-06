scoreboard players add @s wither.ability 1

#TP upwards
execute if score @s wither.ability matches 6.. if block ~ ~-1 ~ #wither_rework:transparent run tp @s ~ ~-0.05 ~

    #Spawn Projectiles
    execute if score @s wither.ability matches 5..30 positioned ~ ~2.5 ~ at @s run scoreboard players add @s wither.ability.int.0 1

    execute if score @s wither.ability.int.0 matches 5.. positioned ~ ~2.5 ~ at @s run function wither_rework:wither/attack/0/projectile/pattern/random

    execute if score @s wither.ability.int.0 matches 5.. run scoreboard players reset @s wither.ability.int.0

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight
