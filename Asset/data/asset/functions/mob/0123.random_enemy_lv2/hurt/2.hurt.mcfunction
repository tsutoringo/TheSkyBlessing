#> asset:mob/0123.random_enemy_lv2/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0123.random_enemy_lv2/hurt/1.trigger

# 加速
    execute if entity @s[tag=3F.AbillityDamageSpeed] run effect give @s speed 1 2 true

# 確立でテレポート
    execute if entity @s[tag=3F.AbillityDamageTP] if predicate lib:random_pass_per/20 run function asset:mob/0123.random_enemy_lv2/hurt/2.1.teleport

# 確立で反撃
    execute if entity @s[tag=3F.AbillityDamageCounter] if predicate lib:random_pass_per/20 run function asset:mob/0123.random_enemy_lv2/hurt/2.2.counter