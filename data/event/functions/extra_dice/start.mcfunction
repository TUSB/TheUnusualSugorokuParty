### 追加ダイス発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

execute as @a at @s run function sounds:dice_found
title @a times 0 100 0
data modify storage team:message subtitle set value ["サイコロを発見した！！"]
data modify storage team:message title set value ["サイコロ"]
function team:message

# サイコロ出す
execute as @a[team=Active] if score @s Leader = $Current Leader run function book:item/random/extra_dice

schedule function turn:start_next 2s replace
