#GAME END SEQUENCE | PATH 4

execute run tellraw @a {"text":"Game over!","color":"gray","italic":true}
execute run scoreboard players set PvpTimer pvptimer -1

#Announce winners
#If innocents win - murderers eliminated
execute unless entity @a[team=murderer] run title @a title {"text":"Innocents Win!","color":"green","bold":true}
execute if score MurdererCountIndex config matches 0 unless entity @a[team=murderer] run title @a subtitle [{"text":"The Murderer Was: ","color":"gold"},{"selector":"@a[tag=mm_was_murderer]","color":"red","bold":true}]
execute if score MurdererCountIndex config matches 1.. unless entity @a[team=murderer] run title @a subtitle [{"text":"The Murderers Were: ","color":"gold"},{"selector":"@a[tag=mm_was_murderer]","color":"red","bold":true}]
execute unless entity @a[team=murderer] run tellraw @a {"text":"The murderers were killed!","color":"red"}

#If innocents win - time ran out
execute if entity @a[team=murderer] if entity @a[team=innocent] run title @a title {"text":"Innocents Win!","color":"green","bold":true}
execute if score MurdererCountIndex config matches 0 if entity @a[team=murderer] if entity @a[team=innocent] run title @a subtitle [{"text":"The Murderer Was: ","color":"gold"},{"selector":"@a[team=murderer]","color":"red","bold":true}]
execute if score MurdererCountIndex config matches 1.. if entity @a[team=murderer] if entity @a[team=innocent] run title @a subtitle [{"text":"The Murderers Were: ","color":"gold"},{"selector":"@a[tag=mm_was_murderer]","color":"red","bold":true}]
execute if entity @a[team=murderer] if entity @a[team=innocent] run tellraw @a {"text":"The time ran out!","color":"red"}

#If murderers win
execute unless entity @a[team=innocent] unless entity @a[team=detective] run title @a title {"text":"Murderers Win!","color":"red","bold":true}
execute if score MurdererCountIndex config matches 0 unless entity @a[team=innocent] unless entity @a[team=detective] run title @a subtitle [{"text":"The Murderer Was: ","color":"gold"},{"selector":"@a[team=murderer]","color":"red","bold":true}]
execute if score MurdererCountIndex config matches 1.. unless entity @a[team=innocent] unless entity @a[team=detective] run title @a subtitle [{"text":"The Murderers Were: ","color":"gold"},{"selector":"@a[tag=mm_was_murderer]","color":"red","bold":true}]
execute unless entity @a[team=innocent] unless entity @a[team=detective] run tellraw @a {"text":"The murderers killed everyone!","color":"red"}

schedule function mm:end_game 60