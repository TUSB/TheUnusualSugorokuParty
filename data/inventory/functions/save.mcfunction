### 手持ちを保存

# カーソル移動
execute store result entity 0-0-4-0-4 Pos[0] double 1 run scoreboard players get @s InventoryID

execute at 0-0-4-0-4 unless block ~ ~ ~ minecraft:jukebox run setblock ~ ~ ~ minecraft:jukebox replace
execute at 0-0-4-0-4 run data modify block ~ ~ ~ RecordItem set value {id:"minecraft:stone",Count:1b,tag:{Inventory:[]}}
execute at 0-0-4-0-4 run data modify block ~ ~ ~ RecordItem.tag.Inventory set from entity @s Inventory
