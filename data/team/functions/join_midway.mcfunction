### 途中参加処理

team leave @a[team=!Active,team=!,scores={Turn=0..}]
execute if entity @e[tag=Piece,tag=Red,tag=Unused] run team leave @a[team=Red]
execute if entity @e[tag=Piece,tag=Green,tag=Unused] run team leave @a[team=Green]
execute if entity @e[tag=Piece,tag=Blue,tag=Unused] run team leave @a[team=Blue]
execute if entity @e[tag=Piece,tag=Yellow,tag=Unused] run team leave @a[team=Yellow]

# 赤
execute as @a[team=Red] run scoreboard players operation @s Turn = @e[tag=Piece,tag=Red,limit=1] Turn
execute as @a[team=Red] store result score @s Leader run scoreboard players add @e[tag=Piece,tag=Red,limit=1] Leader 1
execute as @a[team=Red] store result score @s InventoryID run scoreboard players add @e[tag=Piece,tag=Red,limit=1] TeamCount 1
execute as @a[team=Red] run function inventory:give_starter
execute as @a[team=Red] run function inventory:save

# 緑
execute as @a[team=Green] run scoreboard players operation @s Turn = @e[tag=Piece,tag=Green,limit=1] Turn
execute as @a[team=Green] store result score @s Leader run scoreboard players add @e[tag=Piece,tag=Green,limit=1] Leader 1
execute as @a[team=Green] store result score @s InventoryID run scoreboard players add @e[tag=Piece,tag=Green,limit=1] TeamCount 1
execute as @a[team=Green] run function inventory:give_starter
execute as @a[team=Green] run function inventory:save

# 青
execute as @a[team=Blue] run scoreboard players operation @s Turn = @e[tag=Piece,tag=Blue,limit=1] Turn
execute as @a[team=Blue] store result score @s Leader run scoreboard players add @e[tag=Piece,tag=Blue,limit=1] Leader 1
execute as @a[team=Blue] store result score @s InventoryID run scoreboard players add @e[tag=Piece,tag=Blue,limit=1] TeamCount 1
execute as @a[team=Blue] run function inventory:give_starter
execute as @a[team=Blue] run function inventory:save

# 黄
execute as @a[team=Yellow] run scoreboard players operation @s Turn = @e[tag=Piece,tag=Yellow,limit=1] Turn
execute as @a[team=Yellow] store result score @s Leader run scoreboard players add @e[tag=Piece,tag=Yellow,limit=1] Leader 1
execute as @a[team=Yellow] store result score @s InventoryID run scoreboard players add @e[tag=Piece,tag=Yellow,limit=1] TeamCount 1
execute as @a[team=Yellow] run function inventory:give_starter
execute as @a[team=Yellow] run function inventory:save

execute if entity @a[team=!Active,team=!] run tellraw @a ["参加者が追加されました: ",{"selector":"@a[team=!Active,team=!]"}]

team leave @a[team=!Active,team=!]
