### 極サイコロ使用時

execute at 0-0-1-0-1 as @e[tag=Dice,tag=!Active,tag=Undeterminated,sort=nearest,limit=1] run tag @s[tag=!Dice4] add Active

advancement revoke @s only book:ultra_dice
recipe take @s book:ultra_dice
title @a actionbar [{"text":"","color":"green","bold":true},{"selector":"@s"},"は極サイコロを使った。"]
