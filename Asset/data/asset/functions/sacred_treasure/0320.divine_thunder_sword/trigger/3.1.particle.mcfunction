#> asset:sacred_treasure/0320.divine_thunder_sword/trigger/3.1.particle
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0320.divine_thunder_sword/trigger/3.main

# 演出
    particle dust 0.867 0.667 0.161 1 ~ ~2 ~ 0 2.5 0 0 50
    particle dust 1 1 0.161 1.5 ~ ~2 ~ 0 2.5 0 0 50
    particle minecraft:poof ~ ~ ~ 0.3 0 0.3 0.05 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2
    playsound item.trident.throw player @a ~ ~ ~ 1 1

#再起
    #function asset:sacred_treasure/0320.divine_thunder_sword/trigger/3.2.particle_line
    #scoreboard players reset $Line Temporary