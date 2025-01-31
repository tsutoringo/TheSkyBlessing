#> asset:mob/0059.jack_o_lantern/attack/3.glowing_state
#
#
#
# @within function asset:mob/0059.jack_o_lantern/attack/2.attack

# 発光状態(tick参照)のとき火属性攻撃

# 演出
    particle flame ~ ~1.5 ~ 0.5 0.5 0.5 0 10 normal @a

    #火属性ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 9.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージ対象
        execute as @p[tag=Victim] run function lib:damage/
    # リセット
        data remove storage lib: Argument
