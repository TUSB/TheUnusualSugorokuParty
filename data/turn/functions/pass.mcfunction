### パスする

schedule clear dice:cast
schedule clear turn:before_move

title @a times 0 100 0
execute as @a at @s run function sounds:skip_turn
title @a subtitle [""]
title @a title {"text":"パス","color":"gold","bold":true}

schedule function turn:start_next 2s replace
