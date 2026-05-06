summon wither_skull ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.0.projectile"],Rotation:[-157.5f,0f]}
summon wither_skull ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.0.projectile"],Rotation:[-112.5f,0f]}
summon wither_skull ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.0.projectile"],Rotation:[-67.5f,0f]}
summon wither_skull ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.0.projectile"],Rotation:[-22.5f,0f]}
summon wither_skull ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.0.projectile"],Rotation:[22.5f,0f]}
summon wither_skull ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.0.projectile"],Rotation:[67.5f,0f]}
summon wither_skull ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.0.projectile"],Rotation:[112.5f,0f]}
summon wither_skull ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.0.projectile"],Rotation:[157.5f,0f]}
summon wither_skull ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.0.projectile"],Rotation:[0f,0f]}

scoreboard players operation @s c.int.0 = @s wither.ability
scoreboard players add @s c.int.0 12

execute as @e[tag=wither_rework.boss.wither.attack.0.projectile] store result entity @s Rotation.[1] float 1 run scoreboard players get @e[type=wither,limit=1,sort=nearest] c.int.0