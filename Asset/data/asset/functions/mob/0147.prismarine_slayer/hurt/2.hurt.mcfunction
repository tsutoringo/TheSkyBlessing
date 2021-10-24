#> asset:mob/0147.prismarine_slayer/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0147.prismarine_slayer/hurt/1.trigger

# 演出
    particle dust 0.078 0.471 0.486 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 1 20 normal @a
    playsound minecraft:entity.guardian.hurt master @a ~ ~ ~ 0.6 1 0
    playsound minecraft:entity.generic.swim master @a ~ ~ ~ 0.5 0.7 0

# スピードバフ
    effect give @s speed 2 2 true