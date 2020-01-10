### ゲーム準備段階

time set 22000
function game:quit
function island:align_central

team empty Active
team empty Red
team empty Green
team empty Blue
team empty Yellow
clear @a
gamemode adventure @a
execute as @e[tag=Piece,limit=1] at @s positioned ^ ^ ^4 run tp @a ~ ~ ~ 180 -30

team join Red 赤
team join Green 緑
team join Blue 青
team join Yellow 黄

scoreboard players set 赤 TeamCount 0
scoreboard players set 緑 TeamCount 0
scoreboard players set 青 TeamCount 0
scoreboard players set 黄 TeamCount 0
scoreboard objectives setdisplay sidebar TeamCount
function game:wait_grouping
