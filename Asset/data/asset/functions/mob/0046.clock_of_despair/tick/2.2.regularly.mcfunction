#> asset:mob/0046.clock_of_despair/tick/2.2.regularly
#
# 4tick毎に定期的に実行
#
# @within function asset:mob/0046.clock_of_despair/tick/2.tick

# 演出
    execute positioned ~ ~0.1 ~ rotated 0 0 run function asset:mob/0046.clock_of_despair/tick/particle
    execute as @e[tag=1A.ClockHand,distance=..1,sort=nearest,limit=1] at @s positioned ~ ~0.1 ~ rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/particle_2
    execute as @e[tag=1A.ClockHand,distance=..1,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~0.3 ~
    scoreboard players set @s 1A.Wait 0

