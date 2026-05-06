scoreboard players add @s wither.ability 1

#Wave Attack
scoreboard players add @s[scores={wither.ability=..101}] wither.ability.int.0 1

#Spawn Projectile
execute if score @s wither.ability.int.0 matches 3 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 6 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 9 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 12 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 15 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 18 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 21 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 24 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 27 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 30 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 33 run function wither_rework:wither/attack/5/projectile/summon
execute if score @s wither.ability.int.0 matches 36 run function wither_rework:wither/attack/5/projectile/summon
#Stun
execute if score @s wither.ability matches 30..100 run function wither_rework:wither/attack/5/stun
execute if score @s wither.ability matches 120 run function wither_rework:wither/attack/5/stun_clear
execute if score @s wither.ability matches 120.. run particle explosion ~ ~ ~ 5 0.5 5 0 1 force @a

#Allow Flight
tag @s[scores={wither.ability=..50}] add wither_rework.boss.wither.allow_flight
