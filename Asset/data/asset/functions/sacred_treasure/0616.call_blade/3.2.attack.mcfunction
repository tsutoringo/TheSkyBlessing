#> asset:sacred_treasure/0616.call_blade/3.2.attack
#
#
#
# @within function asset:sacred_treasure/0616.call_blade/3.1.tick

# 自分にタグ付与
    tag @s add 9W.This

# 敵にタグを付与、最寄りのプレイヤーから近いモブを狙う
    execute as @s at @p run tag @e[tag=Enemy,tag=!9W.Blade,sort=nearest,limit=1] add 9W.Target

# 敵の元へテレポート
    tp @s ~ ~ ~ facing entity @e[tag=9W.Target,limit=1]
    execute positioned as @e[tag=9W.Target,limit=1] run tp @s ~ ~ ~

# 演出
    execute at @e[tag=9W.Target,limit=1] run particle sweep_attack ~ ~1.3 ~ 0 0 0 1 4
    playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1.7

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "None"
    # 補正function
        execute as @a if score @s UserID = @e[type=vex,tag=9W.This,limit=1] 9W.UserID run function lib:damage/modifier
    # 対象に
        execute as @e[tag=9W.Target,limit=1] run function lib:damage/

# 貫通させる
    execute at @s run tp @s ^ ^ ^2

# 放心状態
    data merge entity @s {NoAI:1b}

# リセット
    data remove storage lib: Argument
    tag @s remove 9W.This
    tag @e[tag=9W.Target] remove 9W.Target
