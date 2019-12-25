### 当たりをストレージに入れる

execute if score Index Count matches 0 run data modify storage treasure:pool Item set from storage treasure:pool Items[0]
data remove storage treasure:pool Items[0]
scoreboard players remove Index Count 1
execute if score Index Count matches 0.. run function event:treasure/get_item
