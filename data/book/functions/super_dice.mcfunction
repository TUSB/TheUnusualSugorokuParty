### 超サイコロ使用時

execute at 0-0-1-0-1 as @e[tag=Dice,tag=!Active,tag=Undeterminated,sort=nearest,limit=1] run tag @s[tag=!Dice3,tag=!Dice4] add Active

advancement revoke @s only book:super_dice
recipe take @s book:super_dice
title @a actionbar [{"text":"","color":"blue","bold":true},{"selector":"@s"},"は超サイコロを使った。"]
