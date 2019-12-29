### 商人が湧いた時

# スポナーを戻す
tp 0-0-3-0-3 0 0 0

# 制限時間スタート
function event:timer/reset
function event:timer/clock

# 商人状態監視
schedule function event:shop/check_shop_state 1t replace
