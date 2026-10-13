data remove entity @s interaction
execute if score GameActive config matches 1 run return 0
execute if score GmVoteTimer config matches 1.. at @s run return run tellraw @p {"text":"A vote is already in progress!","color":"red"}
execute if score GmCooldown config matches 1.. run scoreboard players operation #gmSec temp = GmCooldown config
execute if score GmCooldown config matches 1.. run scoreboard players add #gmSec temp 19
execute if score GmCooldown config matches 1.. run scoreboard players operation #gmSec temp /= Const20 const
execute if score GmCooldown config matches 1.. at @s run return run tellraw @p [{"text":"Please wait ","color":"red"},{"score":{"name":"#gmSec","objective":"temp"}},{"text":"s before starting another vote!"}]
execute at @s run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2
function mm:gm/start_vote