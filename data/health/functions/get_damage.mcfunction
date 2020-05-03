tag @s add getDamage
execute as @s store result score @s hsHealth run data get entity @s Health
effect give @s minecraft:instant_health 1 3 true
execute as @s store result score @s hsGetDamage run scoreboard players operation @s hsHealth -= @s hsGetDamage

execute if score @s hsGetDamage matches ..0 run tag @s add isDead
execute if score @s hsGetDamage matches 1 run attribute @s minecraft:generic.max_health base set 1
execute if score @s hsGetDamage matches 2 run attribute @s minecraft:generic.max_health base set 2
execute if score @s hsGetDamage matches 3 run attribute @s minecraft:generic.max_health base set 3
execute if score @s hsGetDamage matches 4 run attribute @s minecraft:generic.max_health base set 4
execute if score @s hsGetDamage matches 5 run attribute @s minecraft:generic.max_health base set 5
execute if score @s hsGetDamage matches 6 run attribute @s minecraft:generic.max_health base set 6
execute if score @s hsGetDamage matches 7 run attribute @s minecraft:generic.max_health base set 7
execute if score @s hsGetDamage matches 8 run attribute @s minecraft:generic.max_health base set 8
execute if score @s hsGetDamage matches 9 run attribute @s minecraft:generic.max_health base set 9
execute if score @s hsGetDamage matches 10 run attribute @s minecraft:generic.max_health base set 10
execute if score @s hsGetDamage matches 11 run attribute @s minecraft:generic.max_health base set 11
execute if score @s hsGetDamage matches 12 run attribute @s minecraft:generic.max_health base set 12
execute if score @s hsGetDamage matches 13 run attribute @s minecraft:generic.max_health base set 13
execute if score @s hsGetDamage matches 14 run attribute @s minecraft:generic.max_health base set 14
execute if score @s hsGetDamage matches 15 run attribute @s minecraft:generic.max_health base set 15
execute if score @s hsGetDamage matches 16 run attribute @s minecraft:generic.max_health base set 16
execute if score @s hsGetDamage matches 17 run attribute @s minecraft:generic.max_health base set 17
execute if score @s hsGetDamage matches 18 run attribute @s minecraft:generic.max_health base set 18
execute if score @s hsGetDamage matches 19 run attribute @s minecraft:generic.max_health base set 19
#execute if score @s hsGetDamage matches 20 run attribute @s minecraft:generic.max_health base set 20

scoreboard players reset @s hsGetDamage

#playsound minecraft:entity.player.hurt player @s
schedule function health:reset_health 2t

execute unless entity @s[tag=isDead] run effect give @s minecraft:instant_damage 1 30 true
execute unless entity @s[tag=isDead] run effect give @s minecraft:instant_health 1 30 true
