### 設置されたブロックによってイベントを発生させる

# イベントがなかった場合は次のターンへ
schedule function turn:start_next 1s replace

execute if block ~ ~ ~ minecraft:chest run function event:treasure/start
execute if block ~ ~ ~ minecraft:end_gateway run function event:island/start
execute if block ~ ~ ~ minecraft:spawner run function event:battle/start
execute if block ~ ~ ~ minecraft:bell run function event:shop/start
