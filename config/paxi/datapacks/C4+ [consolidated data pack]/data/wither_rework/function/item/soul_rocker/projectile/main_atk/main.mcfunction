scoreboard players add @s c.data.lifetime 1

#Particle
#scoreboard players add @s[scores={c.data.lifetime=2..}] c.data.animation 1
#execute if score @s c.data.animation matches 2.. run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force
#execute if score @s c.data.animation matches 2.. run scoreboard players reset @s c.data.animation
execute if score @s c.data.lifetime matches ..10 run particle minecraft:electric_spark ~ ~ ~ 0.3 0.3 0.3 1 2 force
execute if score @s c.data.lifetime matches 11..14 run particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.6 1 force

#Sound
execute if score @s c.data.lifetime matches ..10 run playsound minecraft:entity.breeze.slide neutral @a ~ ~ ~ 0.35 2 0
execute if score @s c.data.lifetime matches ..10 run playsound minecraft:entity.evoker.cast_spell neutral @a ~ ~ ~ 0.15 1.8 0

#Model
execute if score @s c.data.lifetime matches 1 run data merge entity @s {item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":2}}}
execute if score @s c.data.lifetime matches 3 run data merge entity @s {item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":3}}}
execute if score @s c.data.lifetime matches 5 run data merge entity @s {item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":4}}}
execute if score @s c.data.lifetime matches 7 run data merge entity @s {item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":5}}}
execute if score @s c.data.lifetime matches 9 run data merge entity @s {item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":4}}}
execute if score @s c.data.lifetime matches 11 run data merge entity @s {item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":5}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[1.2f,1.2f,1.2f]}}
execute if score @s c.data.lifetime matches 13 run data merge entity @s {item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":6}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1.4f,1.4f,1.4f]}}
execute if score @s c.data.lifetime matches 15 run data merge entity @s {item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":7}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[1.6f,1.6f,1.6f]}}
execute if score @s c.data.lifetime matches 16 run data merge entity @s {item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_model_data":8}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.4f,0f],scale:[1.8f,1.8f,1.8f]}}

#Velocity
execute if score @s c.data.lifetime matches 5.. run scoreboard players remove @s c.data.velocity 2

scoreboard players operation @s c.int.0 = @s c.data.velocity

    #Faster Water Travel
    execute if block ~ ~ ~ water run scoreboard players set @s c.int.1 2 
    execute if block ~ ~ ~ water run scoreboard players operation @s c.int.0 *= @s c.int.1

execute if score @s c.int.0 matches 1.. run function wither_rework:item/soul_rocker/projectile/main_atk/velocity

#Deal Damage
execute if score @s c.data.lifetime matches ..11 at @s positioned ^ ^ ^1.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#wither_rework:soul_rocker_blacklist,dx=1,dy=1,dz=1,nbt={HurtTime:0s}] run damage @s 5 sonic_boom by @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{soul_rocker:1b}}}}]

#Tag
tag @s[tag=!wither_rework.proj.soul_rocker.processed] add wither_rework.proj.soul_rocker.processed

#Kill
execute if score @s c.data.lifetime matches 18.. run function wither_rework:item/soul_rocker/projectile/main_atk/kill