### チェスト発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

# 出現させるアイテムを抽選する
function event:treasure/lottery

# 出現させる
execute at @e[tag=Piece,tag=Active,limit=1] positioned ^-1 ^ ^-1 run summon minecraft:item ~ ~5 ~ {Tags:[Treasure,EventEntity],Item:{id:"minecraft:emerald",Count:1b},PickupDelay:40s}
execute as @e[tag=Treasure] run data modify entity @s {} merge from storage template:item Treasure
execute as @e[tag=Treasure] run data modify entity @s Item set from storage treasure:pool Item

execute as @a at @s run function sounds:treasure_found
title @a times 0 100 0
execute unless entity @a[tag=Active,tag=!Leader] run title @a subtitle [{"selector":"@a[tag=Active,tag=Leader,limit=1]"},"は宝箱を発見した！！"]
execute if entity @a[tag=Active,tag=!Leader] run title @a subtitle [{"selector":"@a[tag=Active,tag=Leader,limit=1]"},"たちは宝箱を発見した！！"]
title @a title [{"selector":"@e[tag=Treasure]"}]

schedule function event:treasure/poll_pickup 2t replace
