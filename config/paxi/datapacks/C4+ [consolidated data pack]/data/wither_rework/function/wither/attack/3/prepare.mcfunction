scoreboard players add @s wither.ability.prep 1

execute positioned ~ ~1.5 ~ rotated ~ 0 run particle electric_spark ~ ~ ~ 1 1 1 0.8 10 force
execute positioned ~ ~1.5 ~ rotated ~ 0 run particle firework ~ ~ ~ 0 0 0 0.25 3 force

#Sound
#execute if score @s wither.ability.prep matches 1 run playsound entity.wither.ambient hostile @a ~ ~ ~ 1 0.5 0
#execute if score @s wither.ability.prep matches 1 run playsound entity.wither.ambient hostile @a ~ ~ ~ 1 0.4 0
#execute if score @s wither.ability.prep matches 1 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.3 0
execute if score @s wither.ability.prep matches 1 run playsound block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 0.5 0

    #Electricity Sound
    playsound entity.bee.loop hostile @a ~ ~ ~ 0.5 0.5 0

#TP upwards
execute at @s[scores={wither.ability.prep=1..20}] if block ^ ^ ^1 #wither_rework:transparent run tp @s ~ ~0.05 ~ ~ ~
execute at @s[scores={wither.ability.prep=21..30}] if block ^ ^ ^1 #wither_rework:transparent run tp @s ~ ~0.025 ~ ~ ~
execute at @s[scores={wither.ability.prep=31..40}] if block ^ ^ ^1 #wither_rework:transparent run tp @s ~ ~0.01 ~ ~ ~

#Allow Flight
tag @s add wither_rework.boss.wither.allow_flight

