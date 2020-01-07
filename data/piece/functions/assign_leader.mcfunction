### リーダーを任命する

scoreboard players set $Current Leader 0
scoreboard players operation $Current Leader > @a[team=Active] Leader

# 光らせる
effect clear @a minecraft:glowing
execute as @a[team=Active] if score @s Leader = $Current Leader run effect give @s minecraft:glowing 300 100 true

# 知らせる
execute as @a[team=Active] if score @s Leader = $Current Leader run title @a[team=Active] actionbar [{"text":"","color":"blue","bold":true},{"selector":"@s"},"がリーダーです。"]

# 直接呼び出された時のため、スケジュールをキャンセル
schedule clear piece:assign_leader
# リーダーのチェックを開始
schedule function piece:check_leader 20t replace
