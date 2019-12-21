### 止まったマスの処理をする

function piece:call_player

# マスのイベントを確認する
execute as @e[tag=Piece,tag=Active,limit=1] at @s positioned ^-1 ^ ^-1 run function event:check_event
