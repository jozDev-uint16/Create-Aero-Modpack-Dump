# Ore Collapse by kocourek12
# Minimal version - spawns falling blocks above mined ores

# Initialize scoreboard on load
scoreboard objectives add ore_mined minecraft.mined:minecraft.coal_ore
scoreboard objectives add ore_mined2 minecraft.mined:minecraft.iron_ore
scoreboard objectives add ore_mined3 minecraft.mined:minecraft.copper_ore
scoreboard objectives add ore_mined4 minecraft.mined:minecraft.gold_ore
scoreboard objectives add ore_mined5 minecraft.mined:minecraft.diamond_ore
scoreboard objectives add ore_mined6 minecraft.mined:minecraft.emerald_ore
scoreboard objectives add ore_mined7 minecraft.mined:minecraft.lapis_ore
scoreboard objectives add ore_mined8 minecraft.mined:minecraft.redstone_ore

# Detect any ore mining and spawn falling blocks above (coal - 20% chance)
execute as @a[scores={ore_mined=1..}] at @s if predicate {"condition":"minecraft:random_chance","probability":0.2} run summon minecraft:falling_block ~ ~3 ~ {BlockState:{Name:"minecraft:gravel"},Time:1}
execute as @a[scores={ore_mined=1..}] run scoreboard players reset @s ore_mined

# Iron/Copper - 30% chance
execute as @a[scores={ore_mined2=1..}] at @s if predicate {"condition":"minecraft:random_chance","probability":0.3} run summon minecraft:falling_block ~ ~3 ~ {BlockState:{Name:"minecraft:cobblestone"},Time:1}
execute as @a[scores={ore_mined2=1..}] run scoreboard players reset @s ore_mined2
execute as @a[scores={ore_mined3=1..}] at @s if predicate {"condition":"minecraft:random_chance","probability":0.3} run summon minecraft:falling_block ~ ~3 ~ {BlockState:{Name:"minecraft:gravel"},Time:1}
execute as @a[scores={ore_mined3=1..}] run scoreboard players reset @s ore_mined3

# Gold - 40% chance
execute as @a[scores={ore_mined4=1..}] at @s if predicate {"condition":"minecraft:random_chance","probability":0.4} run summon minecraft:falling_block ~ ~3 ~ {BlockState:{Name:"minecraft:stone"},Time:1}
execute as @a[scores={ore_mined4=1..}] run scoreboard players reset @s ore_mined4

# Diamond/Emerald - 60% chance with 2 blocks
execute as @a[scores={ore_mined5=1..}] at @s if predicate {"condition":"minecraft:random_chance","probability":0.6} run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:cobblestone"},Time:1}
execute as @a[scores={ore_mined5=1..}] at @s if predicate {"condition":"minecraft:random_chance","probability":0.6} run summon minecraft:falling_block ~ ~3 ~ {BlockState:{Name:"minecraft:gravel"},Time:1}
execute as @a[scores={ore_mined5=1..}] run scoreboard players reset @s ore_mined5
execute as @a[scores={ore_mined6=1..}] at @s if predicate {"condition":"minecraft:random_chance","probability":0.6} run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:stone"},Time:1}
execute as @a[scores={ore_mined6=1..}] at @s if predicate {"condition":"minecraft:random_chance","probability":0.6} run summon minecraft:falling_block ~ ~3 ~ {BlockState:{Name:"minecraft:cobblestone"},Time:1}
execute as @a[scores={ore_mined6=1..}] run scoreboard players reset @s ore_mined6
