attribute @s generic.max_health base set 600
attribute @s generic.armor base set 20
attribute @s generic.armor_toughness base set 10

data merge entity @s {Health:600f,HandItems:[{id:"minecraft:totem_of_undying",count:1},{}],HandDropChances:[-327.670F,0.085F]}

#Reset Music
execute if score .wither_rework.config.witherBossMusic c.int.0 matches 1 at @s unless entity @e[type=wither,scores={c.data.lifetime=220..},distance=1..100] as @a[distance=..80,scores={wither.music=1..}] run function wither_rework:wither/music/stop

#Default Ability Cooldowns
scoreboard players set @s global.ability_rate 100
scoreboard players set @s global.ability_rate 100
scoreboard players set @s global.ability_rate 100

#200 Ticks // 10 Seconds
scoreboard players set @s wither.ability.0.cd 20000

#240 Ticks // 12 Seconds
scoreboard players set @s wither.ability.1.cd 24000

#360 Ticks // 18 Seconds
scoreboard players set @s wither.ability.2.cd 36000

#440 Ticks // 22 Seconds
scoreboard players set @s wither.ability.3.cd 44000

#1200 Ticks // 60 Seconds ## (4th Ability has been replaced by 5th)
scoreboard players set @s wither.ability.4.cd 120000

#900 Ticks // 45 Seconds
scoreboard players set @s wither.ability.5.cd 90000

#Tag
tag @s add wither_rework.processed
