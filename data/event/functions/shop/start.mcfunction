### ショップ発見時

# 次のターンへ移動はキャンセル
schedule clear turn:start_next

# レシピを保存
execute at 0-0-2-0-2 at @e[tag=Island,tag=!Central,sort=nearest,limit=1] positioned ~ 14 ~ run data modify storage shop:stock Items set from block ~ ~ ~ Items
data modify storage shop:stock Recipes set value [{},{},{},{},{},{},{},{},{}]
data modify storage shop:stock Recipes[] set value {maxUses:100, uses:0, xp:0, priceMultiplier:0f, specialPrice:0, demand:0, rewardExp:false, buy:{id:"minecraft:air", Count:0b}, buyB:{id:"minecraft:air", Count:0b}, sell:{id:"minecraft:air", Count:0b}}
function event:shop/renewal
data remove storage shop:stock Recipes[{sell:{id:"minecraft:air"}}]

# SpawnDataに入れる
data modify storage shop:stock Staff set value {id:"minecraft:wandering_trader",Offers:{Recipes:[]},Tags:[Staff,EventEntity],Glowing:true}
data modify storage shop:stock Staff.Offers.Recipes set from storage shop:stock Recipes
data modify entity 0-0-3-0-3 SpawnData set from storage shop:stock Staff

# ここから未修正
execute as @a at @s run function sounds:shop_found
title @a times 0 100 0
execute unless entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"は商人に出会った！！"]
execute if entity @a[team=Active,scores={Leader=1..}] run title @a subtitle ["",{"selector":"@a[team=Active,scores={Leader=0},limit=1]"},"たちは商人に出会った！！"]
title @a title {"text":"はぁん","bold":true,"color":"green"}

schedule function event:shop/enter 2s replace
