# Made by: TheMobo

## Load

tellraw @a [{"color":"gold","italic":true,"text":"Travelled Paths"},{"color":"green","italic":false,"text":" datapack reloaded. Made by "},{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\"color\":\"gold\",\"text\":\"\\n\\n\\n\\n\\nClick Links!\\n\\n\",\"underlined\":true},{\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://discord.gg/vdfdNqPuQw\"},\"color\":\"blue\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"discord.gg/vdfdNqPuQw\"}]},\"text\":\"[Discord]\\n\",\"underlined\":false},{\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://www.planetminecraft.com/member/themobo/\"},\"color\":\"green\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"planetminecraft.com/member/themobo/\"}]},\"text\":\"[Planet Minecraft]\\n\",\"underlined\":false},{\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://modrinth.com/user/TheMobo\"},\"color\":\"dark_blue\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"modrinth.com/user/TheMobo\"}]},\"text\":\"[Modrinth]\\n\",\"underlined\":false},{\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://www.youtube.com/@mobo_h\"},\"color\":\"red\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"youtube.com/@mobo_h\"}]},\"text\":\"[YouTube]\\n\",\"underlined\":false}]"},"color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to view my Links/Socials :)","bold":false,"italic":false,"underlined":false}]},"italic":false,"text":"[TheMobo]","underlined":true},{"bold":false,"color":"green","italic":false,"text":".","underlined":false}]

scoreboard objectives add path.settings dummy

# Schedule
schedule function path:schedule 1s replace