### 敵出現タイトル表示

title @s times 6 10 6
execute as @a at @s run function sounds:battle_outbreak
execute unless entity @a[tag=Active,tag=!Leader] run title @a subtitle [{"selector":"@a[tag=Active,tag=Leader,limit=1]"},"は敵に見つかった！！"]
execute if entity @a[tag=Active,tag=!Leader] run title @a subtitle [{"selector":"@a[tag=Active,tag=Leader,limit=1]"},"たちは敵に見つかった！！"]
title @a title {"text":"いい感じのタイトル","color":"gold"}

scoreboard players add Title Times 1
execute if score Title Times matches ..2 run schedule function event:battle/title 20t replace
execute if score Title Times matches 3.. run schedule function event:battle/encount_roll 20t replace
