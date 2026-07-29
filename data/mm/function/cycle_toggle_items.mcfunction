#TOGGLE SHOP ITEMS | PATH 1.5

data remove entity @s interaction
execute at @s run playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2

#Common
execute if entity @s[tag=shop_invisibility] store result score TempCalc temp run scoreboard players get shop_invisibility config
execute if entity @s[tag=shop_invisibility] if score TempCalc temp matches 1 run scoreboard players set shop_invisibility config 0
execute if entity @s[tag=shop_invisibility] if score TempCalc temp matches 0 run scoreboard players set shop_invisibility config 1


#Innocent
execute if entity @s[tag=shop_innocent_speed] store result score TempCalc temp run scoreboard players get shop_innocent_speed config
execute if entity @s[tag=shop_innocent_speed] if score TempCalc temp matches 1 run scoreboard players set shop_innocent_speed config 0
execute if entity @s[tag=shop_innocent_speed] if score TempCalc temp matches 0 run scoreboard players set shop_innocent_speed config 1

execute if entity @s[tag=shop_innocent_bow] store result score TempCalc temp run scoreboard players get shop_innocent_bow config
execute if entity @s[tag=shop_innocent_bow] if score TempCalc temp matches 1 run scoreboard players set shop_innocent_bow config 0
execute if entity @s[tag=shop_innocent_bow] if score TempCalc temp matches 0 run scoreboard players set shop_innocent_bow config 1

execute if entity @s[tag=shop_innocent_extralife] store result score TempCalc temp run scoreboard players get shop_innocent_extralife config
execute if entity @s[tag=shop_innocent_extralife] if score TempCalc temp matches 1 run scoreboard players set shop_innocent_extralife config 0
execute if entity @s[tag=shop_innocent_extralife] if score TempCalc temp matches 0 run scoreboard players set shop_innocent_extralife config 1


#Detective
execute if entity @s[tag=shop_detective_glow] store result score TempCalc temp run scoreboard players get shop_detective_glow config
execute if entity @s[tag=shop_detective_glow] if score TempCalc temp matches 1 run scoreboard players set shop_detective_glow config 0
execute if entity @s[tag=shop_detective_glow] if score TempCalc temp matches 0 run scoreboard players set shop_detective_glow config 1

execute if entity @s[tag=shop_detective_freeze] store result score TempCalc temp run scoreboard players get shop_detective_freeze config
execute if entity @s[tag=shop_detective_freeze] if score TempCalc temp matches 1 run scoreboard players set shop_detective_freeze config 0
execute if entity @s[tag=shop_detective_freeze] if score TempCalc temp matches 0 run scoreboard players set shop_detective_freeze config 1

execute if entity @s[tag=shop_detective_extralife] store result score TempCalc temp run scoreboard players get shop_detective_extralife config
execute if entity @s[tag=shop_detective_extralife] if score TempCalc temp matches 1 run scoreboard players set shop_detective_extralife config 0
execute if entity @s[tag=shop_detective_extralife] if score TempCalc temp matches 0 run scoreboard players set shop_detective_extralife config 1


#Murderer
execute if entity @s[tag=shop_murderer_darkness] store result score TempCalc temp run scoreboard players get shop_murderer_darkness config
execute if entity @s[tag=shop_murderer_darkness] if score TempCalc temp matches 1 run scoreboard players set shop_murderer_darkness config 0
execute if entity @s[tag=shop_murderer_darkness] if score TempCalc temp matches 0 run scoreboard players set shop_murderer_darkness config 1

execute if entity @s[tag=shop_murderer_glow] store result score TempCalc temp run scoreboard players get shop_murderer_glow config
execute if entity @s[tag=shop_murderer_glow] if score TempCalc temp matches 1 run scoreboard players set shop_murderer_glow config 0
execute if entity @s[tag=shop_murderer_glow] if score TempCalc temp matches 0 run scoreboard players set shop_murderer_glow config 1

execute if entity @s[tag=shop_murderer_rocket] store result score TempCalc temp run scoreboard players get shop_murderer_rocket config
execute if entity @s[tag=shop_murderer_rocket] if score TempCalc temp matches 1 run scoreboard players set shop_murderer_rocket config 0
execute if entity @s[tag=shop_murderer_rocket] if score TempCalc temp matches 0 run scoreboard players set shop_murderer_rocket config 1


function mm:toggle_items