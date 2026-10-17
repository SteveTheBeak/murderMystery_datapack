#Players with no wins have no score yet, which would show blank, so create them at 0 first
scoreboard players add @a[tag=mm_stats_viewer] GamesPlayed 0
scoreboard players add @a[tag=mm_stats_viewer] WinsMurderer 0
scoreboard players add @a[tag=mm_stats_viewer] WinsDetective 0
scoreboard players add @a[tag=mm_stats_viewer] WinsInnocent 0
scoreboard players add @a[tag=mm_stats_viewer] WinsJester 0
scoreboard players add @a[tag=mm_stats_viewer] WinsTotal 0
scoreboard players add @a[tag=mm_stats_viewer] GoldTotal 0

data modify entity @e[type=text_display,tag=stats_display,limit=1] text set value ["",{selector:"@a[tag=mm_stats_viewer,limit=1]",color:"gold",bold:true},{text:"'s Stats\n",color:"gold",bold:true},{text:"Murderer wins: ",color:"red"},{score:{name:"@a[tag=mm_stats_viewer,limit=1]",objective:"WinsMurderer"},color:"white"},"\n",{text:"Detective wins: ",color:"blue"},{score:{name:"@a[tag=mm_stats_viewer,limit=1]",objective:"WinsDetective"},color:"white"},"\n",{text:"Innocent wins: ",color:"green"},{score:{name:"@a[tag=mm_stats_viewer,limit=1]",objective:"WinsInnocent"},color:"white"},"\n",{text:"Jester wins: ",color:"light_purple"},{score:{name:"@a[tag=mm_stats_viewer,limit=1]",objective:"WinsJester"},color:"white"},"\n",{text:"Total wins: ",color:"yellow",bold:true},{score:{name:"@a[tag=mm_stats_viewer,limit=1]",objective:"WinsTotal"},color:"white",bold:true},"\n",{text:"Games played: ",color:"aqua"},{score:{name:"@a[tag=mm_stats_viewer,limit=1]",objective:"GamesPlayed"},color:"white"},"\n",{text:"Total gold collected: ",color:"gold"},{score:{name:"@a[tag=mm_stats_viewer,limit=1]",objective:"GoldTotal"},color:"white"}]