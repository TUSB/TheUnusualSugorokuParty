### 丁サイコロ使用時

execute at 0-0-1-0-1 as @e[tag=Dice,tag=Active,tag=Undeterminated,sort=nearest,limit=1] run data modify entity @s Item.tag.Dices set from storage dice:types even.Dices

advancement revoke @s only book:even_dice
recipe take @s book:even_dice
title @a actionbar [{"text":"","color":"blue","bold":true},{"text":"","color":"green","bold":true},{"selector":"@s"},"は丁サイコロを使った。"]
