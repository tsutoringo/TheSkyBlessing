#> asset:mob/0123.random_enemy_lv2/tick/2.2.stan_attack
#
#
#
# @within function asset:mob/0123.random_enemy_lv2/tick/2.tick

# 演出
    execute positioned ~ ~0.1 ~ run function asset:mob/0123.random_enemy_lv2/tick/particle
    playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 1 0.4

# 周囲のプレイヤーに攻撃
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 2
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 攻撃
    execute as @a[distance=..4] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 周囲4mのプレイヤーに鈍足
    effect give @a[distance=..4] slowness 2 3
# 自分も遅くなる
    effect give @s slowness 3 3