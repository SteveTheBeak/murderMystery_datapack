#KILL COOLDOWN MANAGER | PATH 5
execute as @a[team=murderer] if score @s MeleeCooldown matches 1.. run scoreboard players remove @s MeleeCooldown 1
execute as @a[team=murderer] if score @s MeleeCooldown matches 0 run function mm:throw_sword/give_throwable
execute as @a[team=murderer] if score @s MeleeCooldown matches 0 run scoreboard players set @s MeleeCooldown -1

execute as @a[team=detective] if score @s BowCooldown matches 1.. run scoreboard players remove @s BowCooldown 1
execute as @a[team=detective] if score @s BowCooldown matches 0 run scoreboard players set @s BowCooldown -1

function mm:cooldown_manager/display_melee
function mm:cooldown_manager/display_bow

function mm:cooldown_manager/enforce_weapon