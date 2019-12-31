### 福袋開封

scoreboard players set #2 Count 2
scoreboard players operation $FukuOdd Count = $Fuku Count
scoreboard players operation $FukuOdd Count %= #2 Count

execute if score $FukuOdd Count matches 1 as @a[team=Active,sort=random,limit=1] run function book:item/random/special_dice
execute if score $FukuOdd Count matches 0 as @a[team=Active,sort=random,limit=1] run function book:item/random/extra_dice

scoreboard players remove $Fuku Count 1
execute if score $Fuku Count matches 1.. run function event:dice_pack/fukubukuro
