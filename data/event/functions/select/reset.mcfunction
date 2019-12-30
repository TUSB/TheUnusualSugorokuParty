### 選択肢がある時のシステムを初期化

scoreboard players reset @a Jump
scoreboard players reset * Choice
execute as @a[team=Active,scores={Leader=0},limit=1] store result score @s Rotation run data get entity @s Rotation[0] 1
