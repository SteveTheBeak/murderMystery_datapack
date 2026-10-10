#Reads whether the map at MapProbe is removed from the randomizer (1 = removed)
execute if score MapProbe config matches 0 store success score MapFilterOff config if score Skeld mapFilter matches 1
execute if score MapProbe config matches 1 store success score MapFilterOff config if score Airship mapFilter matches 1
execute if score MapProbe config matches 2 store success score MapFilterOff config if score Palace mapFilter matches 1
execute if score MapProbe config matches 3 store success score MapFilterOff config if score Cruise mapFilter matches 1
execute if score MapProbe config matches 4 store success score MapFilterOff config if score Museum mapFilter matches 1
execute if score MapProbe config matches 5 store success score MapFilterOff config if score Backrooms mapFilter matches 1
execute if score MapProbe config matches 6 store success score MapFilterOff config if score Underwater mapFilter matches 1
execute if score MapProbe config matches 7 store success score MapFilterOff config if score Moon mapFilter matches 1
execute if score MapProbe config matches 8 store success score MapFilterOff config if score Cathedral mapFilter matches 1