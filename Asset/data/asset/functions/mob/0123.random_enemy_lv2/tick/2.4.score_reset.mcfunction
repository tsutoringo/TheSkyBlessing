#> asset:mob/0123.random_enemy_lv2/tick/2.4.score_reset
#
# スコアにランダム性をもたせて戻す
#
# @within function asset:mob/0123.random_enemy_lv2/tick/2.tick


# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $11 Const

# スコアセット
    scoreboard players operation @s 3F.Tick = $Random Temporary

# リセット
    scoreboard players reset $Random Temporary