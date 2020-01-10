### リーダーが居るか確認する

# 光らせる
effect clear @a minecraft:glowing
execute as @a[team=Active] if score @s Leader = $Current Leader run effect give @s minecraft:glowing 10 100 true

# リーダーがいるなら値更新を先延ばしにする
execute as @a[team=Active] if score @s Leader = $Current Leader run schedule function piece:assign_leader 22t replace

# 定期確認
schedule function piece:check_leader 20t replace
