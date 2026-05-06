execute store result score @s c.int.0 run random value 1..2

execute if score @s c.int.0 matches 1 run function wither_rework:wither/attack/4/pattern/0
execute if score @s c.int.0 matches 2 run function wither_rework:wither/attack/4/pattern/1

#Sound
playsound entity.wither.shoot hostile @a ~ ~ ~ 0.8 0.5 0
playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 1 0.4 0
playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 1 0.6 0

#Reset
scoreboard players reset @s wither.ability.int.0