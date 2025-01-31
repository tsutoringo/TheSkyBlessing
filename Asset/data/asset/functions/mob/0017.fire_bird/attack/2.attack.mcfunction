#> asset:mob/0017.fire_bird/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0017.fire_bird/attack/1.trigger

# 演出
    execute at @p[tag=Victim] run particle flame ~ ~1 ~ 0.8 0.8 0.8 0 20 normal @a
    execute at @p[tag=Victim] run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 2 1 0

# 属性ダメージ
   # 与えるダメージ
        data modify storage lib: Argument.Damage set value 9.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正functionを実行
        function lib:damage/modifier
    # 範囲5m以内のゾンビを対象に
        execute as @p[tag=Victim] run function lib:damage/
    # リセット
        data remove storage lib: Argument