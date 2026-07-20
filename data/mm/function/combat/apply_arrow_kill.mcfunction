damage @s 1000 minecraft:generic

scoreboard players set @a[team=detective] BowCooldown 60
execute as @a[team=detective] run item replace entity @s hotbar.8 with air