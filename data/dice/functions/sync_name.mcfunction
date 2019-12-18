### Dice値と名前を同期

execute unless score @s Dice matches 1..6 run data modify entity @s CustomName set from storage dice:names empty
execute if score @s Dice matches 1 run data modify entity @s CustomName set from storage dice:names dice1
execute if score @s Dice matches 2 run data modify entity @s CustomName set from storage dice:names dice2
execute if score @s Dice matches 3 run data modify entity @s CustomName set from storage dice:names dice3
execute if score @s Dice matches 4 run data modify entity @s CustomName set from storage dice:names dice4
execute if score @s Dice matches 5 run data modify entity @s CustomName set from storage dice:names dice5
execute if score @s Dice matches 6 run data modify entity @s CustomName set from storage dice:names dice6
