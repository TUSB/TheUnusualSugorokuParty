### 進む時

execute at 0-0-2-0-2 as @e[tag=Island,tag=Central,sort=nearest,limit=1] run function island:set_start
execute as @e[tag=Piece,tag=Active,limit=1] run function piece:set_location
execute as @e[tag=PieceFlag,tag=Active,limit=1] run function piece:set_location
execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^1 ^-2 run tp @a[team=Active] ~ ~ ~ ~ ~
execute as @a at @s run function sounds:go_to_island
