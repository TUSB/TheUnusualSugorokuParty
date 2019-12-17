### 色々初期化

data modify storage template:item {PickupDelay:32767s,Age:-32768s,Invulnerable:true,NoGravity:true}

summon minecraft:item 0 0 0 {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{}},Tags:[Base],UUIDMost:1L,UUIDLeast:1L}
data modify entity 0-0-1-0-1 set from storage template:item

function dice:init
function random:score/init
