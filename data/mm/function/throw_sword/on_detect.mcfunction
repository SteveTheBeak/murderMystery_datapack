advancement revoke @s only mm:throw_sword/detect
execute unless score @s MeleeCooldown matches 1.. if items entity @s hotbar.1 minecraft:iron_sword run function mm:throw_sword/launch