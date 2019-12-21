### 止まったマスの処理をする

execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^1 ^-2 run tp @a[tag=Active] ~ ~ ~ ~ ~
gamemode adventure @a[tag=Active]

# マスのイベントを確認する
execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^ ^-1 run function event:check_event
