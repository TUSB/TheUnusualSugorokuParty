### 追加ダイスをランダム取得

scoreboard players set #3 Count 3
execute store result score _ Count run function random:score/next
scoreboard players operation _ Count %= #3 Count

execute if score _ Count matches 0 run function book:item/ultra_dice
execute if score _ Count matches 1.. run function book:item/ultra_dice
