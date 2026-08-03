execute if score GoldTimer gold matches 1.. run scoreboard players remove GoldTimer gold 1
execute if score GoldTimer gold matches 0 run function mm:gold/spawn

#Each map has custom gold drop rate
#Skeld - Drop gold every 2-4 seconds
execute if score MapSelectIndex config matches 0 if score GoldTimer gold matches 0 store result score GoldTimer gold run random value 40..80
#Airship - Drop gold every 1-3 seconds
execute if score MapSelectIndex config matches 1 if score GoldTimer gold matches 0 store result score GoldTimer gold run random value 20..60
#Palace - Drop gold every 0.5-2 seconds
execute if score MapSelectIndex config matches 2 if score GoldTimer gold matches 0 store result score GoldTimer gold run random value 10..40
#Cruise - Drop gold every 1-3 seconds
execute if score MapSelectIndex config matches 3 if score GoldTimer gold matches 0 store result score GoldTimer gold run random value 20..60
#Museum - Drop gold every 1-2 seconds
execute if score MapSelectIndex config matches 4 if score GoldTimer gold matches 0 store result score GoldTimer gold run random value 20..40
#Backrooms - Drop gold every 0.25-1 seconds
execute if score MapSelectIndex config matches 5 if score GoldTimer gold matches 0 store result score GoldTimer gold run random value 5..20
#Underwater Base - Drop gold every 4-6 seconds
execute if score MapSelectIndex config matches 6 if score GoldTimer gold matches 0 store result score GoldTimer gold run random value 80..120

#Release the armor stand once its gold has been collected, so it's eligible again
execute unless entity @e[tag=mm_gold] run tag @e[tag=gold_active] remove gold_active