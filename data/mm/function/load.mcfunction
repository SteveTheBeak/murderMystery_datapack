#CORE GAME SETTINGS

#OBJECTIVE SCOREBOARDS
scoreboard objectives add timer dummy
scoreboard objectives add pvptimer dummy
scoreboard objectives add murderers dummy
scoreboard objectives add config dummy
scoreboard objectives add temp dummy
scoreboard objectives add const dummy

scoreboard players set Const20 const 20
scoreboard players set Const1200 const 1200

#NAME COLOURS
team add murderer Murderer
team add detective Detective
team add innocent Innocent
team modify murderer color red
team modify detective color blue
team modify innocent color green

#SETTINGS
execute unless score TimerLength config matches -2147483648..2147483647 run scoreboard players set TimerLength config 10
execute unless score MurdererCountLength config matches -2147483648..2147483647 run scoreboard players set MurdererCountLength config 10
execute unless score MapSelectLength config matches -2147483648..2147483647 run scoreboard players set MapSelectLength config 10

execute unless score TimerIndex config matches -2147483648..2147483647 run scoreboard players set TimerIndex config 0
execute unless score MurdererCountIndex config matches -2147483648..2147483647 run scoreboard players set MurdererCountIndex config 0
execute unless score MapSelectIndex config matches -2147483648..2147483647 run scoreboard players set MapSelectIndex config 0

execute unless score PvpDuration config matches -2147483648..2147483647 run scoreboard players set PvpDuration config 600
execute unless score GameActive config matches -2147483648..2147483647 run scoreboard players set GameActive config 0
execute unless score DebugMode config matches -2147483648..2147483647 run scoreboard players set DebugMode config 1

execute unless score HeightCheckCount config matches -2147483648..2147483647 run scoreboard players set HeightCheckCount config 0
execute unless score PlayerRetries config matches -2147483648..2147483647 run scoreboard players set PlayerRetries config 0

function mm:apply_map_coords

say Murder Mystery datapack initialized