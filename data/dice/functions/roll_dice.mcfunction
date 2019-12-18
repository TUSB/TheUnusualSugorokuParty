### 振る

execute store result score _ Dice run function random:score/next
scoreboard players operation _ Dice %= #6 Dice

execute if score _ Dice matches 0 store result score @s Dice run data get entity @s Item.tag.Dices[0]
execute if score _ Dice matches 1 store result score @s Dice run data get entity @s Item.tag.Dices[1]
execute if score _ Dice matches 2 store result score @s Dice run data get entity @s Item.tag.Dices[2]
execute if score _ Dice matches 3 store result score @s Dice run data get entity @s Item.tag.Dices[3]
execute if score _ Dice matches 4 store result score @s Dice run data get entity @s Item.tag.Dices[4]
execute if score _ Dice matches 5 store result score @s Dice run data get entity @s Item.tag.Dices[5]

function dice:sync_name
