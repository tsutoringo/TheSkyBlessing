#> player_manager:god/change_believe/on_change
#
#
#
# @within function player_manager:god/change_believe/check-?/on_click

scoreboard players set @s GodMessagePhase 0
execute if entity @s[tag=Believe.None] run scoreboard players set @s GodMessagePhase 240
function player_manager:god/change_believe/change_task