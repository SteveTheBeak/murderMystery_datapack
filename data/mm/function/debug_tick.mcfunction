#DEBUG SETTINGS | PATH 2

execute if score DebugMode config matches 1 run title @a actionbar [{"text":"Countdown: "},{"score":{"name":"Countdown","objective":"timer"}},{"text":" | PvP: "},{"score":{"name":"PvpTimer","objective":"pvptimer"}}]
#execute if score DebugMode config matches 1 run title @a actionbar [{"text":"Countdown: "},{"score":{"name":"Countdown","objective":"timer"}},{"text":" | Height Checks: "},{"score":{"name":"HeightCheckCount","objective":"config"}}]