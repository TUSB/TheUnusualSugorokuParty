### ゲームを終了する

# とりあえず全スケジュール解除
schedule clear dice:cast
schedule clear piece:move
schedule clear turn:start_next
schedule clear turn:before_move
schedule clear turn:after_move

# タイトルを消す
title @a times 0 0 0
