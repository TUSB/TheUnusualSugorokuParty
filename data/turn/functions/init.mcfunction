### 初期化

scoreboard objectives add Piece dummy {"text":"駒"}
scoreboard objectives add Turn dummy
scoreboard objectives add Steps dummy {"text":"歩数"}
scoreboard objectives add Jump minecraft.custom:minecraft.jump
scoreboard objectives add Coord dummy {"text":"座標 1000X + Z"}
scoreboard objectives add LastCoord dummy {"text":"前回の座標"}

scoreboard players set $Max Piece 4
scoreboard players set $OriginX Coord -2050
scoreboard players set $OriginZ Coord -2050
scoreboard players set #400 Coord 400
scoreboard players set #1000 Coord 1000
