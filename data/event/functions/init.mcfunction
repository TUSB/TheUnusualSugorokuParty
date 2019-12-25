### 初期化

data modify storage template:item Treasure set value {Age:-32768s,Invulnerable:true}
data modify storage template:item Island set value {PickupDelay:32767s,Age:-32768s,Invulnerable:true,NoGravity:true}

scoreboard objectives add Rotation dummy {"text":"水平方向回転角"}
scoreboard objectives add Choice dummy {"text":"選択状態"}
scoreboard objectives add Count dummy {"text":"アイテム同列配置数"}
