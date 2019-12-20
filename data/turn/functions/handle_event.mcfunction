### 止まったマスの処理をする

execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^1 ^-2 run tp @a[tag=Active] ~ ~ ~ ~ ~
gamemode adventure @a[tag=Active]

schedule function turn:after_move 2t replace
