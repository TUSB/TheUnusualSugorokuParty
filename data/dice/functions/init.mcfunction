### 初期化

scoreboard objectives add Dice dummy
scoreboard objectives add DiceMin dummy
scoreboard objectives add DiceMax dummy

scoreboard players set #6 Dice 6

data merge storage dice:names {empty:"{\"text\":\"\"}",dice1:"{\"text\":\" ⚀\"}",dice2:"{\"text\":\" ⚁\"}",dice3:"{\"text\":\" ⚂\"}",dice4:"{\"text\":\" ⚃\"}",dice5:"{\"text\":\" ⚄\"}",dice6:"{\"text\":\" ⚅\"}"}
data modify storage dice:types normal set value {Dices:[1,2,3,4,5,6]}
data modify storage dice:types small set value {Dices:[1,2,3,1,2,3]}
data modify storage dice:types large set value {Dices:[4,5,6,4,5,6]}
data modify storage dice:types lesser set value {Dices:[1,2,1,2,1,2]}
data modify storage dice:types medium set value {Dices:[3,4,3,4,3,4]}
data modify storage dice:types greater set value {Dices:[5,6,5,6,5,6]}
data modify storage dice:types odd set value {Dices:[1,3,5,1,3,5]}
data modify storage dice:types even set value {Dices:[2,4,6,2,4,6]}

kill @e[tag=Dice]
execute at 0-0-1-0-1 run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:cake",Count:1b,tag:{}},Tags:[Dice,Dice1]}
execute at 0-0-1-0-1 run summon minecraft:item ~ ~2 ~ {Item:{id:"minecraft:cake",Count:1b,tag:{}},Tags:[Dice,Dice2]}
execute at 0-0-1-0-1 run summon minecraft:item ~ ~3 ~ {Item:{id:"minecraft:cake",Count:1b,tag:{}},Tags:[Dice,Dice3]}
execute at 0-0-1-0-1 run summon minecraft:item ~ ~4 ~ {Item:{id:"minecraft:cake",Count:1b,tag:{}},Tags:[Dice,Dice4]}

execute as @e[tag=Dice] run data modify entity @s {} merge from storage template:item Base
execute as @e[tag=Dice] run data modify entity @s Item.tag merge from storage dice:types normal
execute as @e[tag=Dice] run data modify entity @s CustomName set from storage dice:names empty
