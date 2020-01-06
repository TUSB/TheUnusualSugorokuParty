### アイテム巻き戻しが必要か見て、必要なら巻き戻す

# ポインタを合わせる
tp 0-0-4-0-4 0 0 3
execute store result entity 0-0-4-0-4 Pos[0] double 1 run scoreboard players get @s Turn
execute store result entity 0-0-4-0-4 Pos[1] double 1 run scoreboard players get @s InventoryID

# 生存フラグがなければ、アイテムを巻き戻す
execute at 0-0-4-0-4 unless data block ~ ~ ~ RecordItem.tag.Alive run function inventory:load
