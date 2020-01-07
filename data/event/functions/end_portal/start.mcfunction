### エンドポータル発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

title @a times 0 100 0
data modify storage team:message subtitle set value ["エンドポータルを発見した！！"]
data modify storage team:message title set value '{"selector":"@e[tag=Island,tag=Central,sort=nearest,limit=1]"}'
execute at 0-0-2-0-2 run function team:message

# 演出開始
scoreboard players set $Title Times 0
function event:end_portal/title
