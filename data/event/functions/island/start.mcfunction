### 島発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

execute as @a at @s run function sounds:island_found
title @a times 0 100 0
execute unless entity @a[team=Active,tag=!Leader] run title @a subtitle ["",{"selector":"@a[team=Active,tag=Leader,limit=1]"},"は島を発見した！！"]
execute if entity @a[team=Active,tag=!Leader] run title @a subtitle ["",{"selector":"@a[team=Active,tag=Leader,limit=1]"},"たちは島を発見した！！"]
execute at 0-0-2-0-2 run title @a title [{"selector":"@e[tag=Island,tag=!Central,sort=nearest,limit=1]"}]

schedule function event:island/start_select 40t replace
