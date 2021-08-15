#> asset:mob/0046.clock_of_despair/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0046.clock_of_despair/death/1.trigger

# 時計の針を消す
    kill @e[tag=1A.ClockHand,tag=Object,sort=nearest,limit=1]