#APPLY MAP TO DISPLAY | PATH 1.3.1

execute if score MapSelectIndex config matches 0 run scoreboard players set MapSelectLength config 1
execute if score MapSelectIndex config matches 1 run scoreboard players set MapSelectLength config 2
execute if score MapSelectIndex config matches 2 run scoreboard players set MapSelectLength config 3
execute if score MapSelectIndex config matches 3 run scoreboard players set MapSelectLength config 4
execute if score MapSelectIndex config matches 4 run scoreboard players set MapSelectLength config 5
execute if score MapSelectIndex config matches 5 run scoreboard players set MapSelectLength config 6
execute if score MapSelectIndex config matches 6 run scoreboard players set MapSelectLength config 7

execute if score MapSelectIndex config matches 0 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: The Skeld",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 1 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Airship",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 2 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Palace",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 3 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Cruise",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 4 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Museum",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 5 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Backrooms",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 6 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Underwater Base",color:"yellow",bold:false}}