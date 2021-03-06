### 手持ちを読み込み

# ロード
execute at 0-0-4-0-4 run data modify storage inventory:data Class set from block ~ ~ ~ RecordItem.tag.Class

# 頭
data remove block 2 0 2 Items[]
data modify block 2 0 2 Items append from storage inventory:data Class.Head
loot replace entity @s armor.head 1 mine 2 0 2 minecraft:debug_stick

# 胴
data remove block 2 0 2 Items[]
data modify block 2 0 2 Items append from storage inventory:data Class.Chest
loot replace entity @s armor.chest 1 mine 2 0 2 minecraft:debug_stick

# 脚
data remove block 2 0 2 Items[]
data modify block 2 0 2 Items append from storage inventory:data Class.Legs
loot replace entity @s armor.legs 1 mine 2 0 2 minecraft:debug_stick

# 足
data remove block 2 0 2 Items[]
data modify block 2 0 2 Items append from storage inventory:data Class.Feet
loot replace entity @s armor.feet 1 mine 2 0 2 minecraft:debug_stick

# オフハンド
data remove block 2 0 2 Items[]
data modify block 2 0 2 Items append from storage inventory:data Class.Offhand
loot replace entity @s weapon.offhand 1 mine 2 0 2 minecraft:debug_stick

# ホットバー
data modify block 2 0 2 Items set from storage inventory:data Class.Hotbar
loot replace entity @s hotbar.0 9 mine 2 0 2 minecraft:debug_stick

# インベントリ
data modify block 2 0 2 Items set from storage inventory:data Class.Inventory
loot replace entity @s inventory.0 27 mine 2 0 2 minecraft:debug_stick

# 生存フラグを付ける
execute at 0-0-4-0-4 run data modify block ~ ~ ~ RecordItem.tag.Alive set value true
