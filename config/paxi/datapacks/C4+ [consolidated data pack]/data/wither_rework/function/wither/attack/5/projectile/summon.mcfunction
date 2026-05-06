summon item_display ~ ~ ~ {Tags:["wither_rework.boss.wither.attack.5.projectile"]}

execute as @n[tag=wither_rework.boss.wither.attack.5.projectile,tag=!wither_rework.processed,distance=..5] at @s store result entity @s Rotation.[0] float 1 run random value -180..180
execute as @n[tag=wither_rework.boss.wither.attack.5.projectile,tag=!wither_rework.processed,distance=..5] at @s store result entity @s Rotation.[1] float 1 run random value -70..-40

tag @n[tag=wither_rework.boss.wither.attack.5.projectile,tag=!wither_rework.processed,distance=..5] add wither_rework.processed

#Sound Effect
playsound entity.wither.shoot hostile @a ~ ~ ~ 1 0.8 0
playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 1 1.2 0
playsound entity.breeze.shoot hostile @a ~ ~ ~ 1 1.4 0