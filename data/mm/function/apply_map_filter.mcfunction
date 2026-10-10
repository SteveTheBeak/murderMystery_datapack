execute if score MapFilterIndex config matches 0 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{text:"Toggle map: The Skeld",color:"yellow",bold:false}}
execute if score MapFilterIndex config matches 1 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{text:"Toggle map: Airship",color:"yellow",bold:false}}
execute if score MapFilterIndex config matches 2 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{text:"Toggle map: Palace",color:"yellow",bold:false}}
execute if score MapFilterIndex config matches 3 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{text:"Toggle map: Cruise",color:"yellow",bold:false}}
execute if score MapFilterIndex config matches 4 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{text:"Toggle map: Museum",color:"yellow",bold:false}}
execute if score MapFilterIndex config matches 5 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{text:"Toggle map: Backrooms",color:"yellow",bold:false}}
execute if score MapFilterIndex config matches 6 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{text:"Toggle map: Underwater Base",color:"yellow",bold:false}}
execute if score MapFilterIndex config matches 7 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{text:"Toggle map: Moon",color:"yellow",bold:false}}
execute if score MapFilterIndex config matches 8 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{text:"Toggle map: Cathedral",color:"yellow",bold:false}}

#Colour display green if map is in randomizer, red if removed
scoreboard players operation MapProbe config = MapFilterIndex config
function mm:read_map_filter
execute if score MapFilterOff config matches 0 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{color:"green"}}
execute if score MapFilterOff config matches 1 as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{color:"red"}}