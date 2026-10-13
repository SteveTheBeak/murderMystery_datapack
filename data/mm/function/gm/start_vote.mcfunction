scoreboard players set GmVoteTimer config 300
scoreboard players set GmCandidates config 0
scoreboard players reset * GmId
scoreboard players reset * GmChoice
scoreboard players reset * GmVotes
scoreboard players reset * GmVote

tellraw @a {"text":"A vote for Game Master has started! You have 15 seconds cast your vote by clicking a name:","color":"gold","bold":true}
execute as @a run function mm:gm/add_candidate
tellraw @a {"text":"  [No Game Master]","color":"gray","click_event":{"action":"run_command","command":"/trigger GmVote set 1000"},"hover_event":{"action":"show_text","value":"Vote for no game master"}}