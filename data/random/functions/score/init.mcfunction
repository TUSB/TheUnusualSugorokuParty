##############################
### キャリー付き乗算乱数初期化
##############################

### 乗数設定
scoreboard players set $__Multiplier _Random 31743
### 除数設定
scoreboard players set $__Base _Random 65536

### 現在値設定
execute store result score $__Current _Random run function calc:random/uuid/get
scoreboard players operation $__Current _Random %= $__Base _Random
### キャリー設定
execute store result score $__Carry _Random run function calc:random/uuid/get
scoreboard players operation $__Carry _Random %= $__Base _Random
