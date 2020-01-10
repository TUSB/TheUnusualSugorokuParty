### 誰かを途中参加させる

tellraw @s {"text":"[未参加のプレイヤーを参加者に追加]\n※参加させる色を[Shift+左クリック]後、参加させる人を[Shift+左クリック]します。"}

execute unless entity @e[tag=Piece,tag=Red,tag=Unused] run tellraw @s ["",{"text":"赤チーム","color":"red","clickEvent":{"action":"suggest_command","value":"/team join Red "}}]
execute unless entity @e[tag=Piece,tag=Green,tag=Unused] run tellraw @s ["",{"text":"緑チーム","color":"green","clickEvent":{"action":"suggest_command","value":"/team join Green "}}]
execute unless entity @e[tag=Piece,tag=Blue,tag=Unused] run tellraw @s ["",{"text":"青チーム","color":"blue","clickEvent":{"action":"suggest_command","value":"/team join Blue "}}]
execute unless entity @e[tag=Piece,tag=Yellow,tag=Unused] run tellraw @s ["",{"text":"黄チーム","color":"yellow","clickEvent":{"action":"suggest_command","value":"/team join Yellow "}}]

execute as @a unless score @s Turn = @s Turn run tag @s add NotParticipant
tellraw @s ["[未参加者一覧] ",{"selector":"@a[tag=NotParticipant]"}]
tag @a[tag=NotParticipant] remove NotParticipant
