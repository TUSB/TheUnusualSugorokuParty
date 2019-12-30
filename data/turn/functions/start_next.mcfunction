### ターン開始

# ターンを進める
execute as @e[tag=Piece] run function piece:ignore_offset
execute as @e[tag=PieceFlag] run function piece:ignore_offset
execute store result score $Piece Turn run scoreboard players add $Current Turn 1
scoreboard players operation $Piece Turn %= $PieceCount Turn
execute as @e[tag=Piece] run function piece:apply_offset
execute as @e[tag=PieceFlag] run function piece:apply_offset

# デバッグ用
scoreboard players operation @a[tag=Debugger] Turn = $Piece Turn

# リセット
execute as @a[scores={Death=1..}] run function inventory:load
scoreboard players reset @a Death
tag @e[tag=Active] remove Active
effect clear @a
effect give @a minecraft:saturation 1 20

# 行動タグ付け
execute as @a if score @s Turn = $Piece Turn run tag @s add Active
execute as @e[tag=Piece] if score @s Turn = $Piece Turn run tag @s add Active
execute as @e[tag=PieceFlag] if score @s Turn = $Piece Turn run tag @s add Active

# 駒光らせる
execute as @e[tag=Piece] run data merge entity @s {Glowing:false}
execute as @e[tag=Piece,tag=Active] run data merge entity @s {Glowing:true}

# 行動プレイヤーの設定
gamemode spectator @a[tag=!Active]
function piece:call_player

tag @e[tag=Dice] add Undeterminated
tag @e[tag=Dice1] add Active
# tag @e[tag=Dice2] add Active

scoreboard players reset @a Jump
schedule function dice:cast 1t replace
schedule function turn:before_move 2t replace
