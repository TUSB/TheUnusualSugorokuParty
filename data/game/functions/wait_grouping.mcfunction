### チーム分けを待つ

execute as @a at @s if entity @e[distance=..3.5,tag=Red,limit=1] run team join Red
execute as @a at @s if entity @e[distance=..3.5,tag=Green,limit=1] run team join Green
execute as @a at @s if entity @e[distance=..3.5,tag=Blue,limit=1] run team join Blue
execute as @a at @s if entity @e[distance=..3.5,tag=Yellow,limit=1] run team join Yellow
execute as @a at @s unless entity @e[distance=..3.5,tag=Piece] run team leave @s

execute store result score 赤 TeamCount run team list Red
execute store result score 緑 TeamCount run team list Green
execute store result score 青 TeamCount run team list Blue
execute store result score 黄 TeamCount run team list Yellow

title @a actionbar [{"text":"","color":"white","bold":true},{"text":"赤","color":"red","bold":true},{"text":"・","color":"white","bold":true},{"text":"緑","color":"green","bold":true},{"text":"・","color":"white","bold":true},{"text":"青","color":"blue","bold":true},{"text":"・","color":"white","bold":true},{"text":"黄","color":"yellow","bold":true},{"text":"の中から好きなチームを選んでください。","color":"white","bold":true}]

execute as @e[tag=Ring] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[tag=Red] at @s rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] rotated ~90 ~ positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 run particle minecraft:dust 1 0 0 0.3 ~ ~0.5 ~ 0 0 0 0 1 force
execute as @e[tag=Green] at @s rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] rotated ~90 ~ positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 run particle minecraft:dust 0 1 0 0.3 ~ ~0.5 ~ 0 0 0 0 1 force
execute as @e[tag=Blue] at @s rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] rotated ~90 ~ positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 run particle minecraft:dust 0 0 1 0.3 ~ ~0.5 ~ 0 0 0 0 1 force
execute as @e[tag=Yellow] at @s rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] rotated ~90 ~ positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 rotated as @e[x=0.5,y=0,z=0.5,distance=0,tag=Ring,limit=2] positioned ^ ^ ^3.5 facing entity @s feet positioned as @s positioned ^ ^ ^3.5 run particle minecraft:dust 1 1 0 0.3 ~ ~0.5 ~ 0 0 0 0 1 force

schedule function game:wait_grouping 4t replace
