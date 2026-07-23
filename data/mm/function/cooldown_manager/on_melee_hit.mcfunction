advancement revoke @s only mm:cooldown_manager/melee_hit

#Only proceed if the attacker is a murderer and isn't already on cooldown
execute if entity @s[team=murderer] unless score @s MeleeCooldown matches 1.. run function mm:cooldown_manager/apply_melee_kill