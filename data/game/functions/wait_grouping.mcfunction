### チーム分けを待つ

execute as @a at @s if entity @e[distance=..3,tag=Red,limit=1] run team join Red
execute as @a at @s if entity @e[distance=..3,tag=Green,limit=1] run team join Green
execute as @a at @s if entity @e[distance=..3,tag=Blue,limit=1] run team join Blue
execute as @a at @s if entity @e[distance=..3,tag=Yellow,limit=1] run team join Yellow
execute as @a at @s unless entity @e[distance=..3,tag=Piece] run team leave @s

execute store result score 赤 TeamCount run team list Red
execute store result score 緑 TeamCount run team list Green
execute store result score 青 TeamCount run team list Blue
execute store result score 黄 TeamCount run team list Yellow

title @a actionbar [{"text":"","color":"white","bold":true},{"text":"赤","color":"red","bold":true},{"text":"・","color":"white","bold":true},{"text":"緑","color":"green","bold":true},{"text":"・","color":"white","bold":true},{"text":"青","color":"blue","bold":true},{"text":"・","color":"white","bold":true},{"text":"黄","color":"red","bold":true},{"text":"の中から好きなチームを選んでください。","color":"white","bold":true}]

schedule function game:wait_grouping 1s replace
