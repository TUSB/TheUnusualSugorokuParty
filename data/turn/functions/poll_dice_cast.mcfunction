### ジャンプを監視する

execute if entity @a[tag=Active,scores={Jump=1..}] run function dice:determinate_one
scoreboard players reset @a Jump

execute unless score $Sum Dice matches 1.. run schedule function turn:poll_dice_cast 1t
execute if score $Sum Dice matches 1.. run schedule function turn:action 1t
