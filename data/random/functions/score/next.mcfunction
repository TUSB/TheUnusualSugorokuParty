##############################
### キャリー付き乗算乱数
##############################

###キャリー付き乗算で乱数を更新する
## ax + c # $MWCMultiplier = 31,743
scoreboard players operation $__Current _Random *= $__Multiplier _Random
scoreboard players operation $__Current _Random += $__Carry _Random
scoreboard players operation $__Carry _Random = $__Current _Random
## x = (ax + c) % b # $MWCBase = 2^16 = 65536
scoreboard players operation $__Current _Random %= $__Base _Random
## c = (ax + c) / b
scoreboard players operation $__Carry _Random /= $__Base _Random

### 値を返す
scoreboard players get $__Current _Random
