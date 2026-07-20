#GAME END SEQUENCE | PATH 4

say immediate end is called
execute run tellraw @a {"text":"PvP has been disabled.","color":"gray","italic":true}
execute run scoreboard players set PvpTimer pvptimer -1
scoreboard players set @a MurdererCooldown 0

team empty murderer
team empty detective
team empty innocent