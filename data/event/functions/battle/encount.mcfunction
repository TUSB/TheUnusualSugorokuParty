### エンカウント処理

# SpawnData編集
data modify entity 0-0-3-0-3 SpawnData set from storage battle:pool Item.tag.EntityTag.SpawnData
# SpawnCount編集
execute store result entity 0-0-3-0-3 SpawnCount short 1 run scoreboard players get $Sum Dice
# Pos編集
execute at 0-0-2-0-2 as @e[tag=Island,tag=!Central,sort=nearest,limit=1] store result score _ X run data get entity @s Pos[0] 400
execute at 0-0-2-0-2 as @e[tag=Island,tag=!Central,sort=nearest,limit=1] store result score _ Z run data get entity @s Pos[2] 400

execute store result entity 0-0-3-0-3 Pos[0] double 0.01 run scoreboard players operation _ X += #Origin X
execute store result entity 0-0-3-0-3 Pos[2] double 0.01 run scoreboard players operation _ Z += #Origin Z
execute as 0-0-3-0-3 at @s run spreadplayers ~ ~ 0 1 false @s
execute store result entity 0-0-3-0-3 Pos[0] double 0.01 run scoreboard players get _ X
execute store result entity 0-0-3-0-3 Pos[2] double 0.01 run scoreboard players get _ Z
# delay 0化
data modify entity 0-0-3-0-3 Delay set value 0s

# プレイヤー呼ぶ
execute at 0-0-3-0-3 run spreadplayers ~ ~ 0 1 false @a[tag=Active]

# スポーン待ちに入る
schedule function event:battle/before_spawning 1t replace
