### 敵出現タイトル表示

title @s times 11 20 11
execute as @a at @s run function sounds:battle_outbreak
execute unless entity @a[tag=Active,tag=!Leader] run title @a subtitle [{"selector":"@a[tag=Active,tag=Leader,limit=1]"},"は敵に見つかった！！"]
execute if entity @a[tag=Active,tag=!Leader] run title @a subtitle [{"selector":"@a[tag=Active,tag=Leader,limit=1]"},"たちは敵に見つかった！！"]
title @a title {"text":"いい感じのタイトル","color":"gold"}

scoreboard players add Title Times 1
execute if score Title Times matches ..3 run schedule function event:battle/title 40t replace

