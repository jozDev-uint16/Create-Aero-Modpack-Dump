attribute @s minecraft:generic.movement_speed modifier add zombie_hit:slow -0.60 add_multiplied_base
attribute @s minecraft:generic.jump_strength modifier add zombie_hit:antijump -0.50 add_multiplied_base

scoreboard players set @s zombie_hit.timer 10
advancement revoke @s only zombies_slow:zombie_hit