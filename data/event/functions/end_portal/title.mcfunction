### エンドポータルタイトル表示時

scoreboard players add $Title Times 1

execute if score $Title Times matches ..3 as @a at @s run function sounds:end_put_eyes
execute if score $Title Times matches 4 as @a at @s run function sounds:end_portal_open

execute if score $Title Times matches ..3 run schedule function event:end_portal/title 10t replace
execute if score $Title Times matches 4.. run schedule function event:end_portal/start_select 30t replace
