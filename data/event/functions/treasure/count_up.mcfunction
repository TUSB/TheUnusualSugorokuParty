### アイテムの各列の配置数を取得

execute store result score _ Count run data get storage treasure:pool Slots[0] 1
execute if score _ Count matches 0..8 run scoreboard players add Top Count 1
execute if score _ Count matches 9..17 run scoreboard players add Center Count 1
execute if score _ Count matches 18..26 run scoreboard players add Bottom Count 1
data remove storage treasure:pool Slots[0]

execute if data storage treasure:pool Slots[0] run function event:treasure/count_up
