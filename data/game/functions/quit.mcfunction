### ゲームを終了する

# Turnクリア
scoreboard players reset * Turn

# チーム分け待ち解除
schedule clear game:wait_grouping

# とりあえず全スケジュール解除
schedule clear dice:cast
schedule clear piece:move
schedule clear turn:start_next
schedule clear turn:before_move
schedule clear game:observe_death
schedule clear piece:assign_leader
schedule clear piece:check_leader
function event:cancel

# タイトルを消す
title @a times 0 0 0

# エフェクト消す
effect clear @a

# デバッグ用
gamemode creative @a[tag=Debugger]
