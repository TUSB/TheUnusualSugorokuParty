### リーダーが居るか確認する

# リーダーがいるなら値更新を先延ばしにする
execute as @a[team=Active] if score @s Leader = $Current Leader run schedule function piece:assign_leader 22t replace

# 定期確認
schedule function piece:check_leader 20t replace
