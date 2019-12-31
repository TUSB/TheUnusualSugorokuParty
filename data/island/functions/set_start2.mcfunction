### ポインターを開始マスに合わせる

execute store result entity 0-0-2-0-2 Pos[0] double 1 run data get entity @s Item.tag.Start2[0] 1
execute store result entity 0-0-2-0-2 Pos[2] double 1 run data get entity @s Item.tag.Start2[1] 1

function island:adjust_pointer
