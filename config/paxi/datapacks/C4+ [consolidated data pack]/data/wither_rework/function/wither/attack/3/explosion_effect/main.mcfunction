#New
execute unless entity @s[tag=processed] run function wither_rework:wither/attack/3/explosion_effect/new

#Animation
execute if score @s c.data.lifetime matches 1 run data merge entity @s {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":9}},transformation:{scale:[2f,2f,2f]},interpolation_duration:2,start_interpolation:0}
execute if score @s c.data.lifetime matches 3 run data merge entity @s {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":10}},transformation:{scale:[3f,3f,3f]},interpolation_duration:3,start_interpolation:0}
execute if score @s c.data.lifetime matches 5 run data merge entity @s {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":11}},transformation:{scale:[4f,4f,4f]},interpolation_duration:4,start_interpolation:0}
execute if score @s c.data.lifetime matches 7 run data merge entity @s {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":12}},transformation:{scale:[4.5f,4.5f,4.5f]},interpolation_duration:10,start_interpolation:0}
execute if score @s c.data.lifetime matches 10 run data merge entity @s {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":13}},transformation:{scale:[4.5f,4.5f,4.5f]},interpolation_duration:10,start_interpolation:0}
execute if score @s c.data.lifetime matches 13 run data merge entity @s {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":14}},transformation:{scale:[5f,5f,5f]},interpolation_duration:10,start_interpolation:0}

#Hard kill
execute if score @s c.data.lifetime matches 18.. run kill @s

#Add
scoreboard players add @s c.data.lifetime 1