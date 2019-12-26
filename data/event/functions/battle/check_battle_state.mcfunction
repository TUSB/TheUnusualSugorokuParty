### 戦闘の状況を確認する

# Enemyがいなければ終了
execute if entity @e[tag=Enemy,limit=1] run schedule function event:battle/check_battle_state 1t replace
execute unless entity @e[tag=Enemy,limit=1] run schedule function turn:start_next 1s replace

# プレイヤーが死んだら終了？

