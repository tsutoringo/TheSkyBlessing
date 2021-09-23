#> asset:mob/0123.random_enemy_lv2/summon/3.5.random_parameter
#
#
#
# @within function asset:mob/0123.random_enemy_lv2/summon/2.summon



# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const

# パラメータ変更
    # 安定型
        execute if score $Random Temporary matches 0 run scoreboard players set @e[type=zombie,tag=3F.This] 3F.AttackDamage 3
        execute if score $Random Temporary matches 0 run data modify storage asset:mob Defense set value 13
        execute if score $Random Temporary matches 0 run data modify storage asset:mob Speed set value 0.25
    # 攻撃特化
        execute if score $Random Temporary matches 1 run scoreboard players set @e[type=zombie,tag=3F.This] 3F.AttackDamage 7
        execute if score $Random Temporary matches 1 run data modify storage asset:mob Defense set value 8
        execute if score $Random Temporary matches 1 run data modify storage asset:mob Speed set value 0.22
    # 防御特化
        execute if score $Random Temporary matches 2 run scoreboard players set @e[type=zombie,tag=3F.This] 3F.AttackDamage 11
        execute if score $Random Temporary matches 2 run data modify storage asset:mob Defense set value 18
        execute if score $Random Temporary matches 2 run data modify storage asset:mob Speed set value 0.20
    # 速度特化
        execute if score $Random Temporary matches 3 run scoreboard players set @e[type=zombie,tag=3F.This] 3F.AttackDamage 2
        execute if score $Random Temporary matches 3 run data modify storage asset:mob Defense set value 8
        execute if score $Random Temporary matches 3 run data modify storage asset:mob Speed set value 0.3
# リセット
    scoreboard players reset $Random Temporary

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $8 Const

# パラメータ変更
    # なにもない(スコア0の時。明示的にこうしておく)

    # 火に強い
        execute if score $Random Temporary matches 1 run data modify storage asset:mob Resist.Fire set value 0.6
    # 水に強い
        execute if score $Random Temporary matches 2 run data modify storage asset:mob Resist.Water set value 0.6
    # 雷に強い
        execute if score $Random Temporary matches 3 run data modify storage asset:mob Resist.Water set value 0.6
    # 物理に強い
        execute if score $Random Temporary matches 4 run data modify storage asset:mob Resist.Physical set value 0.8
    # 魔法に強い
        execute if score $Random Temporary matches 5 run data modify storage asset:mob Resist.Magic set value 0.8
    # 第二属性に強い
        execute if score $Random Temporary matches 6 run data modify storage asset:mob Resist.Fire set value 0.8
        execute if score $Random Temporary matches 6 run data modify storage asset:mob Resist.Water set value 0.8
        execute if score $Random Temporary matches 6 run data modify storage asset:mob Resist.Thunder set value 0.8
    # 第一属性に強い
        execute if score $Random Temporary matches 7 run data modify storage asset:mob Resist.Physical set value 0.9
        execute if score $Random Temporary matches 7 run data modify storage asset:mob Resist.Magic set value 0.9
