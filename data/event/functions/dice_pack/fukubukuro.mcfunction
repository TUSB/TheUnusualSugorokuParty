### 福袋開封

execute if score $Fuku Count matches 1 as @a[team=Active,sort=random,limit=1] run function book:item/random/special_dice
execute if score $Fuku Count matches 2.. as @a[team=Active,sort=random,limit=1] run function book:item/random/extra_dice

scoreboard players remove $Fuku Count 2
execute if score $Fuku Count matches 1.. run function event:dice_pack/fukubukuro
