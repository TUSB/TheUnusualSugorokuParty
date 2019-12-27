### 段で3rankに分ける

execute store result score _ Count run data get storage lottery:pool Items[0].Slot 1

execute if score _ Count matches 0..8 run data modify storage lottery:pool Normals append from storage lottery:pool Items[0]
execute if score _ Count matches 9..17 run data modify storage lottery:pool Rares append from storage lottery:pool Items[0]
execute if score _ Count matches 18..26 run data modify storage lottery:pool Legends append from storage lottery:pool Items[0]
data remove storage lottery:pool Items[0]

execute if data storage lottery:pool Items[0] run function event:lottery/rank
