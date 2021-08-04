#> asset:mob/0046.clock_of_despair/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0046.clock_of_despair/tick/1.trigger

# 演出


# 4tick毎に実行
    scoreboard players add @s 1A.Wait 1
    scoreboard players add @s 1A.ClockHand 1
    execute if score @s 1A.Wait matches 4.. rotated 0 0 run function asset:mob/0046.clock_of_despair/tick/particle
    execute if score @s 1A.Wait matches 4.. as @e[tag=1A.ClockHand,distance=..1,sort=nearest,limit=1] at @s rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/particle_2
    execute if score @s 1A.Wait matches 4.. as @e[tag=1A.ClockHand,distance=..1,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~0.075 ~
    execute if score @s 1A.ClockHand matches 15 run function asset:mob/0046.clock_of_despair/tick/2.1.clockhand
