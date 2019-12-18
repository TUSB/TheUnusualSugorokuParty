##############################
### キャリー付き乗算乱数初期化
##############################

### スコアボード作成
scoreboard objectives add _Random dummy {"text":"乱数"}

### 乗数設定
scoreboard players set $__Multiplier _Random 31743
### 除数設定
scoreboard players set $__Base _Random 65536

### 現在値設定
execute store result score $__Current _Random run function random:uuid/get
scoreboard players operation $__Current _Random %= $__Base _Random
### キャリー設定
execute store result score $__Carry _Random run function random:uuid/get
scoreboard players operation $__Carry _Random %= $__Base _Random
