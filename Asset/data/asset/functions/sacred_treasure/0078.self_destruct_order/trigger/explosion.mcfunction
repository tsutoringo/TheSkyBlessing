#> asset:sacred_treasure/0078.self_destruct_order/trigger/explosion
#
#
#
# @within function
#    asset:sacred_treasure/0078.self_destruct_order/trigger/count_down

# ダメージ処理(アイアンゴーレム)
    # 与えるダメージ = 50
        data modify storage lib: Argument.Damage set value 50.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.BypassResist set value true
# 対象指定
    execute at @e[type=iron_golem,tag=26.GolemBomb] as @e[type=#lib:living,tag=!Uninterferable,tag=!26.GolemBomb,distance=..5] run function lib:damage/
# リセット
    data remove storage lib: Argument

# ダメージ処理(スノウゴーレム)
    # 与えるダメージ = 25
        data modify storage lib: Argument.Damage set value 25.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.BypassResist set value true
# 対象指定
    execute at @e[type=snow_golem,tag=26.GolemBomb] as @e[type=#lib:living,tag=!Uninterferable,tag=!26.GolemBomb,distance=..5] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 演出(アイアンゴーレム)
    execute at @e[type=iron_golem,tag=26.GolemBomb] run particle minecraft:explosion ~ ~ ~ 3 3 3 1 100 force @a[distance=..30]
    execute at @e[type=iron_golem,tag=26.GolemBomb] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.1

#演出(スノウゴーレム)
    execute at @e[type=snow_golem,tag=26.GolemBomb] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 100 force @a[distance=..30]
    execute at @e[type=snow_golem,tag=26.GolemBomb] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.1

# 自滅
    tp @e[tag=26.GolemBomb] ~ -100 ~
    kill @e[tag=26.GolemBomb]

# 後処理
    scoreboard players reset @s 26.TickCount
    tag @s remove 26.Owner