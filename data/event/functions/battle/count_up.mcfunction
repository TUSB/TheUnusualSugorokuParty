### アイテムの各列の配置数を取得

execute store result score _ Count run data get storage battle:pool Slots[0] 1
execute if score _ Count matches 0..8 run scoreboard players add Top Count 1
execute if score _ Count matches 9..17 run scoreboard players add Center Count 1
execute if score _ Count matches 18..26 run scoreboard players add Bottom Count 1
data remove storage battle:pool Slots[0]

execute if data storage battle:pool Slots[0] run function event:battle/count_up
