### 駒を進める

scoreboard players operation $X Coord = @s Coord
scoreboard players operation $X Coord /= #1000 Coord
scoreboard players operation $Z Coord = @s Coord
scoreboard players operation $Z Coord %= #1000 Coord

scoreboard players operation $X Coord *= #400 Coord
scoreboard players operation $Z Coord *= #400 Coord
scoreboard players operation $X Coord += $OriginX Coord
scoreboard players operation $Z Coord += $OriginZ Coord

execute as @e[tag=Piece,tag=Active] store result entity @s Pos[0] double 0.01 run scoreboard players add $X Coord 200
execute as @e[tag=Piece,tag=Active] store result entity @s Pos[2] double 0.01 run scoreboard players add $Z Coord 200

execute as @a[tag=Active] run scoreboard players operation @s LastCoord = @s Coord

function dice:reduce_one
