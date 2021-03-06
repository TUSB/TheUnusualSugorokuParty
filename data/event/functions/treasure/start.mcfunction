### チェスト発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

# 出現させるアイテムを抽選する
execute at 0-0-2-0-2 at @e[tag=Island,tag=!Central,sort=nearest,limit=1] positioned ~ 12 ~ run data modify storage lottery:pool Items set from block ~ ~ ~ Items
function event:lottery/draw

# 出現させる
execute at @e[tag=Piece,tag=Active,limit=1] positioned ^-1 ^ ^-1 run summon minecraft:item ~ ~5 ~ {Tags:[Treasure,EventEntity],Item:{id:"minecraft:emerald",Count:1b},PickupDelay:40s}
execute as @e[tag=Treasure] run data modify entity @s {} merge from storage template:item Treasure
execute as @e[tag=Treasure] run data modify entity @s Item set from storage lottery:pool Item
execute if data storage lottery:pool Item.tag.display.Name as @e[tag=Treasure] run data modify entity @s CustomName set from storage lottery:pool Item.tag.display.Name

execute as @a at @s run function sounds:treasure_found
title @a times 0 100 0
data modify storage team:message subtitle set value ["宝箱を発見した！！"]
data modify storage team:message title set value '{"selector":"@e[tag=Treasure]"}'
function team:message

schedule function event:treasure/await_pickup 2t replace
