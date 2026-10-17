#IN GAME PROCEDURES | PATH 3.3

execute as @a at @s run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.8

#Put everyone in adventure, reset death count
gamemode adventure @a
scoreboard players operation @a lastDeaths = @a deaths

tag @a remove mm_dead
scoreboard players set @a EnforceTimer 0

#Reset cooldown values
scoreboard players set @a MeleeCooldown 0
scoreboard players set @a BowCooldown 0
scoreboard players set @a SwordAway 0

#TEAM SELECTION
scoreboard players operation MurdererLoop temp = MurdererCountLength config
#ASSIGN MURDERERS | PATH 3.3.1
function mm:assign_murderers
execute as @r[team=!murderer] run team join detective @s
execute unless score Jester roleFilter matches 1 as @r[team=!murderer,team=!detective] run team join jester @s
team join innocent @a[team=!murderer,team=!detective,team=!jester]

tag @a[team=detective] add mm_was_detective
tag @a[team=innocent] add mm_was_innocent
tag @a[team=jester] add mm_was_jester

#ROLE ITEMS
execute as @a[team=murderer] run function mm:throw_sword/give_throwable
execute as @a[team=detective] run function mm:combat/give_detective

#ROLE TEXT
execute as @a[team=innocent] run title @a[team=innocent] title {"text":"INNOCENT","color":"green","bold":false}
execute as @a[team=murderer] run title @a[team=murderer] title {"text":"MURDERER","color":"red","bold":false}
execute as @a[team=detective] run title @a[team=detective] title {"text":"DETECTIVE","color":"blue","bold":false}
execute as @a[team=jester] run title @a[team=jester] title {"text":"JESTER","color":"light_purple","bold":false}

#Instructions for innocent
tellraw @a[team=innocent] {"text":"Survive until the end.","color":"green"}

#Instructions for murderer
tellraw @a[team=murderer] {"text":"Kill all the players.","color":"red"}

#Instructions for detective
tellraw @a[team=detective] {"text":"Find and shoot the murderer(s).","color":"blue"}

#Instructions for jester
tellraw @a[team=jester] {"text":"Win by getting shot ONLY by the detective.","color":"light_purple"}