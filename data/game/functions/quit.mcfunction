### ゲームを終了する

# とりあえず全スケジュール解除
schedule clear dice:cast
schedule clear piece:move
schedule clear turn:start_next
schedule clear turn:before_move

# タイトルを消す
title @a times 0 0 0

# デバッグ用
gamemode creative @a[tag=Debugger]
