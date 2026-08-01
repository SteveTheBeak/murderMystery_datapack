advancement revoke @s only mm:shop/deceive_detect

#Consume the head
clear @s minecraft:player_head[minecraft:custom_data={mm_shop_murderer_deceive_real:1b}]

#Pick a random non-murderer player's skin for the decoy
execute as @a[team=!murderer,sort=random,limit=1] run data modify storage mm:temp2 uuid set from entity @s UUID

#Spawn the decoy directly on top of the murderer
execute at @s run function mm:shop/spawn_decoy with storage mm:temp2

#Mark that this murderer now has an active decoy following them
scoreboard players set @s DecoyTimer 300

#Turn the murderer invisible for 15 seconds
effect give @s minecraft:invisibility 15 0 true

tellraw @s {"text":"You summoned a decoy!","color":"aqua"}
playsound minecraft:entity.enderman.teleport player @s