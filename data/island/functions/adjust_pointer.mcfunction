### ポインタの位置/向き調整

execute as 0-0-2-0-2 at @s align xyz run tp @s ~0.5 0 ~0.5

execute as 0-0-2-0-2 at @s if block ~ 1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~ 0 0
execute as 0-0-2-0-2 at @s if block ~ 1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~ ~ ~ 90 0
execute as 0-0-2-0-2 at @s if block ~ 1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~ 180 0
execute as 0-0-2-0-2 at @s if block ~ 1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~ ~ ~ 270 0
