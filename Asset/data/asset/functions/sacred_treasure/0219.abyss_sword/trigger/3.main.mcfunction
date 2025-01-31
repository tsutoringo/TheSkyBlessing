#> asset:sacred_treasure/0219.abyss_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0219.abyss_sword/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 2 50 force @a[distance=..10]
    playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1

# テレポート処理
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run tp ~ ~-1 ~