#data modify storage mm:lbtext t set value ["",{text:"Leaderboard\n",color:"white",bold:true}]
data modify storage mm:lbtext t set value [""]
function mm:stats/lb_text {o:"WinsTotal",title:"Total Wins",color:"yellow"}
function mm:stats/lb_text {o:"WinsMurderer",title:"Murderer Wins",color:"red"}
function mm:stats/lb_text {o:"WinsDetective",title:"Detective Wins",color:"blue"}
data modify entity @e[type=text_display,tag=leaderboard_left,limit=1] text set from storage mm:lbtext t
#data modify storage mm:lbtext t set value ["",{text:"Leaderboard\n",color:"white",bold:true}]
data modify storage mm:lbtext t set value [""]
function mm:stats/lb_text {o:"WinsInnocent",title:"Innocent Wins",color:"green"}
function mm:stats/lb_text {o:"WinsJester",title:"Jester Wins",color:"light_purple"}
function mm:stats/lb_text {o:"GoldTotal",title:"Total Gold",color:"gold"}
data modify entity @e[type=text_display,tag=leaderboard_right,limit=1] text set from storage mm:lbtext t