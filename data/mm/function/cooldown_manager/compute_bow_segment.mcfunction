scoreboard players set @s DisplaySegment 10
scoreboard players operation @s TempCalc = @s BowCooldown
scoreboard players operation @s TempCalc *= Const10 const
scoreboard players operation @s TempCalc /= BowCooldownMax const
scoreboard players operation @s DisplaySegment -= @s TempCalc
function mm:cooldown_manager/display_bar