### 戦闘の状況を確認する

# Enemyがいなければ終了
execute if entity @e[tag=Enemy,limit=1] run schedule function event:battle/check_battle_state 1t replace
execute unless entity @e[tag=Enemy,limit=1] if score $Timer Count matches 0.. run function event:battle/on_win
execute unless entity @e[tag=Enemy,limit=1] unless score $Timer Count matches 0.. run function game:on_death
