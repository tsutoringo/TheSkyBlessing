#> asset:sacred_treasure/0073.suzuran_charm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0073.suzuran_charm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 物理無属性ダメージ:25
    data modify storage lib: Argument.Damage set value 25.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 敵に衰弱を付与
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run effect give @s wither 1000000 4 false

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.0001 500 normal @a[distance=..30]
    playsound minecraft:entity.splash_potion.break master @a[distance=..30] ~ ~ ~ 1 0.5

# スズラン減少
    clear @s lily_of_the_valley 1