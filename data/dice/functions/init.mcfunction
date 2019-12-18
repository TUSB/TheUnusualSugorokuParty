### 初期化

scoreboard objectives add Dice dummy
scoreboard objectives add DiceMin dummy
scoreboard objectives add DiceMax dummy

scoreboard players set #6 Dice 6

data merge storage dice:names {empty:"{\"text\":\"\"}",dice1:"{\"text\":\"⚀\"}",dice2:"{\"text\":\"⚁\"}",dice3:"{\"text\":\"⚂\"}",dice4:"{\"text\":\"⚃\"}",dice5:"{\"text\":\"⚄\"}",dice6:"{\"text\":\"⚅\"}"}

kill @e[tag=Dice]
execute at 0-0-1-0-1 run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{}},Tags:[Dice,Dice1]}
execute at 0-0-1-0-1 run summon minecraft:item ~ ~2 ~ {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{}},Tags:[Dice,Dice2]}
execute at 0-0-1-0-1 run summon minecraft:item ~ ~3 ~ {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{}},Tags:[Dice,Dice3]}
execute at 0-0-1-0-1 run summon minecraft:item ~ ~4 ~ {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{}},Tags:[Dice,Dice4]}

execute as @e[tag=Dice] run data modify entity @s {} merge from storage template:item Base
