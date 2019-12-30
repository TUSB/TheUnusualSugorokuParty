### ダイス確定前行動

execute if entity @a[team=Active,scores={Jump=1..}] run function dice:determinate_one
scoreboard players reset @a Jump

execute unless score $Sum Dice matches 1.. run schedule function turn:before_move 1t replace
execute if score $Sum Dice matches 1.. run schedule function piece:move 15t replace
