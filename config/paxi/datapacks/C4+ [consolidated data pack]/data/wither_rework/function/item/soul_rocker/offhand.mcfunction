#Get Y
execute store result score @s c.int.0 run data get entity @s Rotation.[1]

#Read Note
#Play Note
#A
execute if score @s c.int.0 matches 75..90 run title @s actionbar {"text":"Note \"A\"","color":"#CC8600"}
#A#
execute if score @s c.int.0 matches 60..74 run title @s actionbar {"text":"Note \"A#/B♭\"","color":"#E26500"}
#B
execute if score @s c.int.0 matches 45..59 run title @s actionbar {"text":"Note \"B\"","color":"#F34100"}
#C
execute if score @s c.int.0 matches 30..44 run title @s actionbar {"text":"Note \"C\"","color":"#FC1E00"}
#C#
execute if score @s c.int.0 matches 15..29 run title @s actionbar {"text":"Note \"C#/D♭\"","color":"#FE000F"}
#D
execute if score @s c.int.0 matches 0..14 run title @s actionbar {"text":"Note \"D\"","color":"#F70033"}
#D#
execute if score @s c.int.0 matches -15..-0 run title @s actionbar {"text":"Note \"D#/E♭\"","color":"#E8005A"}
#E
execute if score @s c.int.0 matches -30..-16 run title @s actionbar {"text":"Note \"E\"","color":"#CF0083"}
#F
execute if score @s c.int.0 matches -45..-31 run title @s actionbar {"text":"Note \"F\"","color":"#AE00A9"}
#F#
execute if score @s c.int.0 matches -60..-46 run title @s actionbar {"text":"Note \"F#/G♭\"","color":"#8600CC"}
#G
execute if score @s c.int.0 matches -75..-61 run title @s actionbar {"text":"Note \"G\"","color":"#5B00E7"}
#G#
execute if score @s c.int.0 matches -90..-76 run title @s actionbar {"text":"Note \"G#/A♭\"","color":"#2D00F9"}
