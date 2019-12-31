### 勝利時

execute as @a at @s run function sounds:battle_win
title @a times 0 100 0
execute unless entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"は敵を退けた！！"]
execute if entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"たちは敵を退けた！！"]
title @a title {"text":"勝った！","color":"green","bold":true}

function event:timer/finish
schedule function turn:start_next 2s replace
