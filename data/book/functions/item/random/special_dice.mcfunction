### 特殊ダイスをランダム取得

scoreboard players set #7 Count 7
execute store result score _ Count run function random:score/next
scoreboard players operation _ Count %= #7 Count

execute if score _ Count matches 0 run function book:item/small_dice
execute if score _ Count matches 1 run function book:item/large_dice
execute if score _ Count matches 2 run function book:item/lesser_dice
execute if score _ Count matches 3 run function book:item/medium_dice
execute if score _ Count matches 4 run function book:item/greater_dice
execute if score _ Count matches 5 run function book:item/odd_dice
execute if score _ Count matches 6 run function book:item/even_dice
