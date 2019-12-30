### 戦闘の状況を確認する

# スライム系残ったの消す
execute as @e[type=minecraft:slime,tag=!Enemy] at @s run tp @s ~ -100 ~
execute as @e[type=minecraft:magma_cube,tag=!Enemy] at @s run tp @s ~ -100 ~
# 奈落に行った敵倒す
execute as @e[tag=Enemy] at @s positioned ~ -15 ~ if entity @s[distance=..15] run kill @s
execute at 0-0-1-0-1 as @e[distance=..6,tag=Dice1,limit=1] store result score @s Dice if entity @e[tag=Enemy]
execute at 0-0-1-0-1 as @e[distance=..6,tag=Dice1,limit=1] run function dice:sync_name
function dice:subtitle_side

# Enemyがいなければ終了
execute if entity @e[tag=Enemy,limit=1] run schedule function event:battle/check_battle_state 1t replace
execute unless entity @e[tag=Enemy,limit=1] if score $Timer Count matches 0.. run function event:battle/on_win
execute unless entity @e[tag=Enemy,limit=1] unless score $Timer Count matches 0.. run function game:on_death
