### アイテムの抽選

# 抽選候補をストレージ保存
execute at 0-0-2-0-2 at @e[tag=Island,tag=!Central,sort=nearest,limit=1] positioned ~ 12 ~ run data modify storage treasure:pool Items set from block ~ ~ ~ Items

# 抽選候補の各段の配置数を取得
data modify storage treasure:pool Slots set value []
data modify storage treasure:pool Slots append from storage treasure:pool Items[].Slot
execute store result score Top Count store result score Center Count store result score Bottom Count run scoreboard players set _ Count 0
function event:treasure/count_up

# 抽選候補のランクを取得
execute store result score Random Count run function random:score/next
scoreboard players set #7 Count 7
scoreboard players operation Random Count %= #7 Count
function event:treasure/get_rank

# その段のアイテム数
execute if score Rank Count matches 0 run scoreboard players operation Range Count = Top Count
execute if score Rank Count matches 1 run scoreboard players operation Range Count = Center Count
execute if score Rank Count matches 2 run scoreboard players operation Range Count = Bottom Count

# その段の場合のオフセット
scoreboard players set Offset Count 0
execute if score Rank Count matches 1.. run scoreboard players operation Offset Count += Top Count
execute if score Rank Count matches 2.. run scoreboard players operation Offset Count += Center Count

# 決まった段の中から何番目かを決める
execute store result score Random Count run function random:score/next
scoreboard players operation Random Count %= Range Count
execute store result score Index Count run scoreboard players operation Random Count += Offset Count

# 当たりをストレージに入れる
function event:treasure/get_item
