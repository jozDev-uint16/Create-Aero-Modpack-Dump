#Griefing
execute if score .wither_rework.config.WitherGriefing c.int.0 matches 0 run gamerule mobGriefing false

#Death
execute if entity @s[tag=wither_rework.boss.wither.death_anim] run return run function wither_rework:wither/death/animation
execute if entity @s[nbt=!{HandItems:[{id:"minecraft:totem_of_undying",count:1},{}]},tag=!wither_rework.boss.wither.death_anim] run return run function wither_rework:wither/death/animation

#Fixes
    #Prevent from flying too high from the ground
    execute unless score .wither_rework.config.witherFlyFix c.int.0 matches 0 unless entity @s[tag=wither_rework.boss.wither.allow_flight] if block ~ ~-1.5 ~ #wither_rework:transparent run function wither_rework:wither/fix/fly_too_high
    tag @s[tag=wither_rework.boss.wither.allow_flight] remove wither_rework.boss.wither.allow_flight

#Track Health
execute store result score @s c.int.0 run data get entity @s Health 1

#Phase 2
execute if score @s wither.phase matches 2.. run function wither_rework:wither/phase/2/main
execute if score @s[tag=!wither_rework.boss.wither.attack.0,tag=!wither_rework.boss.wither.attack.1,tag=!wither_rework.boss.wither.attack.2] c.data.lifetime matches 220.. if score @s c.int.0 matches ..300 unless score @s wither.phase matches 2.. run return run function wither_rework:wither/phase/2/transition

#Phase 1 Ability Cooldowns
execute if score @s c.data.lifetime matches 220.. run scoreboard players operation @s wither.ability.0 += @s global.ability_rate
execute if score @s c.data.lifetime matches 220.. run scoreboard players operation @s wither.ability.1 += @s global.ability_rate
execute if score @s c.data.lifetime matches 220.. run scoreboard players operation @s wither.ability.2 += @s global.ability_rate

#Attacks
    ##Attack 1 // Withering Heights
    execute if score @s[tag=!wither_rework.boss.wither.attack.0,tag=!wither_rework.boss.wither.attack.1,tag=!wither_rework.boss.wither.attack.2,tag=!wither_rework.boss.wither.attack.3,tag=!wither_rework.boss.wither.attack.4,tag=!wither_rework.boss.wither.attack.5] wither.ability.0 >= @s wither.ability.0.cd if entity @p[distance=..10] run function wither_rework:wither/attack/0/main
    execute if entity @s[tag=wither_rework.boss.wither.attack.0] run function wither_rework:wither/attack/0/main

    ##Attack 2 // Chaos Rush
    execute if score @s[tag=!wither_rework.boss.wither.attack.0,tag=!wither_rework.boss.wither.attack.1,tag=!wither_rework.boss.wither.attack.2,tag=!wither_rework.boss.wither.attack.3,tag=!wither_rework.boss.wither.attack.4,tag=!wither_rework.boss.wither.attack.5] wither.ability.1 >= @s wither.ability.1.cd if entity @p[distance=..24] run function wither_rework:wither/attack/1/main
    execute if entity @s[tag=wither_rework.boss.wither.attack.1] run function wither_rework:wither/attack/1/main

    ##Attack 3 // Dooming Dive
    execute if score @s[tag=!wither_rework.boss.wither.attack.0,tag=!wither_rework.boss.wither.attack.1,tag=!wither_rework.boss.wither.attack.2,tag=!wither_rework.boss.wither.attack.3,tag=!wither_rework.boss.wither.attack.4,tag=!wither_rework.boss.wither.attack.5] wither.ability.2 >= @s wither.ability.2.cd if entity @p[distance=..10] unless block ~ ~-3 ~ #wither_rework:transparent run function wither_rework:wither/attack/2/main
    execute if entity @s[tag=wither_rework.boss.wither.attack.2] run function wither_rework:wither/attack/2/main

#Team
execute if score @s c.data.lifetime matches 220.. run return run team join wither_non_target @a[distance=..50]

scoreboard players add @s c.data.lifetime 1

execute if score @s c.data.lifetime matches 219 run function wither_rework:wither/spawn_effect