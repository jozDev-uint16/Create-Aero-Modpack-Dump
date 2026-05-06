execute if score @s c.int.0 matches 300.. run data merge entity @s {Health:300f}

#Hurt
execute if entity @s[nbt={HurtTime:10s}] run function wither_rework:wither/phase/2/crack_particles

#Attack Cooldown
scoreboard players operation @s wither.ability.3 += @s global.ability_rate
scoreboard players operation @s wither.ability.4 += @s global.ability_rate
scoreboard players operation @s wither.ability.5 += @s global.ability_rate

#Spark Particles
execute positioned ~ ~1.5 ~ rotated ~ 0 run particle electric_spark ~ ~ ~ 0.5 1 0.5 1 2 force

    #Electricity Sound
    playsound entity.bee.loop_aggressive hostile @a ~ ~ ~ 0.15 0.5 0

#Attacks
    ##Attack 4 // Instability
    execute if score @s[tag=!wither_rework.boss.wither.attack.0,tag=!wither_rework.boss.wither.attack.1,tag=!wither_rework.boss.wither.attack.2,tag=!wither_rework.boss.wither.attack.3,tag=!wither_rework.boss.wither.attack.4,tag=!wither_rework.boss.wither.attack.5] wither.ability.3 >= @s wither.ability.3.cd if entity @p[distance=..10] run function wither_rework:wither/attack/3/main
    execute if entity @s[tag=wither_rework.boss.wither.attack.3] run function wither_rework:wither/attack/3/main

    ##Attack 5 // Veil of Decay
    #execute if score @s[tag=!wither_rework.boss.wither.attack.0,tag=!wither_rework.boss.wither.attack.1,tag=!wither_rework.boss.wither.attack.2,tag=!wither_rework.boss.wither.attack.3,tag=!wither_rework.boss.wither.attack.4,tag=!wither_rework.boss.wither.attack.5] wither.ability.4 >= @s wither.ability.4.cd if entity @p[distance=..12] run function wither_rework:wither/attack/4/main
    #execute if entity @s[tag=wither_rework.boss.wither.attack.4] run function wither_rework:wither/attack/4/main

    #Attack 6 // Howling Souls
    execute if score @s[tag=!wither_rework.boss.wither.attack.0,tag=!wither_rework.boss.wither.attack.1,tag=!wither_rework.boss.wither.attack.2,tag=!wither_rework.boss.wither.attack.3,tag=!wither_rework.boss.wither.attack.4,tag=!wither_rework.boss.wither.attack.5] wither.ability.5 >= @s wither.ability.5.cd if entity @p[distance=..20] run function wither_rework:wither/attack/5/main
    execute if entity @s[tag=wither_rework.boss.wither.attack.5] run function wither_rework:wither/attack/5/main
