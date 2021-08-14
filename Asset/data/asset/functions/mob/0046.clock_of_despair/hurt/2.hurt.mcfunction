#> asset:mob/0046.clock_of_despair/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0046.clock_of_despair/hurt/1.trigger

# 0時の時の処理
    execute if entity @s[tag=1A.0Clock] run playsound block.anvil.place master @a ~ ~ ~ 1 1.6