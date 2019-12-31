### 特殊ダイス発見時

# ログ表示
say 勝利したのは @a[team=Active] ！！
scoreboard players operation $ClearTurn Turn = $Current Turn
scoreboard players operation $ClearTurn Turn /= $PieceCount Turn
scoreboard players add $ClearTurn Turn 1
tellraw @a ["記録: ",{"score":{"name":"$ClearTurn","objective":"Turn"}},"ターン"]

# 次のターンへ移動はキャンセル
schedule clear turn:start_next
function game:quit

# ゴール演出
execute as @a at @s run function sounds:goal
title @a times 0 600 0
execute unless entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"はゲームを攻略した！！"]
execute if entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"たちはゲームを攻略した！！"]
title @a title {"text":"おめでとう！","color":"green","bold":true}
