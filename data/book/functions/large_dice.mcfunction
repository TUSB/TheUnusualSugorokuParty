### 大サイコロ使用時

execute at 0-0-1-0-1 as @e[tag=Dice,tag=Active,tag=Undeterminated,sort=nearest,limit=1] run data modify entity @s Item.tag.Dices set from storage dice:types large.Dices

advancement revoke @s only book:large_dice
recipe take @s book:large_dice
title @a actionbar [{"text":"","color":"blue","bold":true},{"selector":"@s"},"は大サイコロを使った。"]
