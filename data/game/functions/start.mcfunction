### 新しいゲームを開始する

scoreboard players set $Current Turn -1
execute as @e[tag=Piece,sort=random] store result score @s Turn run scoreboard players add $Current Turn 1
scoreboard players set $Current Turn 0
scoreboard players set $Piece Turn 0

scoreboard players operation @e[tag=Piece] Coord = $Start Coord
execute as @e[tag=Piece] run function piece:set_position
