scoreboard players operation @s lastDeaths = @s deaths
gamemode spectator @s
tellraw @s {"text":"You died! Spectating until the round ends.","color":"red","italic":true}
say player died