### 選択した時

execute if score $Selected Choice matches 1.. run function event:end_portal/move
execute unless score $Selected Choice matches 1.. run function event:end_portal/return
schedule function turn:start_next 1s replace
