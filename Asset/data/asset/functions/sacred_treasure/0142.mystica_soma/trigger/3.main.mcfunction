#> asset:sacred_treasure/0142.mystica_soma/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0142.mystica_soma/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1

# MP回復
    scoreboard players set $Fluctuation Lib 10000
    function lib:mp/fluctuation

# HP回復
    data modify storage lib: Argument.Heal set value 10000f
    function lib:heal/modifier
    function lib:heal/

# リセット
    data remove storage lib: Argument