#> asset:mob/0123.random_enemy_lv2/summon/3.6.random_ability
#
# 能力を得る
#
# @within function asset:mob/0123.random_enemy_lv2/summon/2.summon

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# tickで発動する能力
    # タックル攻撃
        execute if score $Random Temporary matches 0 run tag @e[type=zombie,tag=3F.This] add 3F.AbillityTickTackle
    # 周囲をスタンさせる
        execute if score $Random Temporary matches 1 run tag @e[type=zombie,tag=3F.This] add 3F.AbillityTickStan
    # バックステップする
        execute if score $Random Temporary matches 2 run tag @e[type=zombie,tag=3F.This] add 3F.AbillityTickBackstep
# リセット
    scoreboard players reset $Random Temporary

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# 被ダメで発動する能力
    # 加速する
        execute if score $Random Temporary matches 0 run tag @e[type=zombie,tag=3F.This] add 3F.AbillityDamageSpeed
    # テレポートする
        execute if score $Random Temporary matches 1 run tag @e[type=zombie,tag=3F.This] add 3F.AbillityDamageTP
    # 反撃する
        execute if score $Random Temporary matches 2 run tag @e[type=zombie,tag=3F.This] add 3F.AbillityDamageCounter
# リセット
    scoreboard players reset $Random Temporary