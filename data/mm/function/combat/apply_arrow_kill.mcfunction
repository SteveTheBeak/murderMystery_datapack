damage @s 1000 minecraft:generic

scoreboard players set @a[team=detective] BowCooldown 60
execute as @a[team=detective] run item replace entity @s hotbar.8 with air

#If detective kills innocent, apply penalty
execute if entity @s[team=innocent] if entity @e[type=arrow,distance=..3,nbt={item:{components:{"minecraft:custom_data":{mm_arrow:1b}}}}] run function mm:combat/apply_innocent_penalty

#Shows if detective kills murderer
execute if entity @s[team=murderer] if entity @e[type=arrow,distance=..3,nbt={item:{components:{"minecraft:custom_data":{mm_arrow:1b}}}}] run tellraw @a[team=detective] {text:"You killed the murderer!",color:"red"}