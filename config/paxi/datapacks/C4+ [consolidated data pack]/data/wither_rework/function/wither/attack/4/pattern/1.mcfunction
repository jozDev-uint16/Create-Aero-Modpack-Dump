summon marker ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.4.projectile.spawner"]}

    execute as @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] store result entity @s Rotation.[0] float 1 run data get entity @n[type=wither,distance=..10] Rotation.[0] 1
    execute as @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] store result score @s c.int.1 run data get entity @n[type=wither,distance=..10] Rotation.[0] 1

    execute as @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] store result score @s c.int.1 run data get entity @n[type=wither,distance=..10] Rotation.[0] 1
        scoreboard players set @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] c.int.0 10
        scoreboard players remove @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] c.int.1 67
        execute as @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] at @s rotated ~-67.5 0 run function wither_rework:wither/attack/4/pattern/spawn_projectile

    execute as @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] store result score @s c.int.1 run data get entity @n[type=wither,distance=..10] Rotation.[0] 1
        scoreboard players set @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] c.int.0 15
        scoreboard players remove @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] c.int.1 22
        execute as @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] at @s rotated ~-22.5 0 run function wither_rework:wither/attack/4/pattern/spawn_projectile

    execute as @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] store result score @s c.int.1 run data get entity @n[type=wither,distance=..10] Rotation.[0] 1
        scoreboard players set @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] c.int.0 10
        scoreboard players add @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] c.int.1 45
        execute as @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner,distance=..10] at @s rotated ~45 0 run function wither_rework:wither/attack/4/pattern/spawn_projectile

#Kill
kill @n[tag=wither_rework.boss.wither.attack.4.projectile.spawner]