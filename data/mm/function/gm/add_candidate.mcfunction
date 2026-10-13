scoreboard players add GmCandidates config 1
scoreboard players operation @s GmId = GmCandidates config
execute store result storage mm:temp gm_id int 1 run scoreboard players get @s GmId
function mm:gm/announce_candidate with storage mm:temp