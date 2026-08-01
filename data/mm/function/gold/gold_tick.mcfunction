execute if score GoldTimer gold matches 1.. run scoreboard players remove GoldTimer gold 1
execute if score GoldTimer gold matches 0 run function mm:gold/spawn
#Drop gold every 4-8 seconds
#execute if score GoldTimer gold matches 0 store result score GoldTimer gold run random value 80..160
execute if score GoldTimer gold matches 0 store result score GoldTimer gold run random value 40..100

#Release the armor stand once its gold has been collected, so it's eligible again
execute unless entity @e[tag=mm_gold] run tag @e[tag=gold_active] remove gold_active