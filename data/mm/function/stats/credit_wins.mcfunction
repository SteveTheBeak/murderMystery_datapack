#Called from mm:immediate_end. Conditions mirror the announced result, and exactly one branch fires
#Murderers win: a murderer is alive and nobody else is
execute if entity @a[team=murderer] unless entity @a[team=innocent] unless entity @a[team=detective] run function mm:stats/credit_murderers
#Innocents win: no murderer left, or time ran out with innocents and/or the detective alive
execute unless entity @a[team=murderer] run function mm:stats/credit_innocents
execute if entity @a[team=murderer] if entity @a[team=innocent] run function mm:stats/credit_innocents
execute if entity @a[team=murderer] unless entity @a[team=innocent] if entity @a[team=detective] run function mm:stats/credit_innocents