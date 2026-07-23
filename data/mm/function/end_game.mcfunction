gamemode adventure @a
tp @a -44.0 -57.5 26.0 facing -44.0 -57.5 24.0

tag @a remove mm_was_murderer
scoreboard players set GameActive config 0

team empty murderer
team empty detective
team empty innocent

clear @a
kill @e[tag=dead_body]
kill @e[tag=mm_detective_pickup]