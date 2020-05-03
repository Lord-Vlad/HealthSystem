#execute as @a at @s store result score @s hsHealth run data get entity @s Health

/summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"Health: "},{"score":{"name":"@p","objective":"hsHealth"}}',CustomNameVisible:1,Particle:heart,Duration:100}
/tellraw @p ["",{"text":"Health: "},{"score":{"name":"@s","objective":"hsHealth"}}]
