#Runs as + at each living murderer, every tick, during the last 5 minutes

#First time this round: tell them about the compass
execute unless entity @s[tag=mm_compass_given] run function mm:compass/announce

#If the compass got swapped out of hotbar.7 (drag / hotkey), put whatever landed in hotbar.7 back where the compass now is
execute if items entity @s hotbar.0 minecraft:compass[minecraft:custom_data={mm_compass:1b}] unless items entity @s hotbar.7 minecraft:compass[minecraft:custom_data={mm_compass:1b}] run item replace entity @s hotbar.0 from entity @s hotbar.7
execute if items entity @s hotbar.1 minecraft:compass[minecraft:custom_data={mm_compass:1b}] unless items entity @s hotbar.7 minecraft:compass[minecraft:custom_data={mm_compass:1b}] run item replace entity @s hotbar.1 from entity @s hotbar.7
execute if items entity @s hotbar.2 minecraft:compass[minecraft:custom_data={mm_compass:1b}] unless items entity @s hotbar.7 minecraft:compass[minecraft:custom_data={mm_compass:1b}] run item replace entity @s hotbar.2 from entity @s hotbar.7
execute if items entity @s hotbar.3 minecraft:compass[minecraft:custom_data={mm_compass:1b}] unless items entity @s hotbar.7 minecraft:compass[minecraft:custom_data={mm_compass:1b}] run item replace entity @s hotbar.3 from entity @s hotbar.7
execute if items entity @s hotbar.4 minecraft:compass[minecraft:custom_data={mm_compass:1b}] unless items entity @s hotbar.7 minecraft:compass[minecraft:custom_data={mm_compass:1b}] run item replace entity @s hotbar.4 from entity @s hotbar.7
execute if items entity @s hotbar.5 minecraft:compass[minecraft:custom_data={mm_compass:1b}] unless items entity @s hotbar.7 minecraft:compass[minecraft:custom_data={mm_compass:1b}] run item replace entity @s hotbar.5 from entity @s hotbar.7
execute if items entity @s hotbar.6 minecraft:compass[minecraft:custom_data={mm_compass:1b}] unless items entity @s hotbar.7 minecraft:compass[minecraft:custom_data={mm_compass:1b}] run item replace entity @s hotbar.6 from entity @s hotbar.7
execute if items entity @s hotbar.8 minecraft:compass[minecraft:custom_data={mm_compass:1b}] unless items entity @s hotbar.7 minecraft:compass[minecraft:custom_data={mm_compass:1b}] run item replace entity @s hotbar.8 from entity @s hotbar.7

#Compass missing from hotbar.7 (first give, dropped, moved): restore it right away
execute unless items entity @s hotbar.7 minecraft:compass[minecraft:custom_data={mm_compass:1b}] run function mm:compass/update

#Re-aim every 10 ticks (0.5s)
scoreboard players operation #compass temp = PvpTimer pvptimer
scoreboard players operation #compass temp %= Const10 const
execute if score #compass temp matches 0 run function mm:compass/update
