### ターン開始

execute store result score $Current Piece run scoreboard players add $Current Turn 1
scoreboard players operation $Current Piece %= $Max Piece

tag @a[tag=Active] remove Active
execute as @a if score @s Piece = $Current Piece run tag @s add Active

tag @e[tag=Dice] remove Active
tag @e[tag=Dice] add Undeterminated
tag @e[tag=Dice1] add Active
tag @e[tag=Dice2] add Active
tag @e[tag=Dice3] add Active

scoreboard players reset @a Jump
schedule function dice:cast 1t
schedule function turn:poll_dice_cast 2t

