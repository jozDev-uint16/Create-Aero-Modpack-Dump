#Data
scoreboard objectives add c.data.lifetime dummy
scoreboard objectives add c.data.velocity dummy
scoreboard objectives add c.data.animation dummy

#Calculation
scoreboard objectives add c.int.0 dummy
scoreboard objectives add c.int.1 dummy
scoreboard objectives add c.int.2 dummy

scoreboard objectives add c.motion.x.0 dummy
scoreboard objectives add c.motion.y.0 dummy
scoreboard objectives add c.motion.z.0 dummy

scoreboard objectives add c.motion.x.1 dummy
scoreboard objectives add c.motion.y.1 dummy
scoreboard objectives add c.motion.z.1 dummy

#Soul Rocker
scoreboard objectives add item.soul_rocker.hold_check dummy
scoreboard objectives add item.soul_rocker.main_atk dummy

#Boss Ability
scoreboard objectives add global.ability_rate dummy

    #Wither Ability
    scoreboard objectives add wither.animation dummy
    scoreboard objectives add wither.phase dummy

    scoreboard objectives add wither.ability dummy
    scoreboard objectives add wither.ability.prep dummy
    scoreboard objectives add wither.ability.int.0 dummy
    scoreboard objectives add wither.ability.int.1 dummy

    scoreboard objectives add wither.ability.0 dummy
    scoreboard objectives add wither.ability.0.cd dummy

    scoreboard objectives add wither.ability.1 dummy
    scoreboard objectives add wither.ability.1.cd dummy

    scoreboard objectives add wither.ability.2 dummy
    scoreboard objectives add wither.ability.2.cd dummy

    scoreboard objectives add wither.ability.3 dummy
    scoreboard objectives add wither.ability.3.cd dummy

    scoreboard objectives add wither.ability.4 dummy
    scoreboard objectives add wither.ability.4.cd dummy

    scoreboard objectives add wither.ability.5 dummy
    scoreboard objectives add wither.ability.5.cd dummy

    #Music
    scoreboard objectives add wither.music dummy

#Team
team add wither_non_target
team modify wither_non_target seeFriendlyInvisibles false

#Fix
function wither_rework:wither/fix/remove_wither_proj

#Config
execute store result score .wither_rework.config.WitherGriefing c.int.1 run gamerule mobGriefing
execute unless score .wither_rework.config.WitherGriefing c.int.0 matches 0.. run function wither_rework:config/wither_griefing/detect
execute unless score .wither_rework.config.witherFlyFix c.int.0 matches 0.. run scoreboard players set .wither_rework.config.witherFlyFix c.int.0 1
execute unless score .wither_rework.config.witherBossMusic c.int.0 matches 0.. run scoreboard players set .wither_rework.config.witherBossMusic c.int.0 1