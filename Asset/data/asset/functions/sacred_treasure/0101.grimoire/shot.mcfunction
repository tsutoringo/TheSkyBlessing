#> asset:sacred_treasure/0101.grimoire/shot
#
# 魔法の発射処理
#
# @within function
#   asset:sacred_treasure/0101.grimoire/3.main
#   asset:sacred_treasure/0101.grimoire/shot

# 演出
    # 火
        execute if score @s Temporary matches 0 run particle minecraft:dolphin ~ ~ ~ 0.1 0.1 0.1 1 30 force
        playsound entity.squid.death master @a ~ ~ ~ 1.0 2.0

    # 水

    # 雷

    # 無属性

# 着弾検知
    execute as @e[tag=Enemy,distance=..1.5,limit=1] run tag @s add 1B.HitEntity
    execute if entity @e[tag=1B.HitEntity] run tag @s add 1B.HitFlag

# 着弾処理
    execute as @e[tag=1B.HitEntity] run function asset:sacred_treasure/0101.grimoire/hit

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[tag=!1B.HitFlag,distance=..30] run function asset:sacred_treasure/0101.grimoire/shot