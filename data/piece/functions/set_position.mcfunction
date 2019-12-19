### 位置を設定する

scoreboard players operation $X Coord = @s Coord
scoreboard players operation $X Coord /= #1000 Coord
scoreboard players operation $Z Coord = @s Coord
scoreboard players operation $Z Coord %= #1000 Coord

execute store result entity 0-0-2-0-2 Pos[0] double 1 run scoreboard players get $X Coord
execute store result entity 0-0-2-0-2 Pos[2] double 1 run scoreboard players get $Z Coord
execute at 0-0-2-0-2 if block ~0.5 0 ~0.5 minecraft:magenta_glazed_terracotta[facing=north] at @s run tp @s ~ ~ ~ 0 0
execute at 0-0-2-0-2 if block ~0.5 0 ~0.5 minecraft:magenta_glazed_terracotta[facing=east] at @s run tp @s ~ ~ ~ 90 0
execute at 0-0-2-0-2 if block ~0.5 0 ~0.5 minecraft:magenta_glazed_terracotta[facing=south] at @s run tp @s ~ ~ ~ 180 0
execute at 0-0-2-0-2 if block ~0.5 0 ~0.5 minecraft:magenta_glazed_terracotta[facing=west] at @s run tp @s ~ ~ ~ 270 0
tp 0-0-2-0-2 0 0 0

scoreboard players operation $X Coord *= #400 Coord
scoreboard players operation $Z Coord *= #400 Coord
scoreboard players operation $X Coord += $OriginX Coord
scoreboard players operation $Z Coord += $OriginZ Coord

execute store result entity @s Pos[0] double 0.01 run scoreboard players add $X Coord 200
execute store result entity @s Pos[2] double 0.01 run scoreboard players add $Z Coord 200
execute at @s run spreadplayers ~ ~ 0 1 false @s
execute store result entity @s Pos[0] double 0.01 run scoreboard players get $X Coord
execute store result entity @s Pos[2] double 0.01 run scoreboard players get $Z Coord

scoreboard players operation _ Turn = $PieceCount Turn
scoreboard players operation _ Turn += @s Turn
scoreboard players operation _ Turn -= $Piece Turn
scoreboard players operation _ Turn %= $PieceCount Turn
execute if score _ Turn matches 0 at @s run tp @s ^1 ^ ^1
execute if score _ Turn matches 1 at @s run tp @s ^-1 ^ ^1
execute if score _ Turn matches 2 at @s run tp @s ^1 ^ ^-1
execute if score _ Turn matches 3 at @s run tp @s ^-1 ^ ^-1
