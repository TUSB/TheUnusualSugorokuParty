### 死亡検知

scoreboard players add @a[team=Active] Death 0
gamemode spectator @a[team=Active,scores={Death=1..}]
execute if entity @a[team=Active,scores={Death=1..}] unless entity @a[team=Active,scores={Death=0}] run function game:on_death

schedule function game:observe_death 2t replace
