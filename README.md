Spawn timer duration text:
/summon minecraft:interaction ~ ~1.5 ~-0.2 {Tags:["setting_timer"],width:1.0,height:1.0}
/summon minecraft:text_display ~ ~1.5 ~-0.2 {Tags:["setting_timer_display"],text:'{"text":"Time limit: 5 minutes"}',billboard:"fixed"}
Edit display:
/data merge entity @e[tag=setting_timer_display,limit=1] {text:{text:"Time limit: 5 minutes",color:"yellow",bold:false}}

Spawn murderer count text:
/summon minecraft:interaction ~ ~1.5 ~-0.2 {Tags:["setting_murderer_count"],width:1.0,height:1.0}
/summon minecraft:text_display ~ ~1.5 ~-0.2 {Tags:["setting_murderer_count_display"],text:'Murderers: 1',billboard:"fixed"}

Spawn start button:
/summon minecraft:interaction ~ ~1.5 ~-0.2 {Tags:["start_button"],width:1.0,height:1.0}
/summon minecraft:text_display ~ ~1.5 ~-0.2 {Tags:["start_button_display"],text:{text:"START GAME",color:"green",bold:true},billboard:"fixed"}


Debug:
/scoreboard players set DebugMode config [0 or 1]


To do:

- Certain maps give murderer compass
- Lights sabatage or some blinding mechanic
- Map spawning coins
- Inventory shopping menu
- Setting for in-game item select
- TP spectators to map
- Display winners
- Murderer killing player plays kill sound for everyone
- 5 second end-game screen

- Don't forget to remove team colours

- palace trapdoors may be an issue


- shooting one innocent player gives you blindness for 15 seconds, a second time gives you blindness and slowness for 15 seconds, and a third time kills the detective

Maybe
- Innocent tasks?
- Emergency Meeting / Voting mechanic?
- Innocent Tester?

Bugs:
When murderers killed, names dont show up on end game screen
When placing item in anvil, grindstone, etc. itemgets duplicated back into inventory

Run the following command to lock every container:
/data merge block <x> <y> <z> {lock:{id:"minecraft:any",count:1,components:{"minecraft:custom_name":'"do_not_open_ever"'}}}

Same but for item frames:
execute as @e[type=item_frame,distance=..50] run data merge entity @s {Fixed:1b}

Place invisible item frame with gold inside:
/summon item_frame ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b},Facing:1b,Invisible:1b}



Armor stand tags for gold:
The skeld: skeld_gold

Make Armor stands invisible, no gravity:
execute as @e[type=armor_stand,distance=..70] at @s run data merge entity @e[type=armor_stand,limit=1,sort=nearest] {Invisible:1b,NoGravity:1b}

Add tag
/execute as @e[type=armor_stand,distance=..70] at @s run tag @s add skeld_gold

Raise 5 blocks
/execute as @e[type=armor_stand,distance=..70] at @s run tp @s ~ ~5 ~

Summon invisible, no gravity armour stand with tag
/summon armor_stand ~ ~ ~ {Tags:["skeld_gold"],NoGravity:1b,Invisible:1b}