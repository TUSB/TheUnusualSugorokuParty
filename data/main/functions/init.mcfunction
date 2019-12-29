### 色々初期化

data modify storage template:item Base set value {PickupDelay:32767s,Age:-32768s,Invulnerable:true,NoGravity:true}
data modify storage template:armor_stand Base set value {Invisible:true,Invulnerable:true,Marker:true,Small:true,NoBasePlate:true,NoGravity:true}
data modify storage template:area_effect_cloud Base set value {Invulnerable:true,DurationOnUse:0,RadiusPerTick:0f,RadiusOnUse:0f,Particle:"minecraft:block minecraft:air",Age:0,ReapplicationDelay:0,Duration:2147483647,WaitTime:0}

summon minecraft:item 0 0 0 {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{}},Tags:[Origin],UUIDMost:1L,UUIDLeast:1L}
data modify entity 0-0-1-0-1 {} merge from storage template:item Base

summon minecraft:item 0 0 0 {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{}},Tags:[Pointer],UUIDMost:2L,UUIDLeast:2L}
data modify entity 0-0-2-0-2 {} merge from storage template:item Base

summon minecraft:spawner_minecart 0 0 0 {Tags:[CommonSpawner],MaxNearbyEntities:32s,RequiredPlayerRange:32s,SpawnCount:0s,SpawnData:{id:"tusp:empty"},MaxSpawnDelay:32767s,Delay:0s,SpawnRange:8s,MinSpawnDelay:32767s,SpawnPotentials:[{Entity:{id:"tusp:empty"},Weight:1}],UUIDMost:3L,UUIDLeast:3L,Invulnerable:true,NoGravity:true}

summon minecraft:area_effect_cloud 2 0 2 {Tags:[InventoryCursor],Radius:0f,UUIDMost:4L,UUIDLeast:4L,CustomName:"\"カーソル\"",CustomNameVisible:true}
data modify entity 0-0-4-0-4 {} merge from storage template:area_effect_cloud Base

function dice:init
function event:init
function island:init
function random:init
function piece:init
function turn:init
function inventory:init

say ロードしました。
