### 敵が湧いた時

# 敵にEntityタグ付ける
execute at 0-0-3-0-3 run tag @e[team=!Dummy,type=!minecraft:player,type=!minecraft:armor_stand] add Enemy

# スポナーを戻す
tp 0-0-3-0-3 0 0 0

# 制限時間スタート
function event:timer/reset
function event:timer/clock

# 戦闘状態監視
schedule function event:battle/check_battle_state 1t replace
