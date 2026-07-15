scoreboard players set GameActive config 1

# Clear all teams
team empty murderer
team empty detective
team empty innocent

# Assign murderers using recursive function
scoreboard players operation #numMurderers config = MurdererCountLength config
function mm:assign_murderers
scoreboard players remove #numMurderers config 1
execute if score #numMurderers config matches 1.. run function mm:assign_murderers

# Assign detective (random player who isn't a murderer)
execute as @r[team=!murderer] run team join detective @s

# Assign everyone else to innocent
team join innocent @a[team=!murderer,team=!detective]

# Give items
execute as @a[team=murderer] run give @s minecraft:iron_sword{Damage:250, Enchantments:[{id:"minecraft:sharpness",lvl:255}]} 1
execute as @a[team=detective] run give @s compass
execute as @a[team=innocent] run give @s bread

gamerule pvp true

team modify murderer friendlyFire false
team modify innocent friendlyFire false

team modify murderer color red
team modify detective color blue
team modify innocent color green

scoreboard players set Countdown timer 101

execute as @e[type=text_display,tag=start_button_display,limit=1] run data merge entity @s {text:{text:"CANCEL GAME",color:"red",bold:true}}