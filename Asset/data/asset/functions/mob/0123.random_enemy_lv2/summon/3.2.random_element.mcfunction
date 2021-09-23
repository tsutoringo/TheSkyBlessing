#> asset:mob/0123.random_enemy_lv2/summon/3.2.random_element
#
# 攻撃属性とかの属性をキメます
#
# @within function asset:mob/0123.random_enemy_lv2/summon/2.summon

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const

# 属性用のタグを与える(この属性は武器の見た目にも影響する)
    execute if score $Random Temporary matches 0 run tag @e[type=zombie,tag=3F.This] add 3F.None
    execute if score $Random Temporary matches 1 run tag @e[type=zombie,tag=3F.This] add 3F.Fire
    execute if score $Random Temporary matches 2 run tag @e[type=zombie,tag=3F.This] add 3F.Water
    execute if score $Random Temporary matches 3 run tag @e[type=zombie,tag=3F.This] add 3F.Thunder

# リセット
    scoreboard players reset $Random Temporary