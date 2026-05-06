
#Score
execute if score @s wither.music matches 1.. run return run scoreboard players remove @s wither.music 1

#Play Music
execute unless score @s wither.music matches 1.. run function wither_rework:wither/music/play
