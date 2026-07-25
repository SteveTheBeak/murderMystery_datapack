execute if score GoldTimer gold matches 1.. run scoreboard players remove GoldTimer gold 1
execute if score GoldTimer gold matches 0 run function mm:gold/spawn
#Drop gold every 8-15 seconds
execute if score GoldTimer gold matches 0 store result score GoldTimer gold run random value 160..300