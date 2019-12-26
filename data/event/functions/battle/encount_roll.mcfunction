### 敵出現数ダイスロール

tag @e[tag=Dice] remove Active
tag @e[tag=Dice] add Undeterminated
tag @e[tag=Dice1] add Active

scoreboard players reset @a Jump
schedule function dice:cast 1t replace
schedule function event:battle/before_encount 2t replace
