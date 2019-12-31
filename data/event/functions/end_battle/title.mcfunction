### 敵出現タイトル表示

title @a times 6 10 6
execute as @a at @s run function sounds:battle_outbreak
execute unless entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"は強敵に見つかった！！"]
execute if entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"たちは強敵に見つかった！！"]
title @a title {"text":"やばい！","color":"gold","bold":true}

scoreboard players add $Title Times 1
execute if score $Title Times matches ..2 run schedule function event:end_battle/title 20t replace
execute if score $Title Times matches 3.. run schedule function event:end_battle/encount_roll 30t replace
