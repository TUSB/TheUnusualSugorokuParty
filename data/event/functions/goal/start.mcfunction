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
data modify storage team:message subtitle set value ["ゲームを攻略した！！"]
data modify storage team:message title set value '{"text":"おめでとう！","color":"green","bold":true}'
function team:message
