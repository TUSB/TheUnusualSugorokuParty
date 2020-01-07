### チームの情報を初期化する

scoreboard players reset * Leader
scoreboard players reset * InventoryID

# ポインタを軸に合わせる
tp 0-0-4-0-4 0 0 3

scoreboard players set _ Turn 0
function team:initialize_one

scoreboard players set _ Turn 1
function team:initialize_one

scoreboard players set _ Turn 2
function team:initialize_one

scoreboard players set _ Turn 3
function team:initialize_one
