$data modify storage mm:lbtext t append value {text:"$(title)\n",color:"$(color)",bold:true}
data modify storage mm:lbtext t append value {text:"1. "}
$function mm:stats/lb_row with storage mm:lb $(o)[0]
data modify storage mm:lbtext t append value {text:"2. "}
$function mm:stats/lb_row with storage mm:lb $(o)[1]
data modify storage mm:lbtext t append value {text:"3. "}
$function mm:stats/lb_row with storage mm:lb $(o)[2]
data modify storage mm:lbtext t append value {text:"4. "}
$function mm:stats/lb_row with storage mm:lb $(o)[3]
data modify storage mm:lbtext t append value {text:"5. "}
$function mm:stats/lb_row with storage mm:lb $(o)[4]
data modify storage mm:lbtext t append value {text:"\n"}