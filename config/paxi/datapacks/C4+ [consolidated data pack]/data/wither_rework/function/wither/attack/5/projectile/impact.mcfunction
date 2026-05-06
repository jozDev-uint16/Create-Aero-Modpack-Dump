#Effect
summon item_display ^ ^ ^-0.5 {Tags:["wither_rework.boss.wither.attack.5.projectile.impact_effect"],brightness:{sky:15,block:15},billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.5f],scale:[3f,3f,3f]}}

#Damage
execute as @e[type=!#wither_rework:wither_target_blacklist,distance=..2.2] run damage @s 10 explosion by @n[type=wither]

#Sound
playsound entity.generic.explode hostile @a ~ ~ ~ 0.9 1.5 0
playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 1 0.8 0
playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 1 0.5 0
playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1.4 0

#Kill
kill @s