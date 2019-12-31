### このターンをスキップする

# スケジュールを解除する
function event:cancel
schedule clear dice:cast
schedule clear piece:move
schedule clear turn:start_next
schedule clear turn:before_move

execute if score $Current Turn matches 0.. run function turn:start_next
