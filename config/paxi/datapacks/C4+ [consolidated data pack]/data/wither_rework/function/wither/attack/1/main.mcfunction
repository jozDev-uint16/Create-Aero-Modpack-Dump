#Reset
execute if entity @s[scores={wither.ability=30..}] run return run function wither_rework:wither/attack/1/reset
team join wither_non_target @s

#Warn Sound
execute unless score @s wither.ability.prep matches 1.. run playsound entity.wither.ambient hostile @a 1 0.2 0
execute unless score @s wither.ability.prep matches 1.. run playsound entity.wither.ambient hostile @a 1 0.3 0

#Prep and Action
execute if block ~ ~-1 ~ #wither_rework:transparent unless score @s wither.ability.prep matches 1.. run tp @s ~ ~-0.5 ~
execute unless block ~ ~-1 ~ #wither_rework:transparent unless score @s wither.ability.prep matches 1.. run scoreboard players set @s wither.ability.prep 1

execute if score @s wither.ability.prep matches 1..40 run function wither_rework:wither/attack/1/prepare
execute if score @s wither.ability.prep matches 41.. run function wither_rework:wither/attack/1/action

#No AI
data merge entity @s[scores={wither.ability.prep=10..}] {NoAI:1b}

#Add Tag
tag @s add wither_rework.boss.wither.attack.1
