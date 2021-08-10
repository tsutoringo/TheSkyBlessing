#> asset:mob/0082.amethyst_shrinker/tick/6.element_damage
#
#
#
# @within function asset:mob/0082.amethyst_shrinker/tick/4.recursion

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 6.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function lib:damage/
# リセット
    data remove storage lib: Argument


# 演出
    playsound block.amethyst_cluster.break master @p[distance=..1.5] ~ ~ ~ 1 0.1 0