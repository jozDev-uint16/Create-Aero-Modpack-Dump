summon item_display ~ ~1 ~ {Tags:["wither_rework.proj.soul_rocker"]}
summon item_display ~ ~1 ~ {Tags:["wither_rework.proj.soul_rocker","wither_rework.sub_proj.0"]}
summon item_display ~ ~1 ~ {Tags:["wither_rework.proj.soul_rocker","wither_rework.sub_proj.1"]}

scoreboard players set @e[distance=..4,tag=wither_rework.proj.soul_rocker,tag=!wither_rework.proj.soul_rocker.processed] c.data.velocity 10

#Rotation
execute as @e[distance=..4,tag=wither_rework.proj.soul_rocker,tag=!wither_rework.proj.soul_rocker.processed] store result score @s c.int.0 run data get entity @p Rotation.[0] 1
execute as @e[distance=..4,tag=wither_rework.proj.soul_rocker,tag=!wither_rework.proj.soul_rocker.processed] store result score @s c.int.1 run data get entity @p Rotation.[1] 1

scoreboard players remove @e[distance=..4,tag=wither_rework.proj.soul_rocker,tag=wither_rework.sub_proj.0,tag=!wither_rework.proj.soul_rocker.processed] c.int.0 35
scoreboard players add @e[distance=..4,tag=wither_rework.proj.soul_rocker,tag=wither_rework.sub_proj.1,tag=!wither_rework.proj.soul_rocker.processed] c.int.0 35


execute as @e[distance=..4,tag=wither_rework.proj.soul_rocker,tag=!wither_rework.proj.soul_rocker.processed] store result entity @s Rotation.[0] float 1 run scoreboard players get @s c.int.0
execute as @e[distance=..4,tag=wither_rework.proj.soul_rocker,tag=!wither_rework.proj.soul_rocker.processed] store result entity @s Rotation.[1] float 1 run scoreboard players get @s c.int.1

#Sound
function wither_rework:item/soul_rocker/play_note

#Damage User
damage @s[gamemode=!creative] 1 minecraft:generic_kill by @s

#Score Reset
scoreboard players set @s item.soul_rocker.main_atk 12
