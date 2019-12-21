### 選択肢がある時のシステム
### * Choice は reset されていること

execute store result score _ Rotation run data get entity @a[tag=Active,tag=Leader,limit=1] Rotation[0] 1

scoreboard players operation $Choice Rotation = _ Rotation
scoreboard players operation $Choice Rotation -= @a[tag=Active,tag=Leader,limit=1] Rotation

execute if score $Choice Rotation matches ..-180 run scoreboard players add $Choice Rotation 360
execute if score $Choice Rotation matches 180.. run scoreboard players remove $Choice Rotation 360

execute if score $Choice Rotation matches ..-8 run scoreboard players set _ Choice 1
execute if score $Choice Rotation matches 8.. run scoreboard players set _ Choice -1
execute unless score $Choice Rotation matches -7..7 run scoreboard players operation @a[tag=Active,tag=Leader,limit=1] Rotation = _ Rotation

title @a times 0 100 0
execute if score _ Choice matches 1.. run function event:select/yes
execute if score _ Choice matches ..-1 run function event:select/no
execute unless score _ Choice = _ Choice run function event:select/neutral

execute if score _ Choice = _ Choice if entity @a[tag=Active,tag=Leader,scores={Jump=1..}] run scoreboard players operation $Selected Choice = _ Choice
scoreboard players reset @a Jump

execute unless score $Selected Choice = $Selected Choice run schedule function event:select/poll 1t replace
