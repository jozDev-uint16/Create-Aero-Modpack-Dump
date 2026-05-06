summon item_display ~ ~1 ~ {Tags:["wither_rework.proj.soul_rocker.special"]}

#Sound
function wither_rework:item/soul_rocker/play_note_sneak

#Damage User
damage @s[gamemode=!creative] 2 minecraft:generic_kill by @s

#Score Reset
scoreboard players set @s item.soul_rocker.main_atk 30
