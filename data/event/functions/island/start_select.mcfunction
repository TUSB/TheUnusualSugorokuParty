### 島に行くかどうかの選択

execute at 0-0-2-0-2 run title @a subtitle ["",{"selector":"@e[tag=Island,tag=!Central,sort=nearest,limit=1]","bold":true,"color":"gray"},"へ行きますか？"]

function event:select/reset
schedule function event:select/poll 2t replace
schedule function event:island/poll_select 2t replace
