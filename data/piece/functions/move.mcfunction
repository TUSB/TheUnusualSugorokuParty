### 駒を進める

gamemode spectator @a
execute as @a at @s run function sounds:piece_move
execute as @e[tag=Piece,tag=Active,limit=1] at @s run tp @s ^ ^ ^4
execute as @e[tag=Piece,tag=Active,limit=1] store result score @s Coord run function piece:get_coord
execute as @e[tag=Piece,tag=Active,limit=1] run function piece:set_position
function dice:reduce_one
function dice:subtitle

execute if score $Sum Dice matches 1.. run schedule function piece:move 15t replace
execute unless score $Sum Dice matches 1.. run schedule function turn:handle_event 15t replace
