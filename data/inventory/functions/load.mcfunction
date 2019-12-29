### 手持ちを読み込み

# カーソル移動
execute store result entity 0-0-4-0-4 Pos[1] double 1 run scoreboard players get @s InventoryID

# ロード
execute at 0-0-4-0-4 run data modify storage inventory:data Class set from block ~ ~ ~ RecordItem.tag.Class
data remove block 2 0 2 Items[]

# 頭
data modify block 2 0 2 Items[0] set from storage inventory:data Class.Head
loot replace entity @s armor.head mine 2 0 2 minecraft:debug_stick

# 胴
data modify block 2 0 2 Items[0] set from storage inventory:data Class.Chest
loot replace entity @s armor.chest mine 2 0 2 minecraft:debug_stick

# 胴
data modify block 2 0 2 Items[0] set from storage inventory:data Class.Legs
loot replace entity @s armor.legs mine 2 0 2 minecraft:debug_stick

# 足
data modify block 2 0 2 Items[0] set from storage inventory:data Class.Feet
loot replace entity @s armor.feet mine 2 0 2 minecraft:debug_stick

# オフハンド
data modify block 2 0 2 Items[0] set from storage inventory:data Class.Offhand
loot replace entity @s weapon.offhand mine 2 0 2 minecraft:debug_stick

# ホットバー
data modify block 2 0 2 Items set from storage inventory:data Class.Hotbar
loot replace entity @s hotbar.0 9 mine 2 0 2 minecraft:debug_stick

# インベントリ
data modify block 2 0 2 Items set from storage inventory:data Class.Inventory
loot replace entity @s inventory.9 27 mine 2 0 2 minecraft:debug_stick
