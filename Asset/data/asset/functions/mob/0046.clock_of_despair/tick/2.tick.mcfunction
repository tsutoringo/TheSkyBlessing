#> asset:mob/0046.clock_of_despair/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0046.clock_of_despair/tick/1.trigger

# 時針を鳴らす
    scoreboard players add @s 1A.ClockHand 1
    execute if score @s 1A.ClockHand matches 15 run function asset:mob/0046.clock_of_despair/tick/2.1.clockhand

# 15tick毎に実行
    scoreboard players add @s 1A.Wait 1
    execute if score @s 1A.Wait matches 15.. run function asset:mob/0046.clock_of_despair/tick/2.2.regularly

# 時間で発動
    scoreboard players add @s 1A.BossTime 1
    execute if score @s 1A.BossTime matches 400 run function asset:mob/0046.clock_of_despair/tick/2.1_o_clock
    execute if score @s 1A.BossTime matches 800 run function asset:mob/0046.clock_of_despair/tick/2.2_o_clock
    execute if score @s 1A.BossTime matches 1200 run function asset:mob/0046.clock_of_despair/tick/2.3_o_clock
    execute if score @s 1A.BossTime matches 1600 run function asset:mob/0046.clock_of_despair/tick/2.4_o_clock
    execute if score @s 1A.BossTime matches 2000 run function asset:mob/0046.clock_of_despair/tick/2.5_o_clock
    execute if score @s 1A.BossTime matches 2400 run function asset:mob/0046.clock_of_despair/tick/2.6_o_clock
    execute if score @s 1A.BossTime matches 2800 run function asset:mob/0046.clock_of_despair/tick/2.7_o_clock
    execute if score @s 1A.BossTime matches 3200 run function asset:mob/0046.clock_of_despair/tick/2.8_o_clock
    execute if score @s 1A.BossTime matches 3600 run function asset:mob/0046.clock_of_despair/tick/2.9_o_clock
    execute if score @s 1A.BossTime matches 4000 run function asset:mob/0046.clock_of_despair/tick/2.10_o_clock
    execute if score @s 1A.BossTime matches 4400 run function asset:mob/0046.clock_of_despair/tick/2.11_o_clock
    execute if score @s 1A.BossTime matches 4800 run function asset:mob/0046.clock_of_despair/tick/2.12_o_clock


# 0時の時の処理
    execute if entity @s[tag=1A.0Clock] run effect give @s resistance 1 3 true