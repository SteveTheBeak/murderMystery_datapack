scoreboard players enable @a GmVote
execute as @a[scores={GmVote=1..}] run function mm:gm/cast_vote
scoreboard players remove GmVoteTimer config 1
execute if score GmVoteTimer config matches 0 run function mm:gm/end_vote