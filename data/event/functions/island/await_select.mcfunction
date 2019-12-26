### 選択を待機

execute if score $Selected Choice = $Selected Choice run function event:island/on_select
execute unless score $Selected Choice = $Selected Choice run schedule function event:island/await_select 1t replace
