# イベントを全てキャンセル

schedule clear event:battle/before_encount
schedule clear event:battle/check_battle_state
schedule clear event:island/await_select
schedule clear event:select/await
schedule clear event:shop/check_shop_state
schedule clear event:treasure/await_pickup
schedule clear event:end_battle/before_encount
schedule clear event:end_battle/check_battle_state

function event:timer/finish
