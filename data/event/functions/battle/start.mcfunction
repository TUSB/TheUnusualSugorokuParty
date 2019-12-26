### 敵遭遇時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

# 出現させる敵を抽選する
function event:battle/lottery

# 演出開始
scoreboard players set Title Times 0
function event:battle/title
