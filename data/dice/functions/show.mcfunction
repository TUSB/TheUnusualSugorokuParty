### タイトルで表示




execute as @e[tag=Dice,tag=Active] run function dice:roll
title @a title [{"selector":"@e[tag=Dice1,tag=Active,limit=1]"},{"selector":"@e[tag=Dice2,tag=Active,limit=1]"},{"selector":"@e[tag=Dice3,tag=Active,limit=1]"}]


