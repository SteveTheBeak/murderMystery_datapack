#TOGGLE MAP IN RANDOMIZER

data remove entity @s attack
execute if score Countdown timer matches 1.. run return 0

#Can't remove the last remaining map
scoreboard players operation MapProbe config = MapFilterIndex config
function mm:read_map_filter
execute if score MapFilterOff config matches 0 if score MapsOff config matches 8.. at @s run playsound minecraft:entity.villager.no block @a ~ ~ ~ 1 1
execute if score MapFilterOff config matches 0 if score MapsOff config matches 8.. run return 0

execute at @s run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2
execute if score MapFilterOff config matches 0 run scoreboard players add MapsOff config 1
execute if score MapFilterOff config matches 1 run scoreboard players remove MapsOff config 1

#Flip the selected map
execute if score MapFilterIndex config matches 0 store success score Skeld mapFilter unless score Skeld mapFilter matches 1
execute if score MapFilterIndex config matches 1 store success score Airship mapFilter unless score Airship mapFilter matches 1
execute if score MapFilterIndex config matches 2 store success score Palace mapFilter unless score Palace mapFilter matches 1
execute if score MapFilterIndex config matches 3 store success score Cruise mapFilter unless score Cruise mapFilter matches 1
execute if score MapFilterIndex config matches 4 store success score Museum mapFilter unless score Museum mapFilter matches 1
execute if score MapFilterIndex config matches 5 store success score Backrooms mapFilter unless score Backrooms mapFilter matches 1
execute if score MapFilterIndex config matches 6 store success score Underwater mapFilter unless score Underwater mapFilter matches 1
execute if score MapFilterIndex config matches 7 store success score Moon mapFilter unless score Moon mapFilter matches 1
execute if score MapFilterIndex config matches 8 store success score Cathedral mapFilter unless score Cathedral mapFilter matches 1

function mm:apply_map_filter