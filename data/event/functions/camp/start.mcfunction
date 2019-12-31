### キャンプ発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

# サイコロ出す
execute as @a at @s run function sounds:treasure_found
title @a times 0 100 0
execute unless entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"は福袋を発見した！！"]
execute if entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"たちは福袋を発見した！！"]
title @a title ["福袋"]
execute as @a[team=Active,scores={Leader=0},limit=1] run function book:item/random/special_dice

schedule function turn:start_next 2s replace
