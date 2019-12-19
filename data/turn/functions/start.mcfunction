### ターン開始

# 行動タグ付け
tag @a[tag=Active] remove Active
execute as @a if score @s Turn = $Piece Turn run tag @s add Active
tag @e[tag=Piece] remove Active
execute as @e[tag=Piece] if score @s Turn = $Piece Turn run tag @s add Active

# 行動プレイヤーの設定
gamemode spectator @a[tag=!Active]
gamemode adventure @a[tag=Active]
execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^1 ^-2 run tp @a[tag=Active] ~ ~ ~ ~ ~

tag @e[tag=Dice] remove Active
tag @e[tag=Dice] add Undeterminated
tag @e[tag=Dice1] add Active
tag @e[tag=Dice2] add Active
tag @e[tag=Dice3] add Active

scoreboard players reset @a Jump
schedule function dice:cast 1t
schedule function turn:wait_roll_end 2t
