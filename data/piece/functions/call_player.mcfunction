### プレイヤーを駒のマスに呼ぶ

# 付近のアイテム消す
execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^ ^-1 run kill @e[distance=..5,type=minecraft:item]

execute as @a[team=Active] run tp @s @s
execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^1 ^-2 run tp @a[team=Active] ~ ~ ~ ~ ~
gamemode adventure @a[team=Active]

# 死亡監視開始
schedule function game:observe_death 2t replace
