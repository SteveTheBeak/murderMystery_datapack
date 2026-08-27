execute store result storage mm:temp x int 1 run scoreboard players get @s DeathX
execute store result storage mm:temp y int 1 run scoreboard players get @s DeathY
execute store result storage mm:temp z int 1 run scoreboard players get @s DeathZ
function mm:death_manager/enforce_position_tp with storage mm:temp