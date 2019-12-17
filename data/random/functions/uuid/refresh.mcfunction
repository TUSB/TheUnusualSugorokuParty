##############################
### UUID乱数取得
##############################

### 乱数用エンティティ召喚
summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Tags:[Randomizer]}
### UUID乱数取得
execute store result score $__UUID1 _Random run data get entity @e[distance=..0.01,tag=Randomizer,limit=1] UUIDMost 0.0000000001
execute store result score $__UUID2 _Random run data get entity @e[distance=..0.01,tag=Randomizer,limit=1] UUIDLeast 0.0000000001
scoreboard players set $IntMax _Random 2147483647
scoreboard players operation $__UUID1 _Random %= $IntMax _Random
scoreboard players operation $__UUID2 _Random %= $IntMax _Random
### 乱数用エンティティ削除
kill @e[distance=..0.01,tag=Randomizer]
