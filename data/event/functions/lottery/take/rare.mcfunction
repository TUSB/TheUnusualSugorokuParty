### 当たりをストレージに入れる

execute if score $Index Count matches 0 run data modify storage lottery:pool Item set from storage lottery:pool Rares[0]
data remove storage lottery:pool Rares[0]
scoreboard players remove $Index Count 1
execute if score $Index Count matches 0.. run function event:lottery/take/rare
