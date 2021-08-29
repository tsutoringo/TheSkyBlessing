#> asset:mob/0068.guardian_of_the_night/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0068.guardian_of_the_night/attack/1.trigger


# 引数の設定
    # 与えるダメー
        data modify storage lib: Argument.Damage set value 15.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# ぶん殴った相手にダメージ
    execute as @a[tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument