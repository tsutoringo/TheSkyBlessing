#> asset:sacred_treasure/common/use/chest
#
# チェストプレートの神器の使用時共通処理を実行します
#
# @within function asset:sacred_treasure/*/trigger/3.main

data modify storage asset:sacred_treasure TargetSlot set value 'chest'
function asset_manager:sacred_treasure/use/
tag @s remove CanUsed