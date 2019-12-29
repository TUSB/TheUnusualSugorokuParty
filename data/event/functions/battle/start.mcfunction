### 敵遭遇時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

# 出現させる敵を抽選する
execute at 0-0-2-0-2 at @e[tag=Island,tag=!Central,sort=nearest,limit=1] positioned ~ 11 ~ run data modify storage lottery:pool Items set from block ~ ~ ~ Items
function event:lottery/draw
# SpawnDataに入れる
data modify entity 0-0-3-0-3 SpawnData set from storage lottery:pool Item.tag.EntityTag.SpawnData

# 演出開始
scoreboard players set $Title Times 0
function event:battle/title
