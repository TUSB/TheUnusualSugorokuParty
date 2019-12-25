### 初期化

team add Red
team add Green
team add Blue
team add Yellow
team modify Red color red
team modify Green color green
team modify Blue color blue
team modify Yellow color yellow

scoreboard objectives add X dummy {"text":"X(cm)"}
scoreboard objectives add Z dummy {"text":"Z(cm)"}
# scoreboard players set #Origin X -2050
# scoreboard players set #Origin Z -2050
scoreboard players set #Origin X -6150
scoreboard players set #Origin Z -108650

scoreboard objectives add Turn dummy
# 仮で定義
scoreboard players set $PieceCount Turn 4

summon minecraft:armor_stand 0 0 0 {Tags:[Piece],ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Team:Red}
summon minecraft:armor_stand 0 0 0 {Tags:[Piece],ArmorItems:[{},{},{},{id:"minecraft:green_banner",Count:1b}],Team:Green}
summon minecraft:armor_stand 0 0 0 {Tags:[Piece],ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Team:Blue}
summon minecraft:armor_stand 0 0 0 {Tags:[Piece],ArmorItems:[{},{},{},{id:"minecraft:yellow_banner",Count:1b}],Team:Yellow}

execute as @e[tag=Piece] run data modify entity @s {} merge from storage template:armor_stand Base
execute as @e[tag=Piece] run data modify entity @s CustomName set value "{\"text\":\"駒\"}"
