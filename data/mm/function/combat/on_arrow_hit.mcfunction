advancement revoke @s only mm:combat/arrow_hit
execute unless entity @a[team=detective,scores={BowCooldown=1..}] run function mm:combat/apply_arrow_kill