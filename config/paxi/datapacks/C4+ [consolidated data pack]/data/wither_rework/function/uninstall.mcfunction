#Data
scoreboard objectives remove c.data.lifetime

#Calculation
scoreboard objectives remove c.int.0
scoreboard objectives remove c.int.1
scoreboard objectives remove c.int.2

scoreboard objectives remove c.motion.x.0
scoreboard objectives remove c.motion.y.0
scoreboard objectives remove c.motion.z.0

scoreboard objectives remove c.motion.x.1
scoreboard objectives remove c.motion.y.1
scoreboard objectives remove c.motion.z.1

#Boss Ability
scoreboard objectives remove global.ability_rate

    #Wither Ability
    scoreboard objectives remove wither.animation
    scoreboard objectives remove wither.phase

    scoreboard objectives remove wither.ability
    scoreboard objectives remove wither.ability.prep
    scoreboard objectives remove wither.ability.int.0
    scoreboard objectives remove wither.ability.int.1

    scoreboard objectives remove wither.ability.0
    scoreboard objectives remove wither.ability.0.cd

    scoreboard objectives remove wither.ability.1
    scoreboard objectives remove wither.ability.1.cd

    scoreboard objectives remove wither.ability.2
    scoreboard objectives remove wither.ability.2.cd

    scoreboard objectives remove wither.ability.3
    scoreboard objectives remove wither.ability.3.cd

    scoreboard objectives remove wither.ability.4
    scoreboard objectives remove wither.ability.4.cd

#Team
team remove wither_non_target

datapack disable "file/Wither Rework"

tellraw @s "Withering Heights Uninstalled. Please remove the Datapack from the world before reloading."