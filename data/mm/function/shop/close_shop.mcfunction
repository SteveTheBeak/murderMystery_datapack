#Replace slots with air, with check to prevent item loss
execute if items entity @s inventory.0 minecraft:gold_ingot[minecraft:custom_data={mm_shop_gold:1b}] run item replace entity @s inventory.0 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air

