### サイコロを１つ確定

execute at 0-0-1-0-1 run tag @e[tag=Dice,tag=Active,tag=Undeterminated,sort=nearest,limit=1] remove Undeterminated
execute as @a at @s run function sounds:dice_fix
