#Reset
execute if entity @s[scores={wither.ability=400..}] run return run function wither_rework:wither/attack/4/reset

#Prep and Action
execute unless score @s wither.ability.prep matches 41.. run function wither_rework:wither/attack/4/prepare
execute if score @s wither.ability.prep matches 41.. run function wither_rework:wither/attack/4/action

#No AI
data merge entity @s {NoAI:1b,Invulnerable:0b}

#Add Tag
tag @s add wither_rework.boss.wither.attack.4
