#Detect New Wither
execute as @e[type=wither,tag=!wither_rework.processed] run function wither_rework:wither/spawn
execute as @e[type=wither] at @s run function wither_rework:wither/main
execute if entity @e[type=wither] run function wither_rework:wither/if_present

#Config
execute if score .wither_rework.config.WitherGriefing c.int.0 matches 0 run function wither_rework:config/wither_griefing/if_enabled

#Nether Star
execute as @e[tag=wither_rework.fix.nether_star,type=area_effect_cloud] at @s as @n[type=item,nbt={Item:{id:"minecraft:nether_star"},PickupDelay:10s},nbt=!{Item:{components:{"minecraft:custom_data":{wr_nether_star:1b}}}},distance=..4] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{wr_nether_star:1b}}},PickupDelay:0s}] at @s run function wither_rework:nether_star/ambient

#Soul Rocker
execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{soul_rocker:1b}}}]}] run function wither_rework:item/soul_rocker/main

execute if entity @e[tag=wither_rework.proj.soul_rocker] as @e[tag=wither_rework.proj.soul_rocker] at @s run function wither_rework:item/soul_rocker/projectile/main_atk/main
execute if entity @e[tag=wither_rework.proj.soul_rocker.special] as @e[tag=wither_rework.proj.soul_rocker.special] at @s run function wither_rework:item/soul_rocker/projectile/special_atk/main

#Kill Wither Skulls
execute as @e[type=wither_skull] at @s unless entity @e[type=wither,distance=..80] run kill @s