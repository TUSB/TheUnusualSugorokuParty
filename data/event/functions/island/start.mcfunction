### 島発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

execute as @a at @s run function sounds:island_found
title @a times 0 100 0
data modify storage team:message subtitle set value ["島を発見した！！"]
data modify storage team:message title set value '{"selector":"@e[tag=Island,tag=!Central,sort=nearest,limit=1]"}'
execute at 0-0-2-0-2 run function team:message

schedule function event:island/start_select 40t replace
