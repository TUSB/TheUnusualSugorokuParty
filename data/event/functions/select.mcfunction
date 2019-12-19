### 選択肢がある時のシステム

execute store result score _ Rotation run data get entity @s Rotation[0] 1

scoreboard players operation $Choice Rotation = _ Rotation
scoreboard players operation $Choice Rotation -= @s Rotation

execute if score $Choice Rotation matches ..-180 run scoreboard players add $Choice Rotation 360
execute if score $Choice Rotation matches 180.. run scoreboard players remove $Choice Rotation 360

# execute if score $Choice Rotation matches 0 as @a run title @a title {"translate":"%1$s    %2$s","with":[{"text":" YES","color":"green"},{"text":"NO  ","color":"red"}]}
execute if score $Choice Rotation matches 8.. as @a run title @a title {"translate":"%1$s   %2$s       ","with":[{"text":" YES","color":"dark_gray"},{"text":"NO  ","color":"red"}]}
execute if score $Choice Rotation matches ..-8 as @a run title @a title {"translate":"       %1$s   %2$s","with":[{"text":" YES","color":"green"},{"text":"NO  ","color":"dark_gray"}]}
execute unless score $Choice Rotation matches -7..7 run scoreboard players operation @s Rotation = _ Rotation
