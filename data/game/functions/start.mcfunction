### 新しいゲームを開始する

# HP表示正常化
effect give @a minecraft:absorption 1 0 true

# チーム分け待ち解除
schedule clear game:wait_grouping
scoreboard objectives setdisplay sidebar

team empty Active
team join Red @a[tag=Debugger]

scoreboard players reset * InventoryID
execute as @a[team=!] store result score @s InventoryID run scoreboard players add _ InventoryID 1

# 手持ち保存
clear @a[team=!]
execute as @a[team=!] run function inventory:save

scoreboard players reset * Turn
scoreboard players set $PieceCount Turn -1
execute if entity @a[team=Red] store result score @e[tag=Red,tag=Piece,limit=1] Turn run scoreboard players add $PieceCount Turn 1
team join Green @a[tag=Debugger]
execute if entity @a[team=Green] store result score @e[tag=Green,tag=Piece,limit=1] Turn run scoreboard players add $PieceCount Turn 1
team join Blue @a[tag=Debugger]
execute if entity @a[team=Blue] store result score @e[tag=Blue,tag=Piece,limit=1] Turn run scoreboard players add $PieceCount Turn 1
team join Yellow @a[tag=Debugger]
execute if entity @a[team=Yellow] store result score @e[tag=Yellow,tag=Piece,limit=1] Turn run scoreboard players add $PieceCount Turn 1
scoreboard players add $PieceCount Turn 1

scoreboard players operation @a[team=Red] Turn = @e[tag=Piece,tag=Red,limit=1] Turn
scoreboard players operation @a[team=Green] Turn = @e[tag=Piece,tag=Green,limit=1] Turn
scoreboard players operation @a[team=Blue] Turn = @e[tag=Piece,tag=Blue,limit=1] Turn
scoreboard players operation @a[team=Yellow] Turn = @e[tag=Piece,tag=Yellow,limit=1] Turn
scoreboard players operation @e[tag=PieceFlag,tag=Red,limit=1] Turn = @e[tag=Piece,tag=Red,limit=1] Turn
scoreboard players operation @e[tag=PieceFlag,tag=Green,limit=1] Turn = @e[tag=Piece,tag=Green,limit=1] Turn
scoreboard players operation @e[tag=PieceFlag,tag=Blue,limit=1] Turn = @e[tag=Piece,tag=Blue,limit=1] Turn
scoreboard players operation @e[tag=PieceFlag,tag=Yellow,limit=1] Turn = @e[tag=Piece,tag=Yellow,limit=1] Turn

execute as @e[tag=Island,tag=Central,limit=1] run function island:set_start
execute as @e[tag=Piece] run function piece:set_location
execute as @e[tag=PieceFlag] run function piece:set_location

# リスポーン地点設定
execute as @e[tag=Piece,scores={Turn=0},limit=1] at @s positioned ^-1 ^ ^-3 run tp @a[team=!] ~ ~ ~
execute as @a[team=!] at @s run spawnpoint @s ~ ~ ~

# リーダー順決定
scoreboard players reset * Leader
scoreboard players set _ Leader 0
execute as @a[team=Red] store result score @s Leader run scoreboard players add _ Leader 1
scoreboard players set _ Leader 0
execute as @a[team=Green] store result score @s Leader run scoreboard players add _ Leader 1
scoreboard players set _ Leader 0
execute as @a[team=Blue] store result score @s Leader run scoreboard players add _ Leader 1
scoreboard players set _ Leader 0
execute as @a[team=Yellow] store result score @s Leader run scoreboard players add _ Leader 1

# 死亡処理監視
schedule function game:observe_death 2t replace

scoreboard players set $Current Turn -1
function turn:start_next
