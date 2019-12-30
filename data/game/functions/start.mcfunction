### 新しいゲームを開始する

team empty Active
team join Red @a[tag=Debugger,team=]

scoreboard players reset * InventoryID
execute as @a[team=!] store result score @s InventoryID run scoreboard players add _ InventoryID 1

# 手持ち保存
clear @a[team=!]
execute as @a[team=!] run function inventory:save

scoreboard players reset * Turn
# 仮定義
scoreboard players set $PieceCount Turn 4
scoreboard players set _ Turn -1
execute as @e[tag=Piece,sort=random] store result score @s Turn run scoreboard players add _ Turn 1

scoreboard players operation @e[team=Red] Turn = @e[tag=Piece,team=Red,limit=1] Turn
scoreboard players operation @e[team=Green] Turn = @e[tag=Piece,team=Green,limit=1] Turn
scoreboard players operation @e[team=Blue] Turn = @e[tag=Piece,team=Blue,limit=1] Turn
scoreboard players operation @e[team=Yellow] Turn = @e[tag=Piece,team=Yellow,limit=1] Turn

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
