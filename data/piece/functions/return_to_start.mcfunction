### 拠点に戻る

execute as @e[tag=Island,tag=Central,limit=1] run function island:set_start

scoreboard players set $Sum Dice 0

title @a times 0 100 0
function sounds:return_to_home

data modify storage team:message subtitle set value ["無事に拠点に戻った！！"]
data modify storage team:message title set value '{"text":"やったー！","color":"green","bold":true}'
function team:message

execute as @a[team=Active] run function inventory:save
