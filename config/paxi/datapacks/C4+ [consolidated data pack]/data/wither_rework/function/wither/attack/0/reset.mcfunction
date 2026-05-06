scoreboard players reset @s wither.ability
scoreboard players reset @s wither.ability.prep
scoreboard players reset @s wither.ability.0
scoreboard players reset @s wither.ability.int.0

data merge entity @s {NoAI:0b}

tag @s remove wither_rework.boss.wither.attack.0

#Attributes
attribute @s generic.armor base set 20
attribute @s generic.armor_toughness base set 10
