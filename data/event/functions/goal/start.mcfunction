### 特殊ダイス発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next
function game:quit

# ゴール演出
# execute as @a at @s run function sounds:dice_found
title @a times 0 100 0
execute unless entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"はゲームを攻略した！！"]
execute if entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"たちはゲームを攻略した！！"]
title @a title {"text":"クリア","color":"green","bold":true}
