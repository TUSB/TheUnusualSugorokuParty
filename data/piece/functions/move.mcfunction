### 駒を進める

# 死亡監視停止
schedule clear game:observe_death

gamemode spectator @a
execute as @a at @s run function sounds:piece_move
function dice:reduce_one
function dice:subtitle

execute as @e[tag=Piece,tag=Active,limit=1] run function piece:set_pointer
function piece:move_pointer
execute as @e[tag=Piece,tag=Active,limit=1] run function piece:set_location

execute if score $Sum Dice matches 1.. run schedule function piece:move 10t replace
execute unless score $Sum Dice matches 1.. run schedule function event:handle 15t replace
