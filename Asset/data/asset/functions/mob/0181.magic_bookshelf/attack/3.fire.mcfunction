#> asset:mob/0181.magic_bookshelf/attack/3.fire
#
#
#
# @within function asset:mob/0181.magic_bookshelf/attack/2.attack

# 演出
    execute at @p[tag=Victim,distance=..6] positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0181.magic_bookshelf/attack/4.fire_particle
    execute at @p[tag=Victim,distance=..6] run particle lava ~ ~1 ~ 0.15 0.4 0.15 0 20 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.blaze.shoot master @a ~ ~ ~ 0.8 0.7 0
    execute at @p[tag=Victim,distance=..6] run playsound block.beacon.power_select master @a ~ ~ ~ 0.6 0.8 0

# 火属性攻撃
    # 与えるダメージ
    data modify storage lib: Argument.Damage set value 28f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    data remove storage lib: Argument