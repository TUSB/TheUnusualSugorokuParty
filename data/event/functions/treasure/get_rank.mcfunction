### アイテムの抽選のランクを取得

execute if score Random Count matches 0 run scoreboard players set Rank Count 0
execute if score Top Count matches 1.. run scoreboard players remove Random Count 1
execute if score Random Count matches 0 run scoreboard players set Rank Count 0
execute if score Top Count matches 1.. run scoreboard players remove Random Count 1
execute if score Random Count matches 0 run scoreboard players set Rank Count 0
execute if score Top Count matches 1.. run scoreboard players remove Random Count 1
execute if score Random Count matches 0 run scoreboard players set Rank Count 0
execute if score Top Count matches 1.. run scoreboard players remove Random Count 1

execute if score Random Count matches 0 run scoreboard players set Rank Count 1
execute if score Center Count matches 1.. run scoreboard players remove Random Count 1
execute if score Random Count matches 0 run scoreboard players set Rank Count 1
execute if score Center Count matches 1.. run scoreboard players remove Random Count 1

execute if score Random Count matches 0 run scoreboard players set Rank Count 2
execute if score Bottom Count matches 1.. run scoreboard players remove Random Count 1

execute if score Random Count matches 0.. run function event:treasure/get_rank
