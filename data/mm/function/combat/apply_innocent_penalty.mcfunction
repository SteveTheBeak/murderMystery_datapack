scoreboard players add @a[team=detective] InnocentHits 1

execute as @a[team=detective] if score @s InnocentHits matches 1 run effect give @s minecraft:blindness 15 0 true
execute as @a[team=detective] if score @s InnocentHits matches 1 run tellraw @s {"text":"You killed an innocent!","color":"red"}

execute as @a[team=detective] if score @s InnocentHits matches 2 run effect give @s minecraft:blindness 15 0 true
execute as @a[team=detective] if score @s InnocentHits matches 2 run effect give @s minecraft:slowness 15 5 true
#Prevent jumping
execute as @a[team=detective] if score @s InnocentHits matches 2 run effect give @s minecraft:jump_boost 15 250 true 
execute as @a[team=detective] if score @s InnocentHits matches 2 run tellraw @s {"text":"You killed another innocent!","color":"red"}

execute as @a[team=detective] if score @s InnocentHits matches 3.. run damage @s 1000 minecraft:generic
execute as @a[team=detective] if score @s InnocentHits matches 3.. run tellraw @s {"text":"You killed three innocents!","color":"red"}