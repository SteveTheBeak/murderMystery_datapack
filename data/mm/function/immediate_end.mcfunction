#GAME END SEQUENCE | PATH 4

execute run tellraw @a {"text":"Game over!","color":"gray","italic":true}
execute run scoreboard players set PvpTimer pvptimer -1

#JESTER WIN | overrides every other result
execute if entity @a[tag=mm_jester_shot] run schedule function mm:end_game 60
execute if entity @a[tag=mm_jester_shot] run return run function mm:jester_win

#Announce winners
#If innocents win - murderers eliminated
execute unless entity @a[team=murderer] run title @a title {"text":"Innocents Win!","color":"green","bold":true}
execute if score MurdererCountIndex config matches 0 unless entity @a[team=murderer] run title @a subtitle [{"text":"The Murderer Was: ","color":"gold"},{"selector":"@a[tag=mm_was_murderer]","color":"red","bold":true}]
execute if score MurdererCountIndex config matches 1.. unless entity @a[team=murderer] run title @a subtitle [{"text":"The Murderers Were: ","color":"gold"},{"selector":"@a[tag=mm_was_murderer]","color":"red","bold":true}]
execute unless entity @a[team=murderer] run tellraw @a {"text":"All murderers were killed!","color":"red"}
execute unless entity @a[team=murderer] run tellraw @a [{"text":"Murderers: ","color":"red"},{"selector":"@a[tag=mm_was_murderer]","color":"red"}]

#If innocents win - time ran out, only innocents alive
execute if entity @a[team=murderer] if entity @a[team=innocent] run title @a title {"text":"Innocents Win!","color":"green","bold":true}
execute if score MurdererCountIndex config matches 0 if entity @a[team=murderer] if entity @a[team=innocent] run title @a subtitle [{"text":"The Murderer Was: ","color":"gold"},{"selector":"@a[team=murderer]","color":"red","bold":true}]
execute if score MurdererCountIndex config matches 1.. if entity @a[team=murderer] if entity @a[team=innocent] run title @a subtitle [{"text":"The Murderers Were: ","color":"gold"},{"selector":"@a[tag=mm_was_murderer]","color":"red","bold":true}]
execute if entity @a[team=murderer] if entity @a[team=innocent] run tellraw @a {"text":"The time ran out!","color":"red"}
execute if entity @a[team=murderer] if entity @a[team=innocent] run tellraw @a [{"text":"Murderers: ","color":"red"},{"selector":"@a[tag=mm_was_murderer]","color":"red"}]

#If innocents win - time ran out, only detective is alive
execute if entity @a[team=murderer] if entity @a[team=detective] unless entity @a[team=innocent] run title @a title {"text":"Innocents Win!","color":"green","bold":true}
execute if score MurdererCountIndex config matches 0 if entity @a[team=murderer] if entity @a[team=detective] unless entity @a[team=innocent] run title @a subtitle [{"text":"The Murderer Was: ","color":"gold"},{"selector":"@a[team=murderer]","color":"red","bold":true}]
execute if score MurdererCountIndex config matches 1.. if entity @a[team=murderer] if entity @a[team=detective] unless entity @a[team=innocent] run title @a subtitle [{"text":"The Murderers Were: ","color":"gold"},{"selector":"@a[tag=mm_was_murderer]","color":"red","bold":true}]
execute if entity @a[team=murderer] if entity @a[team=detective] unless entity @a[team=innocent] run tellraw @a {"text":"The time ran out!","color":"red"}
execute if entity @a[team=murderer] if entity @a[team=detective] unless entity @a[team=innocent] run tellraw @a [{"text":"Murderers: ","color":"red"},{"selector":"@a[tag=mm_was_murderer]","color":"red"}]

#If murderers win
execute unless entity @a[team=innocent] unless entity @a[team=detective] run title @a title {"text":"Murderers Win!","color":"red","bold":true}
execute if score MurdererCountIndex config matches 0 unless entity @a[team=innocent] unless entity @a[team=detective] run title @a subtitle [{"text":"The Murderer Was: ","color":"gold"},{"selector":"@a[team=murderer]","color":"red","bold":true}]
execute if score MurdererCountIndex config matches 1.. unless entity @a[team=innocent] unless entity @a[team=detective] run title @a subtitle [{"text":"The Murderers Were: ","color":"gold"},{"selector":"@a[tag=mm_was_murderer]","color":"red","bold":true}]
execute unless entity @a[team=innocent] unless entity @a[team=detective] run tellraw @a {"text":"The murderers killed everyone!","color":"red"}
execute unless entity @a[team=innocent] unless entity @a[team=detective] run tellraw @a [{"text":"Murderers: ","color":"red"},{"selector":"@a[tag=mm_was_murderer]","color":"red"}]

#If the jester survived and didn't win
execute if entity @a[team=jester] run tellraw @a {"text":"The Jester is still alive and lost the challenge!","color":"light_purple"}
execute if entity @a[team=jester] run tellraw @a [{"text":"The jester was: ","color":"light_purple"},{"selector":"@a[tag=mm_was_jester]","color":"light_purple"}]

schedule function mm:end_game 60