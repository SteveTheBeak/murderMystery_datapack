kill @e[tag=mm_detective_pickup,distance=..3,limit=1,sort=nearest]
team join detective @s
scoreboard players set @s BowCooldown -1
function mm:combat/give_detective
tellraw @a {"text":"Someone picked up the bow!","color":"gold","bold":true}