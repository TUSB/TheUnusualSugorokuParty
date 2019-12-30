### ターン開始

# スライム系残ったの消す
execute as @e[type=minecraft:slime,tag=!Enemy] at @s run tp @s ~ -100 ~
execute as @e[type=minecraft:magma_cube,tag=!Enemy] at @s run tp @s ~ -100 ~

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
team empty Active
tag @e[tag=Active] remove Active
effect clear @a
effect give @a minecraft:saturation 1 20

# 行動タグ付け
execute as @a if score @s Turn = $Piece Turn run team join Active @s
execute as @e[tag=Piece] if score @s Turn = $Piece Turn run tag @s add Active
execute as @e[tag=PieceFlag] if score @s Turn = $Piece Turn run tag @s add Active

# リーダー設定
scoreboard players set _ Leader -2147483648
scoreboard players operation _ Leader > @a[team=Active] Leader
execute as @a[team=Active] if score @s Leader = _ Leader run scoreboard players operation @s Leader = _ InventoryID
scoreboard players set _ Turn -2147483648
scoreboard players operation _ Turn > @a[team=Active] Leader
scoreboard players operation * Leader -= _ Turn
effect give @a[team=Active,scores={Leader=0}] minecraft:glowing 300 0 true

# 駒光らせる
execute as @e[tag=Piece] run data merge entity @s {Glowing:false}
execute as @e[tag=Piece,tag=Active] run data merge entity @s {Glowing:true}

# 行動プレイヤーの設定
gamemode spectator @a
function piece:call_player
execute as @a[gamemode=spectator] at @s positioned as @a[team=Active,gamemode=!spectator,limit=1] run tp @s ^ ^ ^-7
execute as @a[team=Active] at @s run function sounds:my_turn
tag @e[tag=Dice] add Undeterminated
tag @e[tag=Dice1] add Active
# tag @e[tag=Dice2] add Active

scoreboard players reset @a Jump
schedule function dice:cast 1t replace
schedule function turn:before_move 2t replace
