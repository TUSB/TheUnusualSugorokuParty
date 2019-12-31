### 極サイコロ使用時

execute at 0-0-1-0-1 as @e[tag=Dice,tag=Active,tag=Undeterminated,sort=nearest,limit=1] run data modify entity @s Item.tag.Dices set from storage dice:types ultra.Dices

advancement revoke @s only book:ultra_dice
recipe take @s book:ultra_dice
title @a actionbar [{"text":"","color":"green","bold":true},{"selector":"@s"},"は極サイコロを使った。"]
