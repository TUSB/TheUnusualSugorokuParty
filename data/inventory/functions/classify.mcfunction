### 分類する

execute store result score _ Slot run data get storage inventory:data Inventory[0].Slot

execute unless score _ Slot matches 0..35 run data remove storage inventory:data Inventory[0].Slot
execute if score _ Slot matches 103 run data modify storage inventory:data Class.Head set from storage inventory:data Inventory[0]
execute if score _ Slot matches 102 run data modify storage inventory:data Class.Chest set from storage inventory:data Inventory[0]
execute if score _ Slot matches 101 run data modify storage inventory:data Class.Legs set from storage inventory:data Inventory[0]
execute if score _ Slot matches 100 run data modify storage inventory:data Class.Feet set from storage inventory:data Inventory[0]
execute if score _ Slot matches -106 run data modify storage inventory:data Class.Offhand set from storage inventory:data Inventory[0]
execute if score _ Slot matches 0..8 run data modify storage inventory:data Class.Hotbar append from storage inventory:data Inventory[0]
scoreboard players remove _ Slot 9
execute if score _ Slot matches 0..26 store result storage inventory:data Inventory[0].Slot byte 1 run scoreboard players get _ Slot
execute if score _ Slot matches 0..26 run data modify storage inventory:data Class.Inventory append from storage inventory:data Inventory[0]

data remove storage inventory:data Inventory[0]

execute if data storage inventory:data Inventory[0] run function inventory:classify
