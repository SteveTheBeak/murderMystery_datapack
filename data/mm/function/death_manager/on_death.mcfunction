execute as @s at @s run execute as @a[distance=17..] at @s run playsound minecraft:entity.player.death player @s ~ ~ ~ 2 1.2

clear @s

gamemode spectator @s
tellraw @s {"text":"You died! Spectating until the round ends.","color":"red","italic":true}

scoreboard players set @s deaths 0


execute store result storage mm:temp x int 1 run scoreboard players get @s LiveX
execute store result storage mm:temp y int 1 run scoreboard players get @s LiveY
execute store result storage mm:temp z int 1 run scoreboard players get @s LiveZ

execute store result score @s DeathX run data get storage mm:temp x
execute store result score @s DeathY run data get storage mm:temp y
execute store result score @s DeathZ run data get storage mm:temp z
tag @s add mm_dead
scoreboard players set @s EnforceTimer 2

execute store result storage mm:temp yaw float 1 run data get entity @s Rotation[0] 1
data modify storage mm:temp uuid set from entity @s UUID

function mm:death_manager/spawn_body with storage mm:temp
function mm:death_manager/tp_to_death with storage mm:temp

#If the detective died, announce it and drop their bow for someone to claim
execute if entity @s[team=detective] run tellraw @a {"text":"The detective has been killed!","color":"gold","bold":true}
execute if entity @s[team=detective] run function mm:death_manager/drop_detective_bow with storage mm:temp

#If a murderer died, despawn their sword immediately so it can't be picked up
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_throw:1b}}}}] run kill @s
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mm_fake:1b}}}}] run kill @s

team leave @s