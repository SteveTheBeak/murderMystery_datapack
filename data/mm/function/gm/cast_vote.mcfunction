scoreboard players set #gmValid temp 0
execute if score @s GmVote matches 1000 run scoreboard players set #gmValid temp 1
execute if score @s GmVote matches 1.. if score @s GmVote <= GmCandidates config run scoreboard players set #gmValid temp 1
execute if score #gmValid temp matches 1 run scoreboard players operation @s GmChoice = @s GmVote
execute if score #gmValid temp matches 1 run tellraw @s {"text":"Vote recorded. Click another name to change it.","color":"gray","italic":true}
scoreboard players set @s GmVote 0