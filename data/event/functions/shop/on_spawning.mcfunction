### 商人が湧いた時

# 商人を散開
execute at 0-0-3-0-3 run spreadplayers ~ ~ 0 8 false @e[tag=Staff]

# スポナーを戻す
tp 0-0-3-0-3 0 0 0

# 制限時間スタート
function event:timer/reset
function event:timer/clock

# 商人状態監視
schedule function event:shop/check_shop_state 1t replace
