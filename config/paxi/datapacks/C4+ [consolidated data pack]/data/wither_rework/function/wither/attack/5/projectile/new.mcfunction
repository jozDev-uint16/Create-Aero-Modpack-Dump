scoreboard players set @s c.data.velocity 10

#Move Up
execute positioned ~ ~3 ~ run tp @s ^ ^ ^1

data merge entity @s {brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":101}}}
data merge entity @s {teleport_duration:1}

#Shoot Effect
execute positioned ~ ~3 ~ positioned ^ ^ ^3 run summon item_display ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.5.projectile.shoot_effect"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.5f],scale:[0f,0f,0f]}}

    execute positioned ~ ~3 ~ positioned ^ ^ ^3 store result entity @n[tag=wither_rework.boss.wither.attack.5.projectile.shoot_effect,tag=!processed,distance=..5] Rotation.[0] float 1 run data get entity @s Rotation.[0] 1
    execute positioned ~ ~3 ~ positioned ^ ^ ^3 store result entity @n[tag=wither_rework.boss.wither.attack.5.projectile.shoot_effect,tag=!processed,distance=..5] Rotation.[1] float 1 run data get entity @s Rotation.[1] 1

#Tags
tag @s add processed