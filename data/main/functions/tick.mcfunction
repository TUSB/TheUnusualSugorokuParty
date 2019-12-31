### メニューの表示のみtickで制御

execute as @a[gamemode=creative,tag=!MenuShown] run function operation:show_menu
tag @a[gamemode=!creative,tag=MenuShown] remove MenuShown
