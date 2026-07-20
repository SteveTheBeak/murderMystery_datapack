#DEBUG SETTINGS | PATH 2

#execute if score DebugMode config matches 1 run title @a actionbar [{"text":"Countdown: "},{"score":{"name":"Countdown","objective":"timer"}},{"text":" | PvP: "},{"score":{"name":"PvpTimer","objective":"pvptimer"}}]
#execute if score DebugMode config matches 1 run title @a actionbar [{"text":"Countdown: "},{"score":{"name":"Countdown","objective":"timer"}},{"text":" | Height Checks: "},{"score":{"name":"HeightCheckCount","objective":"config"}}]
execute as @a[team=murderer] if score DebugMode config matches 1 run title @s actionbar [{"text":"MC:"},{"score":{"name":"@s","objective":"MeleeCooldown"}},{"text":" DS:"},{"score":{"name":"@s","objective":"DisplaySegment"}}]
execute as @a[team=detective] if score DebugMode config matches 1 run title @s actionbar [{"text":"BC:"},{"score":{"name":"@s","objective":"BowCooldown"}},{"text":" DS:"},{"score":{"name":"@s","objective":"DisplaySegment"}}]