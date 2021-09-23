#> asset:mob/0123.random_enemy_lv2/tick/2.3.backstep
#
#　バックステップ
#
# @within function asset:mob/0123.random_enemy_lv2/tick/2.tick
#> private
# @private
    #declare score_holder $VectorMagnitude

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0.8

# 突進する
    scoreboard players set $VectorMagnitude Lib 100
    execute facing entity @p feet rotated ~180 ~-10 run function lib:motion/

# エフェクト
    effect give @s speed 1 6

# リセット
    scoreboard players reset $VectorMagnitude