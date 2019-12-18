### 行動

function dice:subtitle

execute as @e[tag=Piece,tag=Active,limit=1] store result score $Piece Coord run function turn:get_coord
execute as @a[tag=Active] store result score @s Coord run function turn:get_coord
### 前のマスと同じマスに戻っていたら、現在のマスに戻す
execute as @a[tag=Active] if score @s Coord = @s LastCoord run function turn:revert_coord
### リーダーでないプレイヤーがリーダーと違う座標に移動していたら、リーダーの座標まで戻す
execute as @a[tag=Active,tag=!Leader] unless score @s Coord = @a[tag=Active,tag=Leader,limit=1] Coord run tp @s @a[tag=Active,tag=Leader,limit=1]
### リーダーが次のマスに移動していたら、コマを移動
execute as @a[tag=Active,tag=Leader,limit=1] unless score @s Coord = @s LastCoord unless score @s Coord = $Piece Coord run function turn:move

execute if entity @e[tag=Dice,tag=Active,scores={Dice=1..}] run schedule function turn:action 1t
