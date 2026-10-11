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

Spawn map filter button:
/summon minecraft:interaction ~ ~1.0 ~-0.2 {Tags:["filter_map"],width:1.0,height:1.0}
/summon minecraft:text_display ~ ~1.5 ~-0.2 {Tags:["filter_map_display"],text:'{"text":"Toggle map: "}',billboard:"fixed"}



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
-Murderers see each other
-Detective knows when they kill murderer

Maybe
- Innocent tasks?
- Emergency Meeting / Voting mechanic?
- Innocent Tester?

Bugs:



Run the following command to lock every container:
/data merge block <x> <y> <z> {lock:{id:"minecraft:any",count:1,components:{"minecraft:custom_name":'"do_not_open_ever"'}}}

Same but for item frames:
execute as @e[type=item_frame,distance=..50] run data merge entity @s {Fixed:1b}

Lock armour stands:
/data merge entity @e[type=armor_stand,limit=1,sort=nearest] {DisabledSlots:4144959}


Top priority:
Compass for murderer, either appears in inventory last 3-5 min or a buyable item that becomes free

Map filter

Replace speed for innocent shop:
Footprint tracking mechanic as an item for innocent?

New Role?:
Jester: One jester, wins if detective kills them, to balance, jester gets no items

Mutant: One mutant, part of innocent team, buyable enhanced hearing item that picks up on murderer heart beats, buyable enhanced smell item that makes a pointer to every player in the game, to balance mutant is completely defenceless

Medic: One medic, part of innocent team, buyable revive item, 15 gold?

Spectator quality of life:
Spiritual guidance mechanic? If spectating murderer, murderer gets a glimpse of the closest innocent, etc

New idea: Voting in lobby for "Game master", who has sole control over settings and start button. Player who gets majority votes becomes game master, and if majority vote to change the game master, the role is removed from them

Small reminders:
Update lobby guide book
Add descriptions under role titles when game starts


************NEW MAP ADDITIONS************

apply_map_select_value.mcfunction

 Add the new map’s line:
  execute if score MapSelectIndex config matches N as @e[type=text_display,tag=map_select_display,limit=1] run data merge entity @s {text:{text:"Map: <Name>",color:"yellow",bold:false}}
 Change the Random line from matches 9 to matches R.

apply_map_coords.mcfunction

 Add 5 lines: MapCenterX, MapCenterZ, MapRadius, MapMaxHeight, MapMinHeight, each execute if score MapSelectIndex config matches N run scoreboard players set <name> config <value>.

cycle_map_select.mcfunction

 Wrap: matches 10.. → matches R+1...

cycle_map_select_back.mcfunction

 Wrap: set MapSelectIndex config 9 → R.

start_game.mcfunction

 Line 9 (MapWasRandom): change matches 9 to matches R.
 Line 10 (function mm:pick_random_map): change matches 9 to matches R.
 Add a time-of-day line (noon or midnight): execute if score MapSelectIndex config matches N run time set minecraft:noon

end_game.mcfunction

 Two lines set the Random index (around lines 8 and 26): change both from 9 to R.

cancel_game.mcfunction

 One line sets Random: change from 9 to R.

check_player_height.mcfunction

 Add the fallback pair with a safe tp spot:
  #If map is <name>
  execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches N if score @s retries matches 6.. run tp @s <x> <y> <z>
  execute if score @s temp < MapMinHeight config if score MapSelectIndex config matches N if score @s retries matches 6.. run scoreboard players set @s retries 0

gold/spawn.mcfunction

 Add:
  execute if score MapSelectIndex config matches N as @e[tag=<name>_gold,tag=!gold_active,sort=random,limit=1] at @s run function mm:gold/spawn_at_stand

gold/gold_tick.mcfunction

 Add the drop-rate line:
  #<Name> - Drop gold every X-Y seconds
  execute if score MapSelectIndex config matches N if score GoldTimer gold matches 0 store result score GoldTimer gold run random value <min>..<max>

(ticks, 20 = 1s)

Map filter files (new)

pick_random_map.mcfunction

 random value 0..8 → 0..N.

read_map_filter.mcfunction

 Add:
  execute if score MapProbe config matches N store success score MapFilterOff config if score <Name> mapFilter matches 1

The fake player name (<Name>) must be the same one you use in the toggle file below.

apply_map_filter.mcfunction

 Add the text line:
  execute if score MapFilterIndex config matches N as @e[type=text_display,tag=filter_map_display,limit=1] run data merge entity @s {text:{text:"Toggle map: <Name>",color:"yellow",bold:false}}

cycle_map_filter_toggle.mcfunction

 Add the flip line:
  execute if score MapFilterIndex config matches N store success score <Name> mapFilter unless score <Name> mapFilter matches 1
 Update the last-map guard. Both if score MapsOff config matches 8.. lines become matches N.. (map count − 1 after you add the map).

cycle_map_filter.mcfunction

 Wrap: matches 9.. → matches N+1..