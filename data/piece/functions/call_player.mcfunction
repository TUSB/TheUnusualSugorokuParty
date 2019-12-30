### プレイヤーを駒のマスに呼ぶ

execute as @a[team=Active] run tp @s @s
execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^1 ^-2 run tp @a[team=Active] ~ ~ ~ ~ ~
gamemode adventure @a[team=Active]
