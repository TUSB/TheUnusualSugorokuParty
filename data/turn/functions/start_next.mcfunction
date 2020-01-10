### ターン開始

# イベント処理残ってたら消す
function event:cancel

# 途中参加者を確認
function team:join_midway

# ターンを進める
execute as @e[tag=PiecePart,tag=!Unused] run function piece:ignore_offset
execute store result score $Piece Turn run scoreboard players add $Current Turn 1
scoreboard players operation $Piece Turn %= $PieceCount Turn
execute if score $Piece Turn matches 0 run time add 4000
execute as @e[tag=PiecePart,tag=!Unused] run function piece:apply_offset

# デバッグ用
scoreboard players operation @a[tag=Debugger] Turn = $Piece Turn

# リセット
team empty Active
tag @e[tag=Active] remove Active
effect clear @a
effect give @a minecraft:saturation 1 20

# 行動タグ付け
execute as @a if score @s Turn = $Piece Turn run team join Active @s
execute as @e[tag=PiecePart,tag=!Unused] if score @s Turn = $Piece Turn run tag @s add Active

# アイテムをチェックして必要なら巻き戻す
execute as @a[team=Active] run function inventory:check_rollback

# リーダー設定
scoreboard players set _ Leader 2147483647
scoreboard players operation _ Leader < @a[team=Active] Leader
execute as @a[team=Active] if score @s Leader = _ Leader store result score @s Leader run scoreboard players add @e[tag=Piece,tag=Active,limit=1] Leader 1
function piece:assign_leader

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
