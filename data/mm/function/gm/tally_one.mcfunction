scoreboard players operation #gmCand temp = @s GmId
scoreboard players set #gmVotes temp 0
execute as @a if score @s GmChoice = #gmCand temp run scoreboard players add #gmVotes temp 1
scoreboard players operation @s GmVotes = #gmVotes temp