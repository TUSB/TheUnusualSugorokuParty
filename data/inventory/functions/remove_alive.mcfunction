### 生存フラグを消して回る

# ポインタを合わせる
tp 0-0-4-0-4 0 0 3
execute store result entity 0-0-4-0-4 Pos[0] double 1 run scoreboard players get $Piece Turn

# チームの人数を取得する
execute at 0-0-4-0-4 store result score #_ TeamCount run data get block ~ ~ ~ RecordItem.tag.TeamData.MemberCount

# 消去ループ開始
function inventory:remove_alive_each
