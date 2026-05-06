summon marker ^ ^ ^2 {Tags:["wither_rework.boss.wither.attack.4.projectile"]}

    scoreboard players operation @e[tag=wither_rework.boss.wither.attack.4.projectile,distance=..10,tag=!wither_rework.processed] c.int.1 = @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] c.int.1
    #execute as @e[tag=wither_rework.boss.wither.attack.4.projectile,distance=..10,tag=!wither_rework.processed] store result entity @s Rotation.[0] float 3 run scoreboard players get @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] c.int.1
    tag @e[tag=wither_rework.boss.wither.attack.4.projectile,distance=..10,tag=!wither_rework.processed] add wither_rework.processed

    scoreboard players add @s c.int.1 3

scoreboard players remove @s c.int.0 1
execute if score @s c.int.0 matches 1.. rotated ~3 0 run function wither_rework:wither/attack/4/pattern/spawn_projectile
