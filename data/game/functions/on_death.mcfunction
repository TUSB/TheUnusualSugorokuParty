### 死亡時

schedule clear dice:cast
function event:cancel
execute as @a at @s run function sounds:eliminated
title @a times 0 100 0
execute unless entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["次の",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"はきっとうまくやってくれるでしょう"]
execute if entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["次の",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"たちはきっとうまくやってくれるでしょう"]
title @a title {"text":"全滅","color":"red","bold":true}
team empty Active

execute as @e[tag=Island,tag=Central,limit=1] run function island:set_start
execute as @e[tag=Piece,tag=Active,limit=1] run function piece:set_location
execute as @e[tag=PieceFlag,tag=Active,limit=1] run function piece:set_location

schedule function turn:start_next 2s replace
