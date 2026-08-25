Spawn timer duration text:
/summon minecraft:interaction ~ ~1.0 ~-0.2 {Tags:["setting_timer"],width:1.0,height:1.0}
/summon minecraft:text_display ~ ~1.5 ~-0.2 {Tags:["setting_timer_display"],text:'{"text":"Time limit: 5 minutes"}',billboard:"fixed"}
Edit display:
/data merge entity @e[tag=setting_timer_display,limit=1] {text:{text:"Time limit: 5 minutes",color:"yellow",bold:false}}

Spawn murderer count text:
/summon minecraft:interaction ~ ~1.0 ~-0.2 {Tags:["setting_murderer_count"],width:1.0,height:1.0}
/summon minecraft:text_display ~ ~1.5 ~-0.2 {Tags:["setting_murderer_count_display"],text:'Murderers: 1',billboard:"fixed"}

Spawn map select text:
/summon minecraft:interaction ~ ~1.0 ~-0.2 {Tags:["map_select"],width:1.0,height:1.0}
/summon minecraft:text_display ~ ~1.5 ~-0.2 {Tags:["map_select_display"],text:'Map: The Skeld',billboard:"fixed"}

Spawn start button:
/summon minecraft:interaction ~ ~1.0 ~-0.2 {Tags:["start_button"],width:1.0,height:1.0}
/summon minecraft:text_display ~ ~1.5 ~-0.2 {Tags:["start_button_display"],text:{text:"START GAME",color:"green",bold:true},billboard:"fixed"}




Spawn shop toggle buttons:
Common, invisibility
/summon minecraft:interaction ~-0.2 ~1.0 ~ {Rotation:[-90f,0f],Tags:["setting_shop", "shop_invisibility"],width:1.0,height:1.0}
/summon minecraft:text_display ~-0.2 ~1.5 ~ {Rotation:[-90f,0f],Tags:["shop_invisibility_display"],text:{text:"Invisibility",color:"aqua"},billboard:"fixed"}

Innocent, speed
/summon minecraft:interaction ~-0.2 ~1.0 ~ {Rotation:[-90f,0f],Tags:["setting_shop", "shop_innocent_speed"],width:1.0,height:1.0}
/summon minecraft:text_display ~-0.2 ~1.5 ~ {Rotation:[-90f,0f],Tags:["shop_innocent_speed_display"],text:{text:"Speed",color:"aqua"},billboard:"fixed"}
Innocent, bow
/summon minecraft:interaction ~-0.2 ~1.0 ~ {Rotation:[-90f,0f],Tags:["setting_shop", "shop_innocent_bow"],width:1.0,height:1.0}
/summon minecraft:text_display ~-0.2 ~1.5 ~ {Rotation:[-90f,0f],Tags:["shop_innocent_bow_display"],text:{text:"Bow",color:"aqua"},billboard:"fixed"}
Innocent, extra life
/summon minecraft:interaction ~-0.2 ~1.0 ~ {Rotation:[-90f,0f],Tags:["setting_shop", "shop_innocent_extralife"],width:1.0,height:1.0}
/summon minecraft:text_display ~-0.2 ~1.5 ~ {Rotation:[-90f,0f],Tags:["shop_innocent_extralife_display"],text:{text:"Extra Life",color:"aqua"},billboard:"fixed"}

Detective, glow
/summon minecraft:interaction ~-0.2 ~1.0 ~ {Rotation:[-90f,0f],Tags:["setting_shop", "shop_detective_glow"],width:1.0,height:1.0}
/summon minecraft:text_display ~-0.2 ~1.5 ~ {Rotation:[-90f,0f],Tags:["shop_detective_glow_display"],text:{text:"Make Players Glow",color:"aqua"},billboard:"fixed"}
Detective, freeze
/summon minecraft:interaction ~-0.2 ~1.0 ~ {Rotation:[-90f,0f],Tags:["setting_shop", "shop_detective_freeze"],width:1.0,height:1.0}
/summon minecraft:text_display ~-0.2 ~1.5 ~ {Rotation:[-90f,0f],Tags:["shop_detective_freeze_display"],text:{text:"Freeze Murderers",color:"aqua"},billboard:"fixed"}
Detective, extra life
/summon minecraft:interaction ~-0.2 ~1.0 ~ {Rotation:[-90f,0f],Tags:["setting_shop", "shop_detective_extralife"],width:1.0,height:1.0}
/summon minecraft:text_display ~-0.2 ~1.5 ~ {Rotation:[-90f,0f],Tags:["shop_detective_extralife_display"],text:{text:"Extra Life",color:"aqua"},billboard:"fixed"}

Murderer, darkness
/summon minecraft:interaction ~-0.2 ~1.0 ~ {Rotation:[-90f,0f],Tags:["setting_shop", "shop_murderer_darkness"],width:1.0,height:1.0}
/summon minecraft:text_display ~-0.2 ~1.5 ~ {Rotation:[-90f,0f],Tags:["shop_murderer_darkness_display"],text:{text:"Give Players Darkness",color:"aqua"},billboard:"fixed"}
Murderer, deceive
/summon minecraft:interaction ~-0.2 ~1.0 ~ {Rotation:[-90f,0f],Tags:["setting_shop", "shop_murderer_deceive"],width:1.0,height:1.0}
/summon minecraft:text_display ~-0.2 ~1.5 ~ {Rotation:[-90f,0f],Tags:["shop_murderer_deceive_display"],text:{text:"Deception",color:"aqua"},billboard:"fixed"}
Murderer, rocket
/summon minecraft:interaction ~-0.2 ~1.0 ~ {Rotation:[-90f,0f],Tags:["setting_shop", "shop_murderer_rocket"],width:1.0,height:1.0}
/summon minecraft:text_display ~-0.2 ~1.5 ~ {Rotation:[-90f,0f],Tags:["shop_murderer_rocket_display"],text:{text:"Rocket Launcher",color:"aqua"},billboard:"fixed"}



Shop toggle indicators:
/summon minecraft:text_display ~-0.5 ~2.3 ~ {Rotation:[-90f,0f],Tags:["innocent_shop_indicator"],text:{text:"Innocent's Shop",color:"green",bold:true},billboard:"fixed"}
/kill @e[type=minecraft:text_display,tag=innocent_shop_indicator]

/summon minecraft:text_display ~-0.5 ~2.3 ~ {Rotation:[-90f,0f],Tags:["detective_shop_indicator"],text:{text:"Detective's Shop",color:"blue",bold:true},billboard:"fixed"}
/kill @e[type=minecraft:text_display,tag=detective_shop_indicator]

/summon minecraft:text_display ~-0.5 ~2.3 ~ {Rotation:[-90f,0f],Tags:["murderer_shop_indicator"],text:{text:"Murderer's Shop",color:"red",bold:true},billboard:"fixed"}
/kill @e[type=minecraft:text_display,tag=murderer_shop_indicator]



Debug:
/scoreboard players set DebugMode config [0 or 1]


To do:
- Add map borders for spectators

Maybe
- Innocent tasks?
- Emergency Meeting / Voting mechanic?
- Innocent Tester?

Bugs:
- End-game text is too large
- when detective dies in airship off bridge or plank, bow is lost
- When player with bow kills innocent, detective gets blindness



Run the following command to lock every container:
/data merge block <x> <y> <z> {lock:{id:"minecraft:any",count:1,components:{"minecraft:custom_name":'"do_not_open_ever"'}}}

Same but for item frames:
execute as @e[type=item_frame,distance=..50] run data merge entity @s {Fixed:1b}


Finished spectator limits:

- Skeld
- Airship
- Museum
- Backrooms
- Underwater base