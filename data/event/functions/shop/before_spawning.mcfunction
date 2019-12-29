### スポーン待ち

# 湧いてない
execute as 0-0-3-0-3 if entity @s[nbt=!{SpawnData:{id:"tusp:empty"}}] run schedule function event:shop/before_spawning 1t replace

# 湧いた
execute as 0-0-3-0-3 if entity @s[nbt={SpawnData:{id:"tusp:empty"}}] run schedule function event:shop/on_spawning 1t replace
