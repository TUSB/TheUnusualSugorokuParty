### 敵出現数ダイスロール

function dice:reset_dice

scoreboard players reset @a Jump
schedule function dice:cast 1t replace
schedule function event:end_battle/before_encount 2t replace
