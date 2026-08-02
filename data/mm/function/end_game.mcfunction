gamemode adventure @a
tp @a -44.0 -57.5 26.0 facing -44.0 -57.5 24.0

tag @a remove mm_was_murderer
scoreboard players set GameActive config 0
execute if score MapWasRandom config matches 1 run scoreboard players set MapSelectIndex config 7
execute if score MapWasRandom config matches 1 run function mm:apply_map_select_value

team empty murderer
team empty detective
team empty innocent

clear @a
kill @e[tag=dead_body]
kill @e[tag=mm_detective_pickup]
kill @e[tag=mm_decoy]
kill @e[type=arrow]

kill @e[type=item_frame]
kill @e[type=item,tag=mm_gold]
tag @e[tag=gold_active] remove gold_active