### 敵が湧いた時

# 敵にEntityタグ付ける
# ずぼら処理
execute at 0-0-3-0-3 as @e[distance=..30,team=!Dummy,type=!minecraft:player,type=!minecraft:armor_stand] run data merge entity @s {Tags:[Enemy,EventEntity],Invulnerable:false,CustomNameVisible:true}

# 敵を散開
execute at 0-0-3-0-3 run spreadplayers ~ ~ 0 8 false @e[tag=Enemy]

# スポナーを戻す
tp 0-0-3-0-3 0 0 0

# 制限時間スタート
function event:timer/reset
function event:timer/clock

# 戦闘状態監視
schedule function event:battle/check_battle_state 1t replace
