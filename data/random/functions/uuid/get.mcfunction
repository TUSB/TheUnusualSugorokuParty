##############################
### UUID乱数取得
##############################

### 次の乱数があればそれを入れる
scoreboard players operation $__UUID1 _Random = $__UUID2 _Random
scoreboard players set $__UUID2 _Random 0
### 空なら更新
execute unless score $__UUID1 _Random matches 1.. run function calc:random/uuid/refresh
### 返す
scoreboard players get $__UUID1 _Random
