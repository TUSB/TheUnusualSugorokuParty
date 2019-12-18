### 色々初期化

data modify storage template:item Base set value {PickupDelay:32767s,Age:-32768s,Invulnerable:true,NoGravity:true}

summon minecraft:item 0 0 0 {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{}},Tags:[Origin],UUIDMost:1L,UUIDLeast:1L}
data modify entity 0-0-1-0-1 {} merge from storage template:item Base

function dice:init
function random:score/init
function turn:init

say ロードしました。
