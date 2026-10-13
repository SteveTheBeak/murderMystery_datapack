#Lock the trigger so nobody can vote any more
scoreboard players reset * GmVote

#Count votes for each candidate, the "No Game Master" votes, and the top score
execute as @a[scores={GmId=1..}] run function mm:gm/tally_one
scoreboard players set #gmNone temp 0
execute as @a if score @s GmChoice matches 1000 run scoreboard players add #gmNone temp 1
scoreboard players set #gmTop temp 0
execute as @a[scores={GmId=1..}] run scoreboard players operation #gmTop temp > @s GmVotes

#Clear the old game master(s); a new one is only set if top beats "No Game Master"
scoreboard players reset * IsGm
scoreboard players set GmActive config 0
execute if score #gmTop temp > #gmNone temp run scoreboard players set GmActive config 1
execute if score GmActive config matches 1 as @a[scores={GmId=1..}] if score @s GmVotes = #gmTop temp run scoreboard players set @s IsGm 1

execute if score GmActive config matches 1 run tellraw @a [{"text":"Game Master: ","color":"gold","bold":true},{"selector":"@a[scores={IsGm=1}]","color":"aqua"}]
execute if score GmActive config matches 0 run tellraw @a {"text":"No Game Master was chosen!","color":"gold","bold":true}

#Block new votes for 30 seconds
scoreboard players set GmCooldown config 600