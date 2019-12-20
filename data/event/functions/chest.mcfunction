### チェスト発見時
### マスの中心で実行すること

# TODO : 実際にはここで条件に合わせてアイテムを選ぶ
summon minecraft:item ~ ~5 ~ {Tags:[Treasure,EventEntity],Item:{id:"minecraft:emerald",Count:1b},PickupDelay:40s}

execute as @a at @s run function sounds:treasure_found
title @a times 0 100 0
execute unless entity @a[tag=Active,tag=!Leader] run title @a subtitle [{"selector":"@a[tag=Active,tag=Leader,limit=1]"},"は宝箱を発見した！！"]
execute if entity @a[tag=Active,tag=!Leader] run title @a subtitle [{"selector":"@a[tag=Active,tag=Leader,limit=1]"},"たちは宝箱を発見した！！"]
title @a title [{"selector":"@e[tag=Treasure]"}]
