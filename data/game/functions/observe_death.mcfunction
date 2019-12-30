### 死亡検知

scoreboard players add @a[tag=Active] Death 0
gamemode spectator @a[tag=Active,scores={Death=1..}]
execute if entity @a[tag=Active,scores={Death=1..}] unless entity @a[tag=Active,scores={Death=0}] run function game:on_death

schedule function game:observe_death 2t replace
