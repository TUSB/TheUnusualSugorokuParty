### 操作メニュー表示

tag @s add MenuShown

tellraw @s ["操作一覧"]
tellraw @s {"text":"⚀ゲームを新しく開始する","clickEvent":{"action":"run_command","value":"function operation:game_start"}}
tellraw @s {"text":"⚁現在のターンを強制スキップする","clickEvent":{"action":"run_command","value":"function operation:game_skip_this_turn"}}
