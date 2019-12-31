### エンドポータル発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

title @a times 0 100 0
execute unless entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"はエンドポータルを発見した！！"]
execute if entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"たちはエンドポータルを発見した！！"]
execute at 0-0-2-0-2 run title @a title [{"selector":"@e[tag=Island,tag=Central,sort=nearest,limit=1]"}]

# 演出開始
scoreboard players set $Title Times 0
function event:end_portal/title
