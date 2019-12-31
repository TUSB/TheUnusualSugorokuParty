### 普通のサイコロにリセット

execute as @e[tag=Dice] run data modify entity @s Item.tag.Dices set from storage dice:types normal.Dices
tag @e[tag=Dice] remove Active
tag @e[tag=Dice] add Undeterminated
tag @e[tag=Dice1] add Active
