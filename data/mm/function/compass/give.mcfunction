#Macro function: needs x, y, z, dim
$item replace entity @s hotbar.7 with minecraft:compass[minecraft:custom_data={mm_compass:1b},minecraft:custom_name={"text":"Tracker","color":"red","italic":false},minecraft:lodestone_tracker={target:{pos:[I;$(x),$(y),$(z)],dimension:"$(dim)"},tracked:false}]
