#IN GAME PROCEDURES | PATH 3.3

#TEAM SELECTION
scoreboard players operation MurdererLoop temp = MurdererCountLength config
function mm:assign_murderers
execute as @r[team=!murderer] run team join detective @s
team join innocent @a[team=!murderer,team=!detective]

#ROLE ITEMS
execute as @a[team=murderer] run item replace entity @s hotbar.1 with minecraft:iron_sword
execute as @a[team=detective] run item replace entity @s hotbar.8 with minecraft:bow
#execute as @a[team=innocent] run item replace entity @s hotbar.0 with minecraft:bread
gamerule pvp true