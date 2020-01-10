### ゲーム開始
function main:pre_init

# メンバーが決まったらメッセージ表示
tellraw @s {"text":"\n⚁チーム分け出来たのでゲームを開始する","clickEvent":{"action":"run_command","value":"/function operation:game_start2"}}
