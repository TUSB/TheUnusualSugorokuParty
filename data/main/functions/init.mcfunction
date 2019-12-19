### 色々初期化

data modify storage template:item Base set value {PickupDelay:32767s,Age:-32768s,Invulnerable:true,NoGravity:true}
data modify storage template:armor_stand Base set value {Invisible:true,Invulnerable:true,Marker:true,Small:true,NoBasePlate:true,NoGravity:true}

summon minecraft:item 0 0 0 {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{}},Tags:[Origin],UUIDMost:1L,UUIDLeast:1L}
data modify entity 0-0-1-0-1 {} merge from storage template:item Base

summon minecraft:armor_stand 0 0 0 {Tags:[Pointer],UUIDMost:2L,UUIDLeast:2L}
data modify entity 0-0-2-0-2 {} merge from storage template:armor_stand Base

function random:score/init
function dice:init
function turn:init
function piece:init
function event:init

say ロードしました。
