### 勝利時

execute as @a at @s run function sounds:battle_win
title @a times 0 100 0
data modify storage team:message subtitle set value ["強敵を退けた！！"]
data modify storage team:message title set value '{"text":"勝った！","color":"green","bold":true}'
function team:message

function event:timer/finish
schedule function turn:start_next 2s replace
