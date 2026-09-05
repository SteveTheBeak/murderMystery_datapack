advancement revoke @s only mm:shop/spyglass_detect

#Consume the spyglass
clear @s minecraft:spyglass[minecraft:custom_data={mm_shop_detective_glow_real:1b}]

#Make 3 random innocents glow for 5 seconds
effect give @a[team=innocent,sort=random,limit=3] minecraft:glowing 5 0 true

tellraw @a {"text":"3 random innocents are glowing!","color":"aqua"}
playsound minecraft:block.beacon.activate player @s