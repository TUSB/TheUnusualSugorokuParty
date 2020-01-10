### 死亡検知

# 死んだらスペクテイター
gamemode spectator @a[team=Active,scores={TimeSinceDeath=..5}]
# 現在のチームが全員アドベンチャー以外になっちゃったらしぼんぬ
execute if entity @a[team=Active,gamemode=!adventure,gamemode=!creative] unless entity @a[team=Active,gamemode=!survival,gamemode=!spectator] run function game:on_death

schedule function game:observe_death 2t replace
