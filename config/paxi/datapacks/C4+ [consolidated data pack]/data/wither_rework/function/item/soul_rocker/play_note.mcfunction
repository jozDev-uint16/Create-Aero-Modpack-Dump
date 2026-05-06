#Get Y
execute store result score @s c.int.0 run data get entity @s Rotation.[1]

#Particle
execute positioned ~ ~1.5 ~ positioned ^ ^ ^2 run particle note ~ ~ ~ 0 0 0 0 1 normal

#Play Note (Sneaking)
execute if predicate wither_rework:sneaking run return run function wither_rework:item/soul_rocker/play_note_sneak

#Play Note
#A
execute if score @s c.int.0 matches 75..90 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 0.594604 0
#A#
execute if score @s c.int.0 matches 60..74 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 0.629961 0
#B
execute if score @s c.int.0 matches 45..59 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 0.667420 0
#C
execute if score @s c.int.0 matches 30..44 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 0.707107 0
#C#
execute if score @s c.int.0 matches 15..29 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 0.749154 0
#D
execute if score @s c.int.0 matches 0..14 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 0.793701 0
#D#
execute if score @s c.int.0 matches -15..-1 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 0.840896 0
#E
execute if score @s c.int.0 matches -30..-16 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 0.890899 0
#F
execute if score @s c.int.0 matches -45..-31 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 0.943874 0
#F#
execute if score @s c.int.0 matches -60..-46 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 1 0
#G
execute if score @s c.int.0 matches -75..-61 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 1.059463 0
#G#
execute if score @s c.int.0 matches -90..-76 run playsound wither_rework:soul_string.note.f_major record @a ~ ~ ~ 1 1.122462 0