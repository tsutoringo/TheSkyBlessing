#> asset:sacred_treasure/0716.solar_armor/melee_light_level/11-15
#
#
#
# @within function asset:sacred_treasure/0716.solar_armor/9.melee

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run particle end_rod ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run particle dust 1000000000 1000000000 3 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 10 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run particle dust 0 5000 100000000000 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 10 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run playsound block.beacon.power_select master @a ~ ~ ~ 0.4 2 0

# ダメージ
    data modify storage lib: Argument.Damage set value 12f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run function lib:damage/
    data remove storage lib: Argument