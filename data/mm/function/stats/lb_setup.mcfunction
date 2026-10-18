data modify storage mm:lb WinsMurderer set value [{n:"-",s:0},{n:"-",s:0},{n:"-",s:0},{n:"-",s:0},{n:"-",s:0}]
data modify storage mm:lb WinsDetective set from storage mm:lb WinsMurderer
data modify storage mm:lb WinsInnocent set from storage mm:lb WinsMurderer
data modify storage mm:lb WinsJester set from storage mm:lb WinsMurderer
data modify storage mm:lb WinsTotal set from storage mm:lb WinsMurderer
data modify storage mm:lb GoldTotal set from storage mm:lb WinsMurderer
function mm:stats/lb_render