#Tag whoever is closest to the stats display, within 5 blocks
tag @a remove mm_stats_viewer
execute as @e[type=text_display,tag=stats_display,limit=1] at @s run tag @p[distance=..5] add mm_stats_viewer

execute if entity @a[tag=mm_stats_viewer] run function mm:stats/show_player
execute unless entity @a[tag=mm_stats_viewer] run data modify entity @e[type=text_display,tag=stats_display,limit=1] text set value [{text:"Personal Stats\n",color:"gold",bold:true},{text:"Step closer to see yours",color:"gray"}]