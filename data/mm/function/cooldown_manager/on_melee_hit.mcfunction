advancement revoke @s only mm:cooldown_manager/melee_hit

#Only proceed if this attacker isn't already on cooldown
execute unless score @s MeleeCooldown matches 1.. run function mm:cooldown_manager/apply_melee_kill