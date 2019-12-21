### プレイヤーを駒のマスに呼ぶ

execute as @a[tag=Active] run tp @s @s
execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^1 ^-2 run tp @a[tag=Active] ~ ~ ~ ~ ~
gamemode adventure @a[tag=Active]
