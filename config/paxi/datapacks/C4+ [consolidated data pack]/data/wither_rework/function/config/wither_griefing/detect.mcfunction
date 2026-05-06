execute store result score .wither_rework.config.WitherGriefing c.int.1 run gamerule mobGriefing

    execute if score .wither_rework.config.WitherGriefing c.int.1 matches 0 run scoreboard players set .wither_rework.config.WitherGriefing c.int.0 0
    execute if score .wither_rework.config.WitherGriefing c.int.1 matches 1 run scoreboard players set .wither_rework.config.WitherGriefing c.int.0 1