### 死亡時

schedule clear dice:cast
function event:cancel
execute as @a at @s run function sounds:eliminated
title @a times 0 100 0
data modify storage team:message prefix set value ["次の"]
data modify storage team:message subtitle set value ["きっとうまくやってくれるでしょう"]
data modify storage team:message title set value '{"text":"全滅","color":"red","bold":true}'
function team:message

# 現在のチームの全員から生存フラグを消す
function inventory:remove_alive

team empty Active
execute as @e[tag=Island,tag=Central,limit=1] run function island:set_start
execute as @e[tag=Piece,tag=Active,limit=1] run function piece:set_location

schedule function turn:start_next 2s replace
