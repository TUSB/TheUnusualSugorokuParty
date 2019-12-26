### 初期化前準備

kill 0-0-1-0-1
kill 0-0-2-0-2
kill 0-0-3-0-3
kill @e[tag=Dice]
kill @e[tag=Piece]
kill @e[tag=Island]
kill @e[tag=EventEntity]
kill @e[tag=Treasure]
kill @e[tag=Enemy]

schedule function main:init 2t replace
