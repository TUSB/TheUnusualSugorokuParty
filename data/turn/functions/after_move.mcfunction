### ダイス確定後行動

execute if entity @e[tag=EventEntity,limit=1] run schedule function turn:after_move 1t replace
execute unless entity @e[tag=EventEntity,limit=1] run schedule function turn:start_next 1t replace
