### ターン開始

# イベント処理残ってたら消す
function event:cancel

# ターンを進める
execute as @e[tag=Piece] run function piece:ignore_offset
execute as @e[tag=PieceFlag] run function piece:ignore_offset
execute store result score $Piece Turn run scoreboard players add $Current Turn 1
scoreboard players operation $Piece Turn %= $PieceCount Turn
execute if score $Piece Turn matches 0 run time add 4000
execute as @e[tag=Piece] run function piece:apply_offset
execute as @e[tag=PieceFlag] run function piece:apply_offset

# デバッグ用
scoreboard players operation @a[tag=Debugger] Turn = $Piece Turn

# リセット
team empty Active
tag @e[tag=Active] remove Active
effect clear @a
effect give @a minecraft:saturation 1 20

# 行動タグ付け
execute as @a if score @s Turn = $Piece Turn run team join Active @s
execute as @e[tag=Piece] if score @s Turn = $Piece Turn run tag @s add Active
execute as @e[tag=PieceFlag] if score @s Turn = $Piece Turn run tag @s add Active

# アイテムをチェックして必要なら巻き戻す
execute as @a[team=Active] run function inventory:check_rollback

# リーダー設定
scoreboard players set _ Leader 2147483647
scoreboard players operation _ Leader < @a[team=Active] Leader
execute as @a[team=Active] if score @s Leader = _ Leader run scoreboard players operation @s Leader = _ InventoryID
scoreboard players set _ Turn 2147483647
scoreboard players operation _ Turn < @a[team=Active] Leader
scoreboard players operation * Leader -= _ Turn
tag @a[team=Active,scores={Leader=0},limit=1] add Leader
scoreboard players add @a[team=Active,tag=!Leader] Leader 1
tag @a[tag=Leader] remove Leader
effect give @a[team=Active,scores={Leader=0}] minecraft:glowing 300 0 true

# 駒光らせる
execute as @e[tag=Piece] run data merge entity @s {Glowing:false}
execute as @e[tag=Piece,tag=Active] run data merge entity @s {Glowing:true}

# 行動プレイヤーの設定
gamemode spectator @a
function piece:call_player
execute as @a[gamemode=spectator] at @s positioned as @a[team=Active,gamemode=!spectator,limit=1] run tp @s ^ ^ ^-7
execute as @a[team=Active] at @s run function sounds:my_turn

# サイコロリセット
function dice:reset_dice

# エンドだった場合の処理
execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^ ^-1 if block ~ ~ ~ minecraft:redstone_block run function dice:reset_dice_one

scoreboard players reset @a Jump
schedule function dice:cast 1t replace
schedule function turn:before_move 2t replace

execute unless entity @a[team=Active] run function turn:pass
