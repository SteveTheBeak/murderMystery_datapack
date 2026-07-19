tag @s add mm_attacker
execute at @s as @a[distance=..3,tag=!mm_attacker,sort=nearest,limit=1] run damage @s 1000 minecraft:generic
tag @s remove mm_attacker

#Start this attacker's cooldown
scoreboard players set @s MeleeCooldown 100

#Cosmetic: swap to a harmless, zero-damage-guaranteed sword during cooldown
item replace entity @s weapon.mainhand with minecraft:iron_sword[minecraft:attribute_modifiers=[{id:"mm:zero_damage",type:"attack_damage",amount:0,operation:"add_value",slot:"mainhand"}],minecraft:custom_data={mm_fake:1b}]