#> asset:sacred_treasure/0688.soaring_leggings/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0688.soaring_leggings/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/legs

# ここから先は神器側の効果の処理を書く

# 演出
    particle cloud ~ ~0.5 ~ 0.4 0.15 0.4 0.05 10 normal @a
    playsound entity.wither.shoot master @a ~ ~ ~ 0.5 2

# フルセット
    execute if data storage asset:context id.all{head:686,chest:687,legs:688,feet:689} run function asset:sacred_treasure/0687.soaring_wing/7.fullset