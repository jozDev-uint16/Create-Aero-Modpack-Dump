#New
execute unless entity @s[tag=processed] run function wither_rework:wither/attack/5/projectile/shoot_effect/new

#Animation
execute if score @s c.data.lifetime matches 1 run data merge entity @s {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":201}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]},interpolation_duration:2,start_interpolation:0}
execute if score @s c.data.lifetime matches 3 run data merge entity @s {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":202}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},interpolation_duration:3,start_interpolation:0}
execute if score @s c.data.lifetime matches 6 run data merge entity @s {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":203}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},interpolation_duration:4,start_interpolation:0}
execute if score @s c.data.lifetime matches 10 run data merge entity @s {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":204}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},interpolation_duration:10,start_interpolation:0}

#Hard kill
execute if score @s c.data.lifetime matches 20.. run kill @s

#Add
scoreboard players add @s c.data.lifetime 1
