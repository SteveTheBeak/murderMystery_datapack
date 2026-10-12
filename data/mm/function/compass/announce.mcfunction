tag @s add mm_compass_given
tellraw @s {"text":"You received a tracking compass! It points to the nearest innocent or detective.","color":"red","bold":true}
tellraw @a {"text":"Watch out! The murderer recieved a tracking compass...","color":"red"}
playsound minecraft:item.lodestone_compass.lock player @s ~ ~ ~ 1 1
