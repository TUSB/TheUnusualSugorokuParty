### 初期化

team add Red
team add Green
team add Blue
team add Yellow
team modify Red color red
team modify Green color green
team modify Blue color blue
team modify Yellow color yellow

# scoreboard objectives add Piece dummy {"text":"駒"}
scoreboard objectives add Coord dummy {"text":"座標 1000X + Z"}
scoreboard players set $Start Coord 9009
scoreboard players set $OriginX Coord -2050
scoreboard players set $OriginZ Coord -2050
scoreboard players set #400 Coord 400
scoreboard players set #1000 Coord 1000

scoreboard objectives add Turn dummy
# 仮で定義
scoreboard players set $PieceCount Turn 4

summon minecraft:armor_stand 0 0 0 {Tags:[Piece],ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Team:Red}
summon minecraft:armor_stand 0 0 0 {Tags:[Piece],ArmorItems:[{},{},{},{id:"minecraft:green_banner",Count:1b}],Team:Green}
summon minecraft:armor_stand 0 0 0 {Tags:[Piece],ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Team:Blue}
summon minecraft:armor_stand 0 0 0 {Tags:[Piece],ArmorItems:[{},{},{},{id:"minecraft:yellow_banner",Count:1b}],Team:Yellow}

execute as @e[tag=Piece] run data modify entity @s {} merge from storage template:armor_stand Base
