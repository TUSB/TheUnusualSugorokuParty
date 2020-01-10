### 初期化

team add Red
team add Green
team add Blue
team add Yellow
team modify Red color red
team modify Green color green
team modify Blue color blue
team modify Yellow color yellow
team modify Red collisionRule never
team modify Green collisionRule never
team modify Blue collisionRule never
team modify Yellow collisionRule never
team add Active
team modify Active color gray
team modify Active collisionRule never
team modify Active friendlyFire false

scoreboard objectives add X dummy {"text":"X(cm)"}
scoreboard objectives add Z dummy {"text":"Z(cm)"}
# scoreboard players set #Origin X -2050
# scoreboard players set #Origin Z -2050
scoreboard players set #Origin X -6150
scoreboard players set #Origin Z -108650

scoreboard objectives remove Turn
scoreboard objectives add Turn dummy
scoreboard objectives remove Leader
scoreboard objectives add Leader dummy {"text":"一番大きい人がリーダー"}

summon minecraft:armor_stand 0 0 0 {Tags:[Piece,PiecePart,Red],ArmorItems:[{tag:{Unbreakable:true,display:{color:11152160}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:11152160}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:11152160}},id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"44648d67-1753-49f3-8869-8084cfb810a1",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDIxYzFlMWY4NTY4ZDQxMTUwY2I3ZmY0YmJjMjZiYTU4YThiNDNiY2Y2NmI5ZDQzZGU2NmM1YTMwZTY4MzZiNyJ9fX0="}]}}}}],ShowArms:1b}
summon minecraft:armor_stand 0 0 0 {Tags:[Piece,PiecePart,Green],ArmorItems:[{tag:{Unbreakable:true,display:{color:5729553}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:5729553}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:5729553}},id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"0a36e52c-c7d8-473a-bf42-01e5a368fa38",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2E1NWQ5ZGY4M2EzMmM0YmNiNzk3Mjc2YjAxMTdlMGNmNjg1MzcyYzkyNzhkZTg5MmE5ZTJjODRkY2ZmNDU1In19fQ=="}]}}}}],ShowArms:1b}
summon minecraft:armor_stand 0 0 0 {Tags:[Piece,PiecePart,Blue],ArmorItems:[{tag:{Unbreakable:true,display:{color:3818405}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:3818405}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:3818405}},id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"c45d0d3e-f768-4a63-a033-00c401dfbf49",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTAwOTA1NWJjZjVmZjBjMDJmYmZhNjEyZjQ2MDI4NDJmMzZmZWNiMjA0NDBiNTM5YmY3NmNiZTcwYmNmYTQ4NSJ9fX0="}]}}}}],ShowArms:1b}
summon minecraft:armor_stand 0 0 0 {Tags:[Piece,PiecePart,Yellow],ArmorItems:[{tag:{Unbreakable:true,display:{color:16240955}},id:"minecraft:leather_boots",Count:1b},{tag:{Unbreakable:true,display:{color:16240955}},id:"minecraft:leather_leggings",Count:1b},{tag:{Unbreakable:true,display:{color:16240955}},id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"c3b59ede-b6c3-4038-9037-60f49b194fb3",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWM4ZWViYjUwZDVjYjZhOGY5MzRmYTY3Zjg5ZGQwYmIwM2QzN2M4ZjM1NGI2ZWNlMDJjOTExZjI3YjFhYzMifX19"}]}}}}],ShowArms:1b}
execute as @e[tag=Piece] run data modify entity @s {} merge from storage template:armor_stand Base
execute as @e[tag=Piece] run data merge entity @s {CustomName:"{\"text\":\"駒\"}",Small:false,Invisible:false,NoBasePlate:false}

summon minecraft:armor_stand 0 0 0 {Tags:[PieceFlag,PiecePart,Red],ArmorItems:[{},{},{},{tag:{Unbreakable:true,BlockEntityTag:{Patterns:[{Color:14,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:14,Pattern:"cbo"},{Color:14,Pattern:"cre"},{Color:14,Pattern:"tt"},{Color:14,Pattern:"bts"}]}},id:"minecraft:black_banner",Count:1b}],Invisible:1b,Pose:{Head:[-10f,0f,0f]}}
summon minecraft:armor_stand 0 0 0 {Tags:[PieceFlag,PiecePart,Green],ArmorItems:[{},{},{},{tag:{Unbreakable:true,BlockEntityTag:{Patterns:[{Color:13,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:13,Pattern:"cbo"},{Color:13,Pattern:"cre"},{Color:13,Pattern:"tt"},{Color:13,Pattern:"bts"}]}},id:"minecraft:black_banner",Count:1b}],Invisible:1b,Pose:{Head:[-10f,0f,0f]}}
summon minecraft:armor_stand 0 0 0 {Tags:[PieceFlag,PiecePart,Blue],ArmorItems:[{},{},{},{tag:{Unbreakable:true,BlockEntityTag:{Patterns:[{Color:11,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:11,Pattern:"cbo"},{Color:11,Pattern:"cre"},{Color:11,Pattern:"tt"},{Color:11,Pattern:"bts"}]}},id:"minecraft:black_banner",Count:1b}],Invisible:1b,Pose:{Head:[-10f,0f,0f]}}
summon minecraft:armor_stand 0 0 0 {Tags:[PieceFlag,PiecePart,Yellow],ArmorItems:[{},{},{},{tag:{Unbreakable:true,BlockEntityTag:{Patterns:[{Color:4,Pattern:"gra"},{Color:15,Pattern:"gru"},{Color:4,Pattern:"cbo"},{Color:4,Pattern:"cre"},{Color:4,Pattern:"tt"},{Color:4,Pattern:"bts"}]}},id:"minecraft:black_banner",Count:1b}],Invisible:1b,Pose:{Head:[-10f,0f,0f]}}
execute as @e[tag=PieceFlag] run data modify entity @s {} merge from storage template:armor_stand Base
execute as @e[tag=PieceFlag] run data merge entity @s {CustomName:"{\"text\":\"旗\"}",Small:false}
