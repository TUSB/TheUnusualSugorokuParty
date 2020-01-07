### 駒を合わせる

# 4 * 100
execute store result score _ X run data get entity 0-0-2-0-2 Pos[0] 400
execute store result score _ Z run data get entity 0-0-2-0-2 Pos[2] 400

execute store result entity @s Pos[0] double 0.01 run scoreboard players operation _ X += #Origin X
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation _ Z += #Origin Z
execute at @s run spreadplayers ~ ~ 0 1 false @s
execute store result entity @s Pos[0] double 0.01 run scoreboard players get _ X
execute store result entity @s Pos[2] double 0.01 run scoreboard players get _ Z

execute at @s rotated as 0-0-2-0-2 run tp @s ~ ~ ~ ~ ~

function piece:apply_offset

# アクティブ処理中の駒なら旗を同期する
execute if entity @s[tag=Piece,tag=Active] run tp @e[tag=PieceFlag,tag=Active,limit=1] @s
