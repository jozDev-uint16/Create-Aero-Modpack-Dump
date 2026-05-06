scoreboard players add @s c.data.lifetime 1

#Random Rotation
execute if entity @s[tag=!wither_rework.proj.soul_rocker.processed] run function wither_rework:item/soul_rocker/projectile/special_atk/random_rotation

#Sound
execute if score @s c.data.lifetime matches ..10 run playsound minecraft:entity.breeze.slide neutral @a ~ ~ ~ 0.8 1.5 0
execute if score @s c.data.lifetime matches ..10 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 0.4 1.5 0

#Model
execute if score @s c.data.lifetime matches 1 run data merge entity @s {interpolation_duration:2,start_interpolation:0,item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":9}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute if score @s c.data.lifetime matches 3 run data merge entity @s {interpolation_duration:2,start_interpolation:0,item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":10}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if score @s c.data.lifetime matches 5 run data merge entity @s {interpolation_duration:2,start_interpolation:0,item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":11}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.65f,0.65f,0.65f]}}
execute if score @s c.data.lifetime matches 7 run data merge entity @s {interpolation_duration:3,start_interpolation:0,item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":12}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute if score @s c.data.lifetime matches 10 run data merge entity @s {interpolation_duration:3,start_interpolation:0,item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":13}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]}}
execute if score @s c.data.lifetime matches 13 run data merge entity @s {interpolation_duration:3,start_interpolation:0,item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":14}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]}}

#Deal Damage
execute if score @s c.data.lifetime matches ..10 at @s as @e[type=!#wither_rework:soul_rocker_blacklist,type=!player,distance=..8,tag=proj_tag.soul_rocker.special.kb] run function wither_rework:item/soul_rocker/projectile/special_atk/knockback_apply
execute if score @s c.data.lifetime matches ..9 at @s run tag @e[type=!#wither_rework:soul_rocker_blacklist,type=!player,distance=..4,nbt={HurtTime:0s}] add proj_tag.soul_rocker.special.kb
execute if score @s c.data.lifetime matches ..9 at @s as @e[type=!#wither_rework:soul_rocker_blacklist,distance=..4,nbt={HurtTime:0s}] run damage @s 10 sonic_boom by @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{soul_rocker:1b}}}}]

#Tag
tag @s[tag=!wither_rework.proj.soul_rocker.processed] add wither_rework.proj.soul_rocker.processed

#Kill
execute if score @s c.data.lifetime matches 17.. run function wither_rework:item/soul_rocker/projectile/special_atk/kill