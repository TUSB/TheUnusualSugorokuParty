### ダイス確定待機

execute if entity @a[team=Active,scores={Jump=1..}] run function dice:determinate_one
scoreboard players reset @a Jump

execute unless score $Sum Dice matches 1.. run schedule function event:end_battle/before_encount 1t replace
execute if score $Sum Dice matches 1.. run schedule function event:end_battle/encount 10t replace
