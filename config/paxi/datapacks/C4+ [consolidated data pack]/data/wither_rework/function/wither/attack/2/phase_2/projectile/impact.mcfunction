
execute as @a[distance=..3] run damage @s 6 explosion by @n[type=wither,limit=1]

#Particle
particle large_smoke ~ ~ ~ 0 0 0 0.15 25 force

#Kill
kill @s
