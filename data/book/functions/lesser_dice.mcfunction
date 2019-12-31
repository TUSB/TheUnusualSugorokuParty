### 下サイコロ使用時

execute at 0-0-1-0-1 as @e[tag=Dice,tag=Active,tag=Undeterminated,sort=nearest,limit=1] run data modify entity @s Item.tag.Dices set from storage dice:types lesser.Dices

advancement revoke @s only book:lesser_dice
recipe take @s book:lesser_dice
title @a actionbar [{"text":"","color":"blue","bold":true},{"selector":"@s"},"は下サイコロを使った。"]
