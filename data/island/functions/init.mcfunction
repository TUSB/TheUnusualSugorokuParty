### 初期化

data modify storage island:data Central set value {Center:[15,15],Start:[9,9],Goal:[13,11]}
data modify storage island:data Village set value {Center:[4,11],Start:[7,8]}
data modify storage island:data UnderGround set value {Center:[4,20],Start:[7,22]}
data modify storage island:data PirateShip set value {Center:[11,27],Start:[8,23]}
data modify storage island:data TableMountain set value {Center:[20,27],Start:[22,23]}
data modify storage island:data EnchantTable set value {Center:[27,20],Start:[23,22]}
data modify storage island:data Nether set value {Center:[27,11],Start:[23,8]}
data modify storage island:data TNT set value {Center:[20,4],Start:[22,7]}
data modify storage island:data Cloudia set value {Center:[11,4],Start:[8,7]}
# data modify storage island:data End set value {Center:[],Start:[11,11]}

summon minecraft:item 0 0 0 {Item:{id:"minecraft:iron_sword",Count:1b,tag:{}},Tags:[Island,Central],CustomName:"{\"text\":\"中央\"}"}
execute as @e[tag=Central] run data modify entity @s Item.tag merge from storage island:data Central
summon minecraft:item 0 0 0 {Item:{id:"minecraft:iron_sword",Count:1b,tag:{}},Tags:[Island,Village],CustomName:"{\"text\":\"交易島\"}"}
execute as @e[tag=Village] run data modify entity @s Item.tag merge from storage island:data Village
summon minecraft:item 0 0 0 {Item:{id:"minecraft:iron_sword",Count:1b,tag:{}},Tags:[Island,UnderGround],CustomName:"{\"text\":\"地下世界\"}"}
execute as @e[tag=UnderGround] run data modify entity @s Item.tag merge from storage island:data UnderGround
summon minecraft:item 0 0 0 {Item:{id:"minecraft:iron_sword",Count:1b,tag:{}},Tags:[Island,PirateShip],CustomName:"{\"text\":\"海賊船\"}"}
execute as @e[tag=PirateShip] run data modify entity @s Item.tag merge from storage island:data PirateShip
summon minecraft:item 0 0 0 {Item:{id:"minecraft:iron_sword",Count:1b,tag:{}},Tags:[Island,TableMountain],CustomName:"{\"text\":\"テーブルマウンテン\"}"}
execute as @e[tag=TableMountain] run data modify entity @s Item.tag merge from storage island:data TableMountain
summon minecraft:item 0 0 0 {Item:{id:"minecraft:iron_sword",Count:1b,tag:{}},Tags:[Island,EnchantTable],CustomName:"{\"text\":\"エンチャント島\"}"}
execute as @e[tag=EnchantTable] run data modify entity @s Item.tag merge from storage island:data EnchantTable
summon minecraft:item 0 0 0 {Item:{id:"minecraft:iron_sword",Count:1b,tag:{}},Tags:[Island,Nether],CustomName:"{\"text\":\"ネザー\"}"}
execute as @e[tag=Nether] run data modify entity @s Item.tag merge from storage island:data Nether
summon minecraft:item 0 0 0 {Item:{id:"minecraft:iron_sword",Count:1b,tag:{}},Tags:[Island,TNT],CustomName:"{\"text\":\"ＴＮＴ島\"}"}
execute as @e[tag=TNT] run data modify entity @s Item.tag merge from storage island:data TNT
summon minecraft:item 0 0 0 {Item:{id:"minecraft:iron_sword",Count:1b,tag:{}},Tags:[Island,Cloudia],CustomName:"{\"text\":\"クラウディア\"}"}
execute as @e[tag=Cloudia] run data modify entity @s Item.tag merge from storage island:data Cloudia

execute as @e[tag=Island] run data modify entity @s {} merge from storage template:item Base
execute as @e[tag=Island] run data modify entity @s CustomNameVisible set value true
execute as @e[tag=Island] store result entity @s Pos[0] double 1 run data get entity @s Item.tag.Center[0] 1
execute as @e[tag=Island] store result entity @s Pos[2] double 1 run data get entity @s Item.tag.Center[1] 1
execute as @e[tag=Central] at @s align xyz run tp @s ~0.5 ~ ~0.5 ~ ~
