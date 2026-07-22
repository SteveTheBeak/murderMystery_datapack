#GAME END SEQUENCE | PATH 4

execute run tellraw @a {"text":"Game over!","color":"gray","italic":true}
execute run scoreboard players set PvpTimer pvptimer -1

gamemode adventure @a
tp @a -44.0 -57.5 26.0 facing -44.0 -57.5 24.0

team empty murderer
team empty detective
team empty innocent

clear @a
kill @e[tag=dead_body]
kill @e[tag=mm_detective_pickup]