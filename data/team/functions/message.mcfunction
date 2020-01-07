### メッセージをタイトル表示

# 複数形の処理
data modify storage team:message plural set value ["は"]
execute as @a[team=Active] unless score @s Leader = $Current Leader run data modify storage team:message plural set value ["たちは"]

execute as @a[team=Active] if score @s Leader = $Current Leader run title @a subtitle ["",{"nbt":"prefix","storage":"team:message","interpret":true},{"selector":"@s"},{"nbt":"plural","storage":"team:message","interpret":true},{"nbt":"subtitle","storage":"team:message","interpret":true}]
title @a title {"nbt":"title","storage":"team:message","interpret":true}

data remove storage team:message prefix
