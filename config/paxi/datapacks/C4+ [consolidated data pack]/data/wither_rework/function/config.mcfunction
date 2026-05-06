tellraw @s [{"text":"=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=","color":"dark_gray"}]

tellraw @s {"text":"   [Withering Heights Config v1.0]","color":"gray"}
tellraw @s ""
tellraw @s [{"text":" Click on ","color":"gray"},{"text":"Enabled","color":"#b6ff6e"},{"text":"/","color":"gray"},{"text":"Disabled","color":"red"},{"text":" to toggle between options.","color":"gray"}]
tellraw @s ""

execute store result score @s c.int.0 run gamerule mobGriefing
tellraw @s[scores={c.int.0=0}] {"text":" Wither Griefing","color":"red"}
execute unless score @s c.int.0 matches 0 unless score .wither_rework.config.WitherGriefing c.int.0 matches 1 run tellraw @s {"text":" Wither Griefing","color":"red"}
execute unless score @s c.int.0 matches 0 if score .wither_rework.config.WitherGriefing c.int.0 matches 1 run tellraw @s {"text":" Wither Griefing","color":"#b6ff6e"}

tellraw @s {"text":" Should the wither be allowed to break blocks? This option will be automatically disabled if mobGriefing is set to false.","color":"#feb1ff"}

tellraw @s[scores={c.int.0=0}] {"text":" ✘ mobGriefing is Disabled","color":"red"}
execute unless score @s c.int.0 matches 0 unless score .wither_rework.config.WitherGriefing c.int.0 matches 1 run tellraw @s {"text":" Disabled","color":"red","clickEvent":{"action":"run_command","value":"/function wither_rework:config/wither_griefing/enable"}}
execute unless score @s c.int.0 matches 0 if score .wither_rework.config.WitherGriefing c.int.0 matches 1 run tellraw @s {"text":" Enabled","color":"#b6ff6e","clickEvent":{"action":"run_command","value":"/function wither_rework:config/wither_griefing/disable"}}

tellraw @s ""
tellraw @s ""

execute unless score .wither_rework.config.witherFlyFix c.int.0 matches 1 run tellraw @s {"text":" Wither Fly Fix","color":"red"}
execute if score .wither_rework.config.witherFlyFix c.int.0 matches 1 run tellraw @s {"text":" Wither Fly Fix","color":"#b6ff6e"}

tellraw @s {"text":" Should the Wither stick closer to the ground when in its first phase?","color":"#feb1ff"}

execute unless score .wither_rework.config.witherFlyFix c.int.0 matches 1 run tellraw @s {"text":" Disabled","color":"red","clickEvent":{"action":"run_command","value":"/function wither_rework:config/wither_fly_fix/enable"}}
execute if score .wither_rework.config.witherFlyFix c.int.0 matches 1 run tellraw @s {"text":" Enabled","color":"#b6ff6e","clickEvent":{"action":"run_command","value":"/function wither_rework:config/wither_fly_fix/disable"}}

tellraw @s ""
tellraw @s ""

execute unless score .wither_rework.config.witherBossMusic c.int.0 matches 1 run tellraw @s {"text":" Wither Boss Music","color":"red"}
execute if score .wither_rework.config.witherBossMusic c.int.0 matches 1 run tellraw @s {"text":" Wither Boss Music","color":"#b6ff6e"}

tellraw @s {"text":" Should boss music be played to players near a Wither?","color":"#feb1ff"}

execute unless score .wither_rework.config.witherBossMusic c.int.0 matches 1 run tellraw @s {"text":" Disabled","color":"red","clickEvent":{"action":"run_command","value":"/function wither_rework:config/wither_boss_music/enable"}}
execute if score .wither_rework.config.witherBossMusic c.int.0 matches 1 run tellraw @s {"text":" Enabled","color":"#b6ff6e","clickEvent":{"action":"run_command","value":"/function wither_rework:config/wither_boss_music/disable"}}

tellraw @s ""
tellraw @s [{"text":"=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=","color":"dark_gray"}]
