#IN GAME PROCEDURES | PATH 3.3

execute as @a at @s run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.8

#TEAM SELECTION
scoreboard players operation MurdererLoop temp = MurdererCountLength config
#ASSIGN MURDERERS | PATH 3.3.1
function mm:assign_murderers
execute as @r[team=!murderer] run team join detective @s
team join innocent @a[team=!murderer,team=!detective]

#ROLE ITEMS
execute as @a[team=murderer] run item replace entity @s hotbar.1 with minecraft:iron_sword[minecraft:enchantments={"minecraft:sharpness":255},max_damage=1,damage=0]
execute as @a[team=detective] run item replace entity @s hotbar.8 with minecraft:bow[minecraft:enchantments={"minecraft:power":255"}]

#ROLE TEXT
execute as @a[team=innocent] run title @a[team=innocent] title {"text":"INNOCENT","color":"green","bold":false}
execute as @a[team=murderer] run title @a[team=murderer] title {"text":"MURDERER","color":"red","bold":false}
execute as @a[team=detective] run title @a[team=detective] title {"text":"DETECTIVE","color":"blue","bold":false}