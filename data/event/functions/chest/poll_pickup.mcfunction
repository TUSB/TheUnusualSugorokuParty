### アイテムが拾われるまで待機

execute if entity @e[tag=Treasure,limit=1] run schedule function event:chest/poll_pickup 1t replace
execute unless entity @e[tag=Treasure,limit=1] run schedule function turn:start_next 1s replace
