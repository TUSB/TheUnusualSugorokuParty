### メニュー改定

execute store result score _ Count run data get storage shop:stock Items[0].Slot 1

execute if score _ Count matches 0 run data modify storage shop:stock Recipes[0].buy set from storage shop:stock Items[0]
execute if score _ Count matches 1 run data modify storage shop:stock Recipes[1].buy set from storage shop:stock Items[0]
execute if score _ Count matches 2 run data modify storage shop:stock Recipes[2].buy set from storage shop:stock Items[0]
execute if score _ Count matches 3 run data modify storage shop:stock Recipes[3].buy set from storage shop:stock Items[0]
execute if score _ Count matches 4 run data modify storage shop:stock Recipes[4].buy set from storage shop:stock Items[0]
execute if score _ Count matches 5 run data modify storage shop:stock Recipes[5].buy set from storage shop:stock Items[0]
execute if score _ Count matches 6 run data modify storage shop:stock Recipes[6].buy set from storage shop:stock Items[0]
execute if score _ Count matches 7 run data modify storage shop:stock Recipes[7].buy set from storage shop:stock Items[0]
execute if score _ Count matches 8 run data modify storage shop:stock Recipes[8].buy set from storage shop:stock Items[0]

execute if score _ Count matches 9 run data modify storage shop:stock Recipes[0].buyB set from storage shop:stock Items[0]
execute if score _ Count matches 10 run data modify storage shop:stock Recipes[1].buyB set from storage shop:stock Items[0]
execute if score _ Count matches 11 run data modify storage shop:stock Recipes[2].buyB set from storage shop:stock Items[0]
execute if score _ Count matches 12 run data modify storage shop:stock Recipes[3].buyB set from storage shop:stock Items[0]
execute if score _ Count matches 13 run data modify storage shop:stock Recipes[4].buyB set from storage shop:stock Items[0]
execute if score _ Count matches 14 run data modify storage shop:stock Recipes[5].buyB set from storage shop:stock Items[0]
execute if score _ Count matches 15 run data modify storage shop:stock Recipes[6].buyB set from storage shop:stock Items[0]
execute if score _ Count matches 16 run data modify storage shop:stock Recipes[7].buyB set from storage shop:stock Items[0]
execute if score _ Count matches 17 run data modify storage shop:stock Recipes[8].buyB set from storage shop:stock Items[0]

execute if score _ Count matches 18 run data modify storage shop:stock Recipes[0].sell set from storage shop:stock Items[0]
execute if score _ Count matches 19 run data modify storage shop:stock Recipes[1].sell set from storage shop:stock Items[0]
execute if score _ Count matches 20 run data modify storage shop:stock Recipes[2].sell set from storage shop:stock Items[0]
execute if score _ Count matches 21 run data modify storage shop:stock Recipes[3].sell set from storage shop:stock Items[0]
execute if score _ Count matches 22 run data modify storage shop:stock Recipes[4].sell set from storage shop:stock Items[0]
execute if score _ Count matches 23 run data modify storage shop:stock Recipes[5].sell set from storage shop:stock Items[0]
execute if score _ Count matches 24 run data modify storage shop:stock Recipes[6].sell set from storage shop:stock Items[0]
execute if score _ Count matches 25 run data modify storage shop:stock Recipes[7].sell set from storage shop:stock Items[0]
execute if score _ Count matches 26 run data modify storage shop:stock Recipes[8].sell set from storage shop:stock Items[0]

data remove storage shop:stock Items[0]

execute if data storage shop:stock Items[0] run function event:shop/renewal
