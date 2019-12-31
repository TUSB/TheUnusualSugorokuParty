### キャンプ発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

# サイコロ出す
execute as @a at @s run function sounds:treasure_found
title @a times 0 100 0
execute unless entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"は福袋を発見した！！"]
execute if entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"たちは福袋を発見した！！"]
title @a title ["福袋"]

### ダイスをランダム取得
scoreboard players set #3 Count 4
execute store result score $Fuku Count run function random:score/next
scoreboard players operation $Fuku Count %= #4 Count
scoreboard players add $Fuku Count 2
function event:dice_pack/fukubukuro

schedule function turn:start_next 2s replace
