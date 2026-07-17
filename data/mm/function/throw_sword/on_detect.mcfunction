advancement revoke @s only mm:throw_sword/detect

execute unless score @s ThrowCooldown matches 1.. if items entity @s weapon.mainhand minecraft:iron_sword run function mm:throw_sword/launch