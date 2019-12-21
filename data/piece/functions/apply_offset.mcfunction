### ターンによる位置補正

scoreboard players operation _ Turn = $PieceCount Turn
scoreboard players operation _ Turn += @s Turn
scoreboard players operation _ Turn -= $Piece Turn
scoreboard players operation _ Turn %= $PieceCount Turn
execute if score _ Turn matches 0 at @s run tp @s ^1 ^ ^1
execute if score _ Turn matches 1 at @s run tp @s ^-1 ^ ^1
execute if score _ Turn matches 2 at @s run tp @s ^1 ^ ^-1
execute if score _ Turn matches 3 at @s run tp @s ^-1 ^ ^-1
execute at @s if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-1 ~
