#> asset:mob/0123.random_enemy_lv2/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0123.random_enemy_lv2/attack/1.trigger


# ダメージ
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get @s 3F.AttackDamage
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        execute if entity @s[tag=3F.None] run data modify storage lib: Argument.ElementType set value "None"
        execute if entity @s[tag=3F.Fire] run data modify storage lib: Argument.ElementType set value "Fire"
        execute if entity @s[tag=3F.Water] run data modify storage lib: Argument.ElementType set value "Water"
        execute if entity @s[tag=3F.Thunder] run data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument