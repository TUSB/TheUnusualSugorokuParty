### メニューの表示のみtickで制御

tellraw @a[tag=!SecondaryLogin] {"text":"※ゲームの操作はクリエイティブの人が行えます※"}
tag @a[tag=!SecondaryLogin] add SecondaryLogin

execute as @a[gamemode=creative,tag=!MenuShown] run function operation:show_menu
tag @a[gamemode=!creative,tag=MenuShown] remove MenuShown

execute as @a[tag=Cleaner] at @s if block ~ ~ ~ minecraft:spawner unless data block ~ ~ ~ SpawnData.Potion run data merge block ~ ~ ~ {SpawnData:{Potion:{id:"minecraft:splash_potion",Count:1b}}}
execute as @a[tag=Cleaner] at @s if block ~ ~ ~ minecraft:spawner unless data block ~ ~ ~ SpawnPotentials[0].Entity.Potion run data remove block ~ ~ ~ SpawnPotentials
