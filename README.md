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
- Inventory shopping menu
- Setting for in-game item select
- Murderer killing player plays kill sound for everyone
- Glowing dropped bow

- Don't forget to remove team colours

- palace trapdoors may be an issue



Maybe
- Innocent tasks?
- Emergency Meeting / Voting mechanic?
- Innocent Tester?

Bugs:


Run the following command to lock every container:
/data merge block <x> <y> <z> {lock:{id:"minecraft:any",count:1,components:{"minecraft:custom_name":'"do_not_open_ever"'}}}

Same but for item frames:
execute as @e[type=item_frame,distance=..50] run data merge entity @s {Fixed:1b}



Gold dropping speeds for each map:
Skeld: 8-15 seconds
Airship: 6-12 seconds

gold spawning on roof:
170 -34 46




Adding future items in shop:
data modify storage mm:shop items append value {tag:"mm_shop_bandage",slot:1,itemId:"minecraft:paper",giveFunction:"mm:shop/give_bandage"}