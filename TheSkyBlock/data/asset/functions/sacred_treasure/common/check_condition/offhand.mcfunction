#> asset:sacred_treasure/common/check_condition/offhand
#
# オフハンドの神器の基礎的な発動条件をチェックします
#
# 発動可能な場合実行者に`CanUsed`のtagが付与されます。
#
# @output tag @s CanUsed
# @within function asset:sacred_treasure/*/trigger/2.check_condition

data modify storage asset:sacred_treasure TargetSlot set value 'offhand'
function asset_manager:sacred_treasure/check/