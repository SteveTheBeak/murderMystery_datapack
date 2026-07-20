scoreboard players set @s DisplaySegment 10
scoreboard players operation @s TempCalc = @s MeleeCooldown
scoreboard players operation @s TempCalc *= Const10 const
scoreboard players operation @s TempCalc /= @s ActiveCooldownMax
scoreboard players operation @s DisplaySegment -= @s TempCalc
function mm:cooldown_manager/display_bar