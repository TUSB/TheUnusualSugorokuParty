### 設置されたブロックによってイベントを発生させる

# イベントがなかった場合は次のターンへ
schedule function turn:start_next 1s replace

execute if block ~ ~ ~ minecraft:chest run function event:chest/start
execute if block ~ ~ ~ minecraft:end_gateway run function event:island/start
