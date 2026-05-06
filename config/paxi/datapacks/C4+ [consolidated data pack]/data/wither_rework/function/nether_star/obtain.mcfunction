#Revoke
advancement revoke @s only wither_rework:trigger/obtain_nether_star

#Sound
playsound block.enchantment_table.use player @a ~ ~ ~ 0.8 0.5 0
playsound block.enchantment_table.use player @a ~ ~ ~ 0.8 1.5 0
playsound item.trident.return player @a ~ ~ ~ 1 1.5 0
playsound item.trident.thunder player @a ~ ~ ~ 0.5 0.5 0
playsound block.sculk_shrieker.shriek player @a ~ ~ ~ 0.4 0.8 0
playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 1 2 0

#Replace Nether Star
clear @s nether_star[custom_data={wr_nether_star:1b}]
give @s nether_star 1

#Particles
particle end_rod ~ ~1.2 ~ 0 0 0 0.1 20 normal

scoreboard players set @s c.int.0 20
execute at @s rotated ~ 0 run function wither_rework:nether_star/particle
