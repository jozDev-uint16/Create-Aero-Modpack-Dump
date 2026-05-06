execute rotated ~ 0 run particle large_smoke ^ ^2 ^2 ^ ^100000 ^-20000 0.000001 0 force
execute rotated ~ 0 run particle large_smoke ^ ^2 ^2 ^150000 ^-200000 ^-20000 0.000001 0 force
execute rotated ~ 0 run particle large_smoke ^ ^2 ^2 ^-150000 ^-200000 ^-20000 0.000001 0 force

execute if score @s wither.phase matches 2 run particle electric_spark ~ ~1.65 ~ 0.75 0.75 0.75 1 5 normal @a[distance=..50]
execute if score @s wither.phase matches 2 run particle firework ~ ~1.5 ~ 0.75 0.75 0.75 0.1 1 normal @a[distance=..50]
