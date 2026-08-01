execute as @a[scores={DecoyTimer=1..}] run scoreboard players remove @s DecoyTimer 1
execute as @a[scores={DecoyTimer=0}] at @s run kill @e[tag=mm_decoy,sort=nearest,limit=1]
execute as @a[scores={DecoyTimer=0}] run scoreboard players set @s DecoyTimer -1
function mm:shop/decoy_follow