### 超サイコロ使用時

execute at 0-0-1-0-1 as @e[tag=Dice,tag=Active,tag=Undeterminated,sort=nearest,limit=1] run data modify entity @s Item.tag.Dices set from storage dice:types super.Dices

advancement revoke @s only book:super_dice
recipe take @s book:super_dice
title @a actionbar [{"text":"","color":"green","bold":true},{"selector":"@s"},"は超サイコロを使った。"]
