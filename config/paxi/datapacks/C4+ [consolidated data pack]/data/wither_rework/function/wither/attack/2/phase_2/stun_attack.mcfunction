scoreboard players add @s wither.ability.int.0 1

execute if score @s wither.ability.int.0 matches 30 run function wither_rework:wither/attack/2/phase_2/spawn_projectile_marker
execute if score @s wither.ability.int.0 matches 50 run function wither_rework:wither/attack/2/phase_2/spawn_projectile_marker_0