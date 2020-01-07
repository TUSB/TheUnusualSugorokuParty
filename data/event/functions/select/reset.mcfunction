### 選択肢がある時のシステムを初期化

scoreboard players reset @a Jump
scoreboard players reset * Choice
execute as @a[team=Active] if score @s Leader = $Current Leader store result score $Base Rotation run data get entity @s Rotation[0] 1
