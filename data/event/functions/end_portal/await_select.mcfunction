### 選択を待機

execute if score $Selected Choice = $Selected Choice run function event:end_portal/on_select
execute unless score $Selected Choice = $Selected Choice run schedule function event:end_portal/await_select 1t replace
