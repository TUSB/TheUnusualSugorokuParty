### ゲームを終了する

# とりあえず全スケジュール解除
schedule clear dice:cast
schedule clear piece:move
schedule clear turn:start_next
schedule clear turn:before_move
schedule clear game:observe_death
function event:cancel

# タイトルを消す
title @a times 0 0 0

# タイマーを消す
function event:timer/finish

# エフェクト消す
effect clear @a

# デバッグ用
gamemode creative @a[tag=Debugger]
