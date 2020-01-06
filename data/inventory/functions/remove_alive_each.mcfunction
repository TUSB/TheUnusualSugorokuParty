### 生存フラグを消す

# ポインタを合わせる
execute store result entity 0-0-4-0-4 Pos[1] double 1 run scoreboard players get #_ TeamCount

# 生存フラグを消す
execute at 0-0-4-0-4 run data remove block ~ ~ ~ RecordItem.tag.Alive

# 下に移動するようにループ
scoreboard players remove #_ TeamCount 1
execute if score #_ TeamCount matches 1.. run function inventory:remove_alive_each
