### 新しいゲームを開始する

# HP表示正常化
effect give @a minecraft:absorption 1 0 true
effect give @a minecraft:instant_health 1 10 true

# チーム分け待ち解除
schedule clear game:wait_grouping
scoreboard objectives setdisplay sidebar

team empty Active

scoreboard players reset * Turn
scoreboard players set $PieceCount Turn -1
team join Red @a[tag=Debugger]
execute if entity @a[team=Red] store result score @e[tag=Red,tag=Piece,limit=1] Turn run scoreboard players add $PieceCount Turn 1
team join Green @a[tag=Debugger]
execute if entity @a[team=Green] store result score @e[tag=Green,tag=Piece,limit=1] Turn run scoreboard players add $PieceCount Turn 1
team join Blue @a[tag=Debugger]
execute if entity @a[team=Blue] store result score @e[tag=Blue,tag=Piece,limit=1] Turn run scoreboard players add $PieceCount Turn 1
team join Yellow @a[tag=Debugger]
execute if entity @a[team=Yellow] store result score @e[tag=Yellow,tag=Piece,limit=1] Turn run scoreboard players add $PieceCount Turn 1
scoreboard players add $PieceCount Turn 1

execute as @e[tag=Piece] if score @s Turn = @s Turn run tag @s remove Unused

scoreboard players operation @a[team=Red] Turn = @e[tag=Piece,tag=Red,limit=1] Turn
scoreboard players operation @a[team=Green] Turn = @e[tag=Piece,tag=Green,limit=1] Turn
scoreboard players operation @a[team=Blue] Turn = @e[tag=Piece,tag=Blue,limit=1] Turn
scoreboard players operation @a[team=Yellow] Turn = @e[tag=Piece,tag=Yellow,limit=1] Turn
scoreboard players operation @e[tag=PieceFlag,tag=Red,limit=1] Turn = @e[tag=Piece,tag=Red,limit=1] Turn
scoreboard players operation @e[tag=PieceFlag,tag=Green,limit=1] Turn = @e[tag=Piece,tag=Green,limit=1] Turn
scoreboard players operation @e[tag=PieceFlag,tag=Blue,limit=1] Turn = @e[tag=Piece,tag=Blue,limit=1] Turn
scoreboard players operation @e[tag=PieceFlag,tag=Yellow,limit=1] Turn = @e[tag=Piece,tag=Yellow,limit=1] Turn

# チーム情報を初期化する
function team:initialize

execute as @e[tag=Island,tag=Central,limit=1] run function island:set_start
execute as @e[tag=PiecePart] run function piece:set_location

# リスポーン地点設定
execute as @e[tag=Piece,scores={Turn=0},limit=1] at @s positioned ^-1 ^ ^-3 run tp @a[team=!] ~ ~ ~
execute as @a[team=!] at @s run spawnpoint @s ~ ~ ~

scoreboard players set $Current Turn -1
function turn:start_next
