### プレイヤーをCurrentのマスに戻す

scoreboard players operation $X Coord = @s Coord
scoreboard players operation $X Coord /= #1000 Coord
scoreboard players operation $Z Coord = @s Coord
scoreboard players operation $Z Coord %= #1000 Coord

scoreboard players operation $PX Coord = $Piece Coord
scoreboard players operation $PX Coord /= #1000 Coord
scoreboard players operation $PZ Coord = $Piece Coord
scoreboard players operation $PZ Coord %= #1000 Coord

execute if score $X Coord < $PX Coord run tp @s ~3 ~ ~
execute if score $X Coord > $PX Coord run tp @s ~-3 ~ ~
execute if score $Z Coord < $PZ Coord run tp @s ~ ~ ~3
execute if score $Z Coord > $PZ Coord run tp @s ~ ~ ~-3
