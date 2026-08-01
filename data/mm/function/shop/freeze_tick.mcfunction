execute as @a[team=murderer] if score @s FreezeTimer matches 1.. run scoreboard players remove @s FreezeTimer 1
execute as @a[team=murderer] if score @s FreezeTimer matches 0 run scoreboard players set @s SwordAway 0
execute as @a[team=murderer] if score @s FreezeTimer matches 0 run scoreboard players set @s FreezeTimer -1