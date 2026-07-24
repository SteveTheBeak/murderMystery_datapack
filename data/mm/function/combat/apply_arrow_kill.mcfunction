damage @s 1000 minecraft:generic

scoreboard players set @a[team=detective] BowCooldown 60
execute as @a[team=detective] run item replace entity @s hotbar.8 with air

#If detective kills innocent, apply penalty
execute if entity @s[team=innocent] run function mm:combat/apply_innocent_penalty
