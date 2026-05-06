#New
execute unless entity @s[tag=processed] run function wither_rework:wither/attack/5/projectile/impact_effect/new

#Animation
execute if score @s c.data.lifetime matches 1 run data merge entity @s {brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":102}}}
execute if score @s c.data.lifetime matches 3 run data merge entity @s {brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":103}}}
execute if score @s c.data.lifetime matches 6 run data merge entity @s {brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":104}}}
execute if score @s c.data.lifetime matches 8 run data merge entity @s {brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":105}}}
execute if score @s c.data.lifetime matches 10 run data merge entity @s {brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":106}}}

#Hard kill
execute if score @s c.data.lifetime matches 12.. run kill @s

#Add
scoreboard players add @s c.data.lifetime 1