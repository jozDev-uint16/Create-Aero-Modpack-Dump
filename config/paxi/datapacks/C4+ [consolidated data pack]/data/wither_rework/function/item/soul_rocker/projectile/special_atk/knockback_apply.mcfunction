scoreboard players set @s c.int.1 4

#X Motion
execute store result score @s c.int.0 run data get entity @s Motion.[0] 1000
scoreboard players operation @s c.int.0 *= @s c.int.1
execute store result entity @s Motion.[0] double 0.001 run scoreboard players get @s c.int.0

#Y Motion
execute store result score @s c.int.0 run data get entity @s Motion.[2] 1000
scoreboard players operation @s c.int.0 *= @s c.int.1
execute store result entity @s Motion.[2] double 0.001 run scoreboard players get @s c.int.0

tag @s remove proj_tag.soul_rocker.special.kb