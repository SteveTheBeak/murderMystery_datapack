#Run as and at a player: capture their name as a string, then refresh them in each list
data remove storage mm:lb who.name
item replace entity @s enderchest.26 with minecraft:player_head
item modify entity @s enderchest.26 mm:fill_head
data modify storage mm:lb who.name set from entity @s EnderItems[{Slot:26b}].components."minecraft:profile".name
item replace entity @s enderchest.26 with minecraft:air
data modify storage mm:lb who.obj set value "WinsMurderer"
function mm:stats/lb_update with storage mm:lb who
data modify storage mm:lb who.obj set value "WinsDetective"
function mm:stats/lb_update with storage mm:lb who
data modify storage mm:lb who.obj set value "WinsInnocent"
function mm:stats/lb_update with storage mm:lb who
data modify storage mm:lb who.obj set value "WinsJester"
function mm:stats/lb_update with storage mm:lb who
data modify storage mm:lb who.obj set value "WinsTotal"
function mm:stats/lb_update with storage mm:lb who
data modify storage mm:lb who.obj set value "GoldTotal"
function mm:stats/lb_update with storage mm:lb who