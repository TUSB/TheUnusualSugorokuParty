### ターン終了

# ターンを進めておく
execute store result score $Piece Turn run scoreboard players add $Current Turn 1
scoreboard players operation $Piece Turn %= $PieceCount Turn
execute as @e[tag=Piece] run function piece:set_position
