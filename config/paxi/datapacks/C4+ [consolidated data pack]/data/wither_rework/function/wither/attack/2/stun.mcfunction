particle crit ~ ~3 ~ 0.5 0.5 0.5 0.01 2 force

#Reduce Armour
attribute @s generic.armor base set 8
attribute @s generic.armor_toughness base set 0

#Phase 2
#execute if score @s wither.phase matches 2.. run function wither_rework:wither/attack/2/phase_2/stun_attack
