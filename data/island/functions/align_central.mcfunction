### 中央にコマを並べる

execute as @e[tag=Island,tag=Central,limit=1] store result entity 0-0-2-0-2 Pos[0] double 1 run data get entity @s Item.tag.Center[0] 1
execute as @e[tag=Island,tag=Central,limit=1] store result entity 0-0-2-0-2 Pos[2] double 1 run data get entity @s Item.tag.Center[1] 1
scoreboard players set $PieceCount Turn 4
scoreboard players set $Piece Turn 0
scoreboard players set @e[team=Red,tag=Piece] Turn 0
scoreboard players set @e[team=Green,tag=Piece] Turn 1
scoreboard players set @e[team=Blue,tag=Piece] Turn 2
scoreboard players set @e[team=Yellow,tag=Piece] Turn 3
execute as @e[tag=Piece] run function piece:set_location
execute as @e[tag=Piece] at @s facing entity @e[tag=Piece,sort=furthest,limit=1] feet run tp @s ^ ^ ^-3 ~ ~
tp @e[tag=PieceFlag,team=Red,limit=1] @e[tag=Piece,team=Red,limit=1]
tp @e[tag=PieceFlag,team=Green,limit=1] @e[tag=Piece,team=Green,limit=1]
tp @e[tag=PieceFlag,team=Blue,limit=1] @e[tag=Piece,team=Blue,limit=1]
tp @e[tag=PieceFlag,team=Yellow,limit=1] @e[tag=Piece,team=Yellow,limit=1]
