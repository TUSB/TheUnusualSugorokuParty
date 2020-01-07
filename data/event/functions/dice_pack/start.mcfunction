### キャンプ発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

# サイコロ出す
execute as @a at @s run function sounds:treasure_found
title @a times 0 100 0
data modify storage team:message subtitle set value ["福袋を発見した！！"]
data modify storage team:message title set value ["福袋"]
function team:message

### ダイスをランダム取得
scoreboard players set #4 Count 4
execute store result score $Fuku Count run function random:score/next
scoreboard players operation $Fuku Count %= #4 Count
scoreboard players add $Fuku Count 2
function event:dice_pack/fukubukuro

schedule function turn:start_next 2s replace
