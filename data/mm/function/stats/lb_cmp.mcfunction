#Compare neighbouring entries and swap if lower one has higher score
$execute store result score #a lbtmp run data get storage mm:lb $(o)[$(i)].s
$execute store result score #b lbtmp run data get storage mm:lb $(o)[$(j)].s
$execute if score #b lbtmp > #a lbtmp run data modify storage mm:lb tmp set from storage mm:lb $(o)[$(i)]
$execute if score #b lbtmp > #a lbtmp run data modify storage mm:lb $(o)[$(i)] set from storage mm:lb $(o)[$(j)]
$execute if score #b lbtmp > #a lbtmp run data modify storage mm:lb $(o)[$(j)] set from storage mm:lb tmp