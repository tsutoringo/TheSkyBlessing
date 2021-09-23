#> asset:mob/0123.random_enemy_lv2/tick/2.1.tackle
#
#　中身はチェーンソーゾンビとほぼ同じ
#
# @within function asset:mob/0123.random_enemy_lv2/tick/2.tick
#> private
# @private
    #declare score_holder $VectorMagnitude

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0.8

# 突進する
    scoreboard players set $VectorMagnitude Lib 200
    execute facing entity @p feet rotated ~ ~-10 run function lib:motion/

# リセット
    scoreboard players reset $VectorMagnitude