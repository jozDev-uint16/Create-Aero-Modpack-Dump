execute if score @s zombie_hit.jumping matches 1 run scoreboard players set @s zombie_hit.jumping 0

scoreboard players remove @s zombie_hit.timer 1
execute if score @s zombie_hit.timer matches 0 run attribute @s minecraft:generic.movement_speed modifier remove zombie_hit:slow
execute if score @s zombie_hit.timer matches 0 run attribute @s minecraft:generic.jump_strength modifier remove zombie_hit:antijump