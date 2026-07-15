execute as @r run team join murderer @s
execute as @r[team=!murderer] run team join detective @s
team join innocent @a[team=!murderer,team=!detective]
execute as @a[team=murderer] run give @s iron_sword
execute as @a[team=detective] run give @s compass
execute as @a[team=innocent] run give @s bread
gamerule pvp true