### アイテムの抽選

execute at 0-0-2-0-2 at @e[tag=Island,tag=!Central,sort=nearest,limit=1] positioned ~ 12 ~ run data modify storage treasure:pool Items set from block ~ ~ ~ Items

data modify storage treasure:pool Slots set value []
data modify storage treasure:pool Slots append from storage treasure:pool Items[].Slot
execute store result score Top Count store result score Center Count store result score Bottom Count run scoreboard players set _ Count 0
function event:treasure/count_up
