$execute unless score $(name) $(obj) matches 1.. run return 0
$data remove storage mm:lb $(obj)[{n:"$(name)"}]
$data modify storage mm:lb $(obj) append value {n:"$(name)",s:0}
$execute store result storage mm:lb $(obj)[-1].s int 1 run scoreboard players get $(name) $(obj)
$function mm:stats/lb_cmp {o:"$(obj)",i:4,j:5}
$function mm:stats/lb_cmp {o:"$(obj)",i:3,j:4}
$function mm:stats/lb_cmp {o:"$(obj)",i:2,j:3}
$function mm:stats/lb_cmp {o:"$(obj)",i:1,j:2}
$function mm:stats/lb_cmp {o:"$(obj)",i:0,j:1}
$data remove storage mm:lb $(obj)[5]