### ポインターを合わせる

execute store result score _ X run data get entity @s Pos[0] 100
execute store result score _ Z run data get entity @s Pos[2] 100

# 0.25 * 0.01
execute store result entity 0-0-2-0-2 Pos[0] double 0.0025 run scoreboard players operation _ X -= #Origin X
execute store result entity 0-0-2-0-2 Pos[2] double 0.0025 run scoreboard players operation _ Z -= #Origin Z

function piece:adjust_pointer
