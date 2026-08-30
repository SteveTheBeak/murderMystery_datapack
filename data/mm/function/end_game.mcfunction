gamemode adventure @a
tp @a -44.0 -57.5 26.0 facing -44.0 -57.5 24.0

tag @a remove mm_was_murderer
scoreboard players set GameActive config 0
execute if score MapWasRandom config matches 1 run scoreboard players set MapSelectIndex config 8
execute if score MapWasRandom config matches 1 run function mm:apply_map_select_value

#Remove effects for moon
execute as @a run attribute @s minecraft:gravity base set 0.08
execute as @a run attribute @s minecraft:air_drag_modifier base set 1

#Museum side quest reset
#Replace glass panes in mammoth exhibit
execute run fill -431 6 554 -436 10 554 minecraft:light_gray_stained_glass_pane

#Remove oats
kill @e[type=minecraft:item_frame,x=-398,y=3,z=403]

#Remove all items on the floor
kill @e[type=minecraft:item]

#If map was chosen randomly, set map select index back to the random value
execute if score MapWasRandom config matches 1 run scoreboard players set MapSelectIndex config 8

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

tag @a remove mm_dead
scoreboard players set @a EnforceTimer 0