### 拠点に戻る

function piece:return_to_start
execute as @e[tag=Piece,tag=Active,limit=1] run function piece:set_location
