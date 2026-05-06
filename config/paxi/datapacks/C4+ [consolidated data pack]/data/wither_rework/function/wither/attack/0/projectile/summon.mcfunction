summon wither_skull ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.0.projectile"]}

execute as @e[tag=wither_rework.boss.wither.attack.0.projectile,tag=!wither_rework.processed,limit=1,sort=nearest] at @s store result entity @s Rotation.[0] float 1 run scoreboard players get @e[type=wither,limit=1,sort=nearest] c.int.0

tag @s add wither_rework.processed
