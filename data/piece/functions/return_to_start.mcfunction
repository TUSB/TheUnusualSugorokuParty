### 拠点に戻る

function island:set_start

scoreboard players set $Sum Dice 0

title @a times 0 100 0
execute as @a at @s run function sounds:battle_outbreak
execute unless entity @a[tag=Active,tag=!Leader] run title @a subtitle ["",{"selector":"@a[tag=Active,tag=Leader,limit=1]"},"は無事に拠点に戻った！！"]
execute if entity @a[tag=Active,tag=!Leader] run title @a subtitle ["",{"selector":"@a[tag=Active,tag=Leader,limit=1]"},"たちは無事に拠点に戻った！！"]
title @a title {"text":"やったー！","color":"green","bold":true}

execute as @a run function inventory:save
