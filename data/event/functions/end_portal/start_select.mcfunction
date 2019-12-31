### エンドに行くかどうかの選択

execute at 0-0-2-0-2 run title @a subtitle ["",{"selector":"@e[tag=Island,tag=Central,sort=nearest,limit=1]","bold":true,"color":"gray"},"に挑戦しますか？"]

function event:select/reset
schedule function event:select/await 2t replace
schedule function event:end_portal/await_select 2t replace
