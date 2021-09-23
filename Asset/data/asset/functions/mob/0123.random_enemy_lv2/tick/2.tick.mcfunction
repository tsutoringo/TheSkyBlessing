#> asset:mob/0123.random_enemy_lv2/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0123.random_enemy_lv2/tick/1.trigger

# スコアを増やしていく
    scoreboard players add @s 3F.Tick 1

# 能力発動
    # 周囲にプレイヤーがいる時突進攻撃
        execute if entity @s[tag=3F.AbillityTickTackle] if score @s 3F.Tick matches 90.. if entity @p[distance=..14] run function asset:mob/0123.random_enemy_lv2/tick/2.1.tackle
    # 周囲にプレイヤーがいる時スタン攻撃
        execute if entity @s[tag=3F.AbillityTickStan] if score @s 3F.Tick matches 90.. if entity @p[distance=..6] run function asset:mob/0123.random_enemy_lv2/tick/2.2.stan_attack
    # 周囲にプレイヤーがいる時バックステップ
        execute if entity @s[tag=3F.AbillityTickBackstep] if score @s 3F.Tick matches 90.. if entity @p[distance=..10] run function asset:mob/0123.random_enemy_lv2/tick/2.3.backstep

# スコアを戻す（ちょっとだけランダム性をもたせる）
    execute if score @s 3F.Tick matches 90.. run function asset:mob/0123.random_enemy_lv2/tick/2.4.score_reset