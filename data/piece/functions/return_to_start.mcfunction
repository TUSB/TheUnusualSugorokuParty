### 拠点に戻る

function island:set_start

scoreboard players set $Sum Dice 0

title @a times 0 100 0
function sounds:return_to_home
execute unless entity @a[team=Active,tag=!Leader] run title @a subtitle ["",{"selector":"@a[team=Active,tag=Leader,limit=1]"},"は無事に拠点に戻った！！"]
execute if entity @a[team=Active,tag=!Leader] run title @a subtitle ["",{"selector":"@a[team=Active,tag=Leader,limit=1]"},"たちは無事に拠点に戻った！！"]
title @a title {"text":"やったー！","color":"green","bold":true}

execute as @a[team=Active] run function inventory:save
