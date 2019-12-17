### 振る
# execute as @e[tag=Dice,tag=Active] store result score @s Dice run function random:score/next

execute store result score _ Dice run function random:score/next
scoreboard players operation _ Dice %= #6 Dice

execute if score _ Dice matches 0 store result score @s Dice run data get entity @s Item.tag.Dices[0]
execute if score _ Dice matches 1 store result score @s Dice run data get entity @s Item.tag.Dices[1]
execute if score _ Dice matches 2 store result score @s Dice run data get entity @s Item.tag.Dices[2]
execute if score _ Dice matches 3 store result score @s Dice run data get entity @s Item.tag.Dices[3]
execute if score _ Dice matches 4 store result score @s Dice run data get entity @s Item.tag.Dices[4]
execute if score _ Dice matches 5 store result score @s Dice run data get entity @s Item.tag.Dices[5]

execute unless score @s Dice matches 1..6 run data modify entity @s CustomName set from storage dice:names empty
execute if score @s Dice matches 1 run data modify entity @s CustomName set from storage dice:names dice1
execute if score @s Dice matches 2 run data modify entity @s CustomName set from storage dice:names dice2
execute if score @s Dice matches 3 run data modify entity @s CustomName set from storage dice:names dice3
execute if score @s Dice matches 4 run data modify entity @s CustomName set from storage dice:names dice4
execute if score @s Dice matches 5 run data modify entity @s CustomName set from storage dice:names dice5
execute if score @s Dice matches 6 run data modify entity @s CustomName set from storage dice:names dice6
