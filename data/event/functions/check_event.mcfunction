### 設置されたブロックによってイベントを発生させる

# イベントがなかった場合は次のターンへ
schedule function turn:start_next 1s replace

execute if block ~ ~ ~ minecraft:chest run function event:treasure/start
execute if block ~ ~ ~ minecraft:end_gateway run function event:island/start
execute if block ~ ~ ~ minecraft:spawner run function event:battle/start
execute if block ~ ~ ~ minecraft:bell run function event:shop/start
execute if block ~ ~ ~ minecraft:emerald_ore run function event:special_dice/start
execute if block ~ ~ ~ minecraft:diamond_ore run function event:extra_dice/start
execute if block ~ ~ ~ minecraft:barrel run function event:dice_pack/start
execute if block ~ ~ ~ minecraft:end_stone run function event:end_portal/start
execute if block ~ ~ ~ minecraft:redstone_block run function event:end_battle/start
