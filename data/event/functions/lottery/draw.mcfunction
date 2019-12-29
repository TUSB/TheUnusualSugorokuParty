### イベントデータからの抽選
### lottery:pool Item <- lottery:pool Items[x]

# ３ランクに分ける
data modify storage lottery:pool Normals set value []
data modify storage lottery:pool Rares set value []
data modify storage lottery:pool Legends set value []
function event:lottery/rank

# ランク別集計
execute store result score $Normals Count run data get storage lottery:pool Normals
execute store result score $Rares Count run data get storage lottery:pool Rares
execute store result score $Legends Count run data get storage lottery:pool Legends

# 抽選
scoreboard players operation $WeightSum Count = $Normals Count
scoreboard players operation $WeightSum Count += $WeightSum Count
scoreboard players operation $WeightSum Count += $Rares Count
scoreboard players operation $WeightSum Count += $WeightSum Count
scoreboard players operation $WeightSum Count += $Legends Count

execute store result score $Index Count run function random:score/next
scoreboard players operation $Index Count %= $WeightSum Count

execute if score $Index Count < Legends Count run function event:lottery/take/legend
scoreboard players operation $Index Count -= $Legends Count
scoreboard players operation $Index Count /= #2 Count
execute if score $Index Count < Rares Count if score $Index Count matches 0.. run function event:lottery/take/rare
scoreboard players operation $Index Count -= $Rares Count
scoreboard players operation $Index Count /= #2 Count
execute if score $Index Count < Normals Count if score $Index Count matches 0.. run function event:lottery/take/normal
