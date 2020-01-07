### 敵出現タイトル表示

execute as @a at @s run function sounds:battle_outbreak
title @a times 6 10 6
data modify storage team:message subtitle set value ["強敵に見つかった！！"]
data modify storage team:message title set value '{"text":"やばい！","color":"red","bold":true}'
function team:message

scoreboard players add $Title Times 1
execute if score $Title Times matches ..2 run schedule function event:end_battle/title 20t replace
execute if score $Title Times matches 3.. run schedule function event:end_battle/encount_roll 30t replace
