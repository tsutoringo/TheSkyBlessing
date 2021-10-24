#> asset:mob/0124.skull_harpy/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0124.skull_harpy/hurt/1.trigger
#> private
# @private
    #declare score_holder $VectorMagnitude

# 演出
    particle minecraft:cloud ~ ~1 ~ 0 0 0 0.4 20
    playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3

# プレイヤーから離れる
    scoreboard players set $VectorMagnitude Lib 100
    execute facing entity @p eyes rotated ~180 -10 run function lib:motion/

# リセット
    scoreboard players reset $VectorMagnitude