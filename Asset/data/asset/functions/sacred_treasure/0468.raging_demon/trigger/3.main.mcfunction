#> asset:sacred_treasure/0468.raging_demon/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0468.raging_demon/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 防御無視・補正なし・物理・無属性の20のダメージを与える
    data modify storage lib: Argument.Damage set value 20f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.BypassResist set value true
    data modify storage lib: Argument.FixedDamage set value true
    function lib:damage/modifier
    execute as @e[tag=D0.Target] run function lib:damage/

# リセット
    data remove storage lib: Argument
    tag @e[tag=D0.Target] remove D0.Target