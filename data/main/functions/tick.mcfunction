### メニューの表示のみtickで制御

tellraw @a[tag=!SecondaryLogin] {"text":"※ゲームの操作はクリエイティブの人が行えます※"}
tag @a[tag=!SecondaryLogin] add SecondaryLogin

execute as @a[gamemode=creative,tag=!MenuShown] run function operation:show_menu
tag @a[gamemode=!creative,tag=MenuShown] remove MenuShown
