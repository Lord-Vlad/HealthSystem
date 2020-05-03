execute as @e[tag=getDamage] at @s run attribute @s minecraft:generic.max_health base set 20
execute as @e[tag=getHealth] at @s run attribute @s minecraft:generic.max_health base set 20
execute as @e[tag=getDamage] at @s run tag @s remove getDamage
execute as @e[tag=getHealth] at @s run tag @s remove getHealth

execute as @e[tag=isDead] at @s run effect give @s minecraft:instant_damage 1 3 true
execute as @e[tag=isDead] at @s run tag @s remove isDead
