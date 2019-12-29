### イベント制限時間開始

bossbar set event:timer players @a
bossbar set event:timer visible true

execute store result score $Timer Count run bossbar get event:timer value
execute store result bossbar event:timer value run scoreboard players remove $Timer Count 1

execute if score $Timer Count matches 30.. run bossbar set event:timer color white
execute if score $Timer Count matches 10..29 run bossbar set event:timer color yellow
execute if score $Timer Count matches ..9 run bossbar set event:timer color red

execute unless entity @e[tag=EventEntity,limit=1] run scoreboard players set Timer Count -1
execute if score $Timer Count matches 0.. run schedule function event:timer/clock 1s replace
execute unless score $Timer Count matches 0.. run function event:timer/finish
