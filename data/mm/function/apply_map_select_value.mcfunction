#APPLY MAP TO DISPLAY | PATH 1.3.1

execute if score MapSelectIndex config matches 0 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: The Skeld",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 1 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Airship",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 2 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Palace",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 3 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Cruise",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 4 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Museum",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 5 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Backrooms",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 6 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Underwater Base",color:"yellow",bold:false}}
execute if score MapSelectIndex config matches 7 as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: Random",color:"yellow",bold:false}}