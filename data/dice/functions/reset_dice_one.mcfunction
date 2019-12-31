### １のサイコロにリセット

execute as @a at @s run function sounds:dice_curse
execute as @e[tag=Dice] run data modify entity @s Item.tag.Dices set from storage dice:types one.Dices
tag @e[tag=Dice] remove Active
tag @e[tag=Dice] add Undeterminated
tag @e[tag=Dice1] add Active
