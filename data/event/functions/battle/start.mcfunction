### 敵遭遇時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

# 出現させる敵を抽選する
function event:battle/lottery

scoreboard players set Title Times 0
function event:battle/title





### ここから未修正

# # 出現させるのはロールしてから
# execute at @e[tag=Piece,tag=Active,limit=1] positioned ^-1 ^ ^-1 run summon minecraft:item ~ ~5 ~ {Tags:[Treasure,EventEntity],Item:{id:"minecraft:emerald",Count:1b},PickupDelay:40s}
# execute as @e[tag=Treasure] run data modify entity @s {} merge from storage template:item Treasure
# execute as @e[tag=Treasure] run data modify entity @s Item set from storage treasure:pool Item
