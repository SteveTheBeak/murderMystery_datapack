advancement revoke @s only mm:throw_sword/melee_hit

#Only counts if the attacker is actually holding the throwable sword, and only against a nearby player (the one they just hit)
execute if items entity @s weapon.mainhand *[minecraft:custom_data={mm_throw:1b}] at @s as @a[distance=..3,tag=!mm_attacker] run execute store result score @s HurtCheck run data get entity @s HurtTime
execute if items entity @s weapon.mainhand *[minecraft:custom_data={mm_throw:1b}] at @s as @a[distance=..3,tag=!mm_attacker,scores={HurtCheck=1..},sort=nearest,limit=1] run function mm:throw_sword/on_hit