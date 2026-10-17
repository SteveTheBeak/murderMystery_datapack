#JESTER WIN | called from mm:immediate_end
title @a title {"text":"Jester Wins!","color":"light_purple","bold":true}
title @a subtitle [{"text":"The Jester Was: ","color":"gold"},{"selector":"@a[tag=mm_was_jester]","color":"light_purple","bold":true}]
tellraw @a {"text":"The detective shot the jester, and the jester won!","color":"light_purple"}
tellraw @a [{"text":"Murderers: ","color":"red"},{"selector":"@a[tag=mm_was_murderer]","color":"red"}]
execute at @a run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 3 0.6

scoreboard players add @a[tag=mm_was_jester] WinsJester 1
scoreboard players add @a[tag=mm_was_jester] WinsTotal 1