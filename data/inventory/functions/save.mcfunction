### 手持ちを保存

data modify storage inventory:data Inventory set from entity @s Inventory
data modify storage inventory:data Class set value {Head:{},Chest:{},Legs:{},Feet:{},Offhand:{},Hotbar:[],Inventory:[]}
function inventory:classify

# カーソル移動
execute store result entity 0-0-4-0-4 Pos[1] double 1 run scoreboard players get @s InventoryID

# セーブ
execute at 0-0-4-0-4 unless block ~ ~ ~ minecraft:jukebox run setblock ~ ~ ~ minecraft:jukebox replace
execute at 0-0-4-0-4 run data modify block ~ ~ ~ RecordItem set value {id:"minecraft:stone",Count:1b,tag:{Class:{}}}
execute at 0-0-4-0-4 run data modify block ~ ~ ~ RecordItem.tag.Class set from storage inventory:data Class
