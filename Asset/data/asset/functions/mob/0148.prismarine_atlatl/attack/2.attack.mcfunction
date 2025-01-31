#> asset:mob/0148.prismarine_atlatl/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0148.prismarine_atlatl/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..32] run particle splash ~ ~1.2 ~ 0.6 0.5 0.6 0 50 normal @a
    execute at @p[tag=Victim,distance=..32] run particle dust 0.145 0.792 0.812 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 1 30 normal @a
    execute at @p[tag=Victim,distance=..32] run playsound minecraft:entity.guardian.attack master @a ~ ~ ~ 0.8 1.5 0
    execute at @p[tag=Victim,distance=..32] run playsound entity.player.splash.high_speed master @a ~ ~ ~ 0.4 1.7 0
    execute at @p[tag=Victim,distance=..32] run playsound minecraft:item.trident.return master @a ~ ~ ~ 0.5 0 0

# バフを解除
    effect clear @p[tag=Victim,distance=..32] water_breathing
    effect clear @p[tag=Victim,distance=..32] night_vision
    effect clear @p[tag=Victim,distance=..32] dolphins_grace

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 26f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
# リセット
    data remove storage lib: Argument