### 商人の状況を確認する

# Enemyがいなければ終了
execute if entity @e[tag=Staff,limit=1] run schedule function event:shop/check_shop_state 1t replace
execute unless entity @e[tag=Staff,limit=1] run schedule function turn:start_next 1s replace

# プレイヤーが死んだら終了？

