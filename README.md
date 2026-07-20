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
- Spectator logic for dead players
- Murderers can't kill each other
- Setting for in-game item select
- Work on cooldowns
- Add bodies on ground after kill
- Players dont drop items when killed
- Don't forget to remove team colours

Maybe
- Innocent tasks?
- Emergency Meeting / Voting mechanic?
- Innocent Tester?

Bugs
- Detective gets sword when kills murderer