#Set a brief cooldown so holding right-click doesn't spam-launch
#7 seconds
scoreboard players set @s MeleeCooldown 140
scoreboard players set @s ActiveCooldownMax 140

#Remove the sword from mainhand
item replace entity @s hotbar.1 with air
scoreboard players set @s SwordAway 1

#Capture the player's exact look direction
execute store result storage mm:temp yaw float 1 run data get entity @s Rotation[0] 1
execute store result storage mm:temp pitch float 1 run data get entity @s Rotation[1] 1

#Spawn the flying sword
execute at @s run function mm:throw_sword/spawn_projectile with storage mm:temp