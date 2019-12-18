

execute store result score $X Coord run data get entity @s Pos[0] 100
execute store result score $Z Coord run data get entity @s Pos[2] 100

scoreboard players operation $X Coord -= $OriginX Coord
scoreboard players operation $Z Coord -= $OriginZ Coord

execute store result score _ Coord run scoreboard players operation $X Coord /= #400 Coord
scoreboard players operation $Z Coord /= #400 Coord
scoreboard players operation _ Coord *= #1000 Coord
scoreboard players operation _ Coord += $Z Coord
