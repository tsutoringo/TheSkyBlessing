#> asset:sacred_treasure/0101.grimoire/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0101.grimoire/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 魔法の属性をランダムに決める
    # 0~3の乱数取得
        execute store result score @s Temporary run function lib:random/
        scoreboard players operation @s Temporary %= $4 Const

# 魔法発射
    execute anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/0101.grimoire/shot

# リセット
    tag @e[tag=1B.HitEntity] remove 1B.HitEntity
    tag @s remove 1B.HitFlag
    scoreboard players reset @s Temporary