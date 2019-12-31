### 追加ダイス発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

# サイコロ出す
execute as @a at @s run function sounds:dice_found
title @a times 0 100 0
execute unless entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"はサイコロを発見した！！"]
execute if entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"たちはサイコロを発見した！！"]
title @a title ["サイコロ"]
execute as @a[team=Active,scores={Leader=0},limit=1] run function book:item/random/extra_dice

schedule function turn:start_next 2s replace
