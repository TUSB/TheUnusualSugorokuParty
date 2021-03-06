### 選択肢がある時のシステム
### * Choice は reset されていること

execute as @a[team=Active] if score @s Leader = $Current Leader store result score _ Rotation run data get entity @s Rotation[0] 1

scoreboard players operation $Choice Rotation = _ Rotation
scoreboard players operation $Choice Rotation -= $Base Rotation

execute if score $Choice Rotation matches ..-180 run scoreboard players add $Choice Rotation 360
execute if score $Choice Rotation matches 180.. run scoreboard players remove $Choice Rotation 360

execute if score $Choice Rotation matches ..-8 run scoreboard players set _ Choice 1
execute if score $Choice Rotation matches 8.. run scoreboard players set _ Choice -1
execute unless score $Choice Rotation matches -7..7 run scoreboard players operation $Base Rotation = _ Rotation

title @a times 0 100 0
execute if score _ Choice matches 1.. run function event:select/yes
execute if score _ Choice matches ..-1 run function event:select/no
execute unless score _ Choice = _ Choice run function event:select/neutral

execute as @a[team=Active] if score @s Leader = $Current Leader if score @s Jump matches 1.. if score _ Choice = _ Choice run scoreboard players operation $Selected Choice = _ Choice
scoreboard players reset @a Jump

execute unless score $Selected Choice = $Selected Choice run schedule function event:select/await 1t replace
