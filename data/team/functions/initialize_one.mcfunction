### 現在位置のチームの情報を初期化する

execute store result entity 0-0-4-0-4 Pos[0] double 1 run scoreboard players get _ Turn
execute as @a if score @s Turn = _ Turn run tag @s add ThisTeam

# 初期化
execute at 0-0-4-0-4 unless block ~ ~ ~ minecraft:jukebox run setblock ~ ~ ~ minecraft:jukebox replace
execute at 0-0-4-0-4 run data modify block ~ ~ ~ RecordItem set value {id:"minecraft:stone",Count:1b,tag:{TeamData:{}}}
# リーダー順決定
scoreboard players set _ Leader 0
execute as @a[tag=ThisTeam] store result score @s Leader run scoreboard players add _ Leader 1
# インベントリ保存位置決定
execute as @a[tag=ThisTeam] run scoreboard players operation @s InventoryID = @s Leader
# 初期アイテム設定
execute as @a[tag=ThisTeam] run function inventory:give_starter
# インベントリ保存/生存フラグ設定
execute as @a[tag=ThisTeam] run function inventory:save

execute as @e[tag=Piece] if score @s Turn = _ Turn run scoreboard players operation @s Leader = _ Leader
execute store result score _ TeamCount if entity @a[tag=ThisTeam]
execute as @e[tag=Piece] if score @s Turn = _ Turn run scoreboard players operation @s TeamCount = _ TeamCount
tag @a[tag=ThisTeam] remove ThisTeam
