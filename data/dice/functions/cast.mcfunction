### タイトルで表示

execute as @a at @s run function sounds:dice_roll
execute as @e[tag=Dice,tag=Active,tag=Undeterminated] run function dice:roll_dice
function dice:title

scoreboard players set $Sum Dice 0
execute unless entity @e[tag=Dice,tag=Active,tag=Undeterminated,limit=1] run scoreboard players operation $Sum Dice += @e[tag=Dice,tag=Active] Dice
execute if entity @e[tag=Dice,tag=Active,tag=Undeterminated,limit=1] run schedule function dice:cast 1t
