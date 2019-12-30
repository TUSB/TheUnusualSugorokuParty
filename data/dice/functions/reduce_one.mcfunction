### １つのダイスの目を１つ減らす

execute at 0-0-1-0-1 run scoreboard players remove @e[distance=..6,tag=Dice,tag=Active,scores={Dice=1..},sort=furthest,limit=1] Dice 1
execute at 0-0-1-0-1 as @e[distance=..6,tag=Dice,tag=Active] run function dice:sync_name
scoreboard players remove $Sum Dice 1
