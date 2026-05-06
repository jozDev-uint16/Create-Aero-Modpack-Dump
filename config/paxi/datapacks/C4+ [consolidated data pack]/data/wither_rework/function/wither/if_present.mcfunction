#Projectiles
execute as @e[tag=wither_rework.boss.wither.attack.0.projectile] run function wither_rework:wither/attack/0/projectile/main
execute as @e[tag=wither_rework.boss.wither.attack.2.impact_effect] run function wither_rework:wither/attack/2/impact_effect/main
execute as @e[tag=wither_rework.boss.wither.attack.3.explosion_effect] run function wither_rework:wither/attack/3/explosion_effect/main
execute as @e[tag=wither_rework.boss.wither.attack.4.projectile] at @s run function wither_rework:wither/attack/4/projectile/main
execute as @e[tag=wither_rework.boss.wither.attack.5.projectile] at @s run function wither_rework:wither/attack/5/projectile/main
execute as @e[tag=wither_rework.boss.wither.attack.5.projectile.impact_effect] run function wither_rework:wither/attack/5/projectile/impact_effect/main
execute as @e[tag=wither_rework.boss.wither.attack.5.projectile.shoot_effect] run function wither_rework:wither/attack/5/projectile/shoot_effect/main

#Music
execute if score .wither_rework.config.witherBossMusic c.int.0 matches 1 at @e[type=wither,scores={c.data.lifetime=220..},tag=!wither_rework.boss.wither.death_anim] as @a[distance=..64] run function wither_rework:wither/music/main