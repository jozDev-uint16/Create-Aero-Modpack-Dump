#Reset
execute if entity @s[scores={wither.ability=140..}] run return run function wither_rework:wither/attack/2/reset

#Prep and Action
execute unless score @s wither.ability.prep matches 41.. run function wither_rework:wither/attack/2/prepare
execute if score @s wither.ability.prep matches 41.. run function wither_rework:wither/attack/2/action

#No AI
data merge entity @s {NoAI:1b}

#Add Tag
tag @s add wither_rework.boss.wither.attack.2
