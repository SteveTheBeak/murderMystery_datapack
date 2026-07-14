data remove entity @s interaction
playsound minecraft:ui.button.click block @a ~ ~ ~ 1 1.2
scoreboard players operation OldState temp = GameActive config
execute if score OldState temp matches 0 run function mm:try_start_game
execute if score OldState temp matches 1 run function mm:cancel_game