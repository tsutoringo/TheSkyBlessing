#> asset:mob/0046.clock_of_despair/tick/2.1.clockhand
#
# 時計の音
#
# @within function asset:mob/0046.clock_of_despair/tick/2.tick

# 演出
    playsound minecraft:block.stone_button.click_on ambient @a ~ ~ ~ 1 1.4

# スコア
    scoreboard players set @s 1A.ClockHand 0

    # 周囲に犬がいたら殺す
    execute if entity @e[type=wolf,tag=!Uninterferable,distance=..30] run playsound block.respawn_anchor.deplete master @a[distance=..30] ~ ~ ~ 1 1 1
    execute if entity @e[type=wolf,tag=!Uninterferable,distance=..30] as @e[type=wolf,tag=!Uninterferable,distance=..30] at @s positioned ~ ~0.1 ~ rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/particle_3
    execute if entity @e[type=wolf,tag=!Uninterferable,distance=..30] run kill @e[type=wolf,tag=!Uninterferable,distance=..30]