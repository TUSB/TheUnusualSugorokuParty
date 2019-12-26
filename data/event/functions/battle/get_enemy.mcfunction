### 当たりをストレージに入れる

execute if score Index Count matches 0 run data modify storage battle:pool Item set from storage battle:pool Items[0]
data remove storage battle:pool Items[0]
scoreboard players remove Index Count 1
execute if score Index Count matches 0.. run function event:battle/get_enemy
