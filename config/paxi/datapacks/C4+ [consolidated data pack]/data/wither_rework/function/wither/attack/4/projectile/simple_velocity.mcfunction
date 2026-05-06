execute align y positioned ~ ~0.5 ~ run tp @s ^ ^ ^0.22

#Detect Below
scoreboard players set @s c.int.0 4
execute align y positioned ~ ~0.5 ~ positioned ^ ^-1 ^0.5 if block ~ ~ ~ #wither_rework:transparent positioned ^ ^1 ^-0.5 run function wither_rework:wither/attack/4/projectile/detect_below

scoreboard players set @s c.int.0 5
execute align y positioned ~ ~0.5 ~ unless block ~ ~ ~ #wither_rework:transparent positioned ^ ^1 ^0.5 if block ~ ~ ~ #wither_rework:transparent positioned ^ ^-1 ^-0.5 run function wither_rework:wither/attack/4/projectile/detect_above
