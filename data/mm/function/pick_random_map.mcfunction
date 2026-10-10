#Pick a random map that hasn't been removed from the randomizer
execute store result score MapSelectIndex config run random value 0..8
scoreboard players operation MapProbe config = MapSelectIndex config
function mm:read_map_filter
execute if score MapFilterOff config matches 1 run function mm:pick_random_map