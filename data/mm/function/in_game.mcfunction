#IN GAME PROCEDURES | PATH 3.3

execute as @a at @s run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.8

#Put everyone in adventure, reset death count
gamemode adventure @a
scoreboard players operation @a lastDeaths = @a deaths

#Reset cooldown values
scoreboard players set @a MeleeCooldown 0
scoreboard players set @a BowCooldown 0
scoreboard players set @a SwordAway 0

#TEAM SELECTION
scoreboard players operation MurdererLoop temp = MurdererCountLength config
#ASSIGN MURDERERS | PATH 3.3.1
function mm:assign_murderers
execute as @r[team=!murderer] run team join detective @s
team join innocent @a[team=!murderer,team=!detective]

#ROLE ITEMS
execute as @a[team=murderer] run function mm:throw_sword/give_throwable
execute as @a[team=detective] run function mm:combat/give_detective

#ROLE TEXT
execute as @a[team=innocent] run title @a[team=innocent] title {"text":"INNOCENT","color":"green","bold":false}
execute as @a[team=murderer] run title @a[team=murderer] title {"text":"MURDERER","color":"red","bold":false}
execute as @a[team=detective] run title @a[team=detective] title {"text":"DETECTIVE","color":"blue","bold":false}