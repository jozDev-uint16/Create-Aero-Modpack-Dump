execute store result score @s c.int.0 run random value 1..2

execute if score @s c.int.0 matches 1 run function wither_rework:wither/attack/0/projectile/pattern/0
execute if score @s c.int.0 matches 2 run function wither_rework:wither/attack/0/projectile/pattern/1

#Sound
playsound entity.wither.shoot hostile @a ~ ~ ~ 1 0.8 0