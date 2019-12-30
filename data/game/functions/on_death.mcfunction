### 死亡時

schedule clear dice:cast
function event:cancel
execute as @a at @s run function sounds:eliminated
execute unless entity @a[team=Active,tag=!Leader] run title @a subtitle ["次の",{"selector":"@a[team=Active,tag=Leader,limit=1]"},"はきっとうまくやってくれるでしょう"]
execute if entity @a[team=Active,tag=!Leader] run title @a subtitle ["次の",{"selector":"@a[team=Active,tag=Leader,limit=1]"},"たちはきっとうまくやってくれるでしょう"]
title @a title {"text":"全滅","color":"red","bold":true}

schedule function turn:start_next 2s replace
