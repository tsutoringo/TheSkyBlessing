#> asset:mob/0123.random_enemy_lv2/summon/3.3.random_weapon
#
# 武器の見た目を適当にする
#
# @within function asset:mob/0123.random_enemy_lv2/summon/2.summon

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const

# 武器の見た目を変える
    # 無属性
        execute if score $Random Temporary matches 0 if entity @e[type=zombie,tag=3F.This,tag=3F.None] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:iron_sword",Count:1b}
        execute if score $Random Temporary matches 1 if entity @e[type=zombie,tag=3F.This,tag=3F.None] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:288}}
        execute if score $Random Temporary matches 2 if entity @e[type=zombie,tag=3F.This,tag=3F.None] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:733}}
        execute if score $Random Temporary matches 3 if entity @e[type=zombie,tag=3F.This,tag=3F.None] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:iron_axe",Count:1b}

    # 火属性
        execute if score $Random Temporary matches 0 if entity @e[type=zombie,tag=3F.This,tag=3F.Fire] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:312}}
        execute if score $Random Temporary matches 1 if entity @e[type=zombie,tag=3F.This,tag=3F.Fire] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:313}}
        execute if score $Random Temporary matches 2 if entity @e[type=zombie,tag=3F.This,tag=3F.Fire] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20029}}
        execute if score $Random Temporary matches 3 if entity @e[type=zombie,tag=3F.This,tag=3F.Fire] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20030}}

    # 水属性
        execute if score $Random Temporary matches 0 if entity @e[type=zombie,tag=3F.This,tag=3F.Water] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:315}}
        execute if score $Random Temporary matches 1 if entity @e[type=zombie,tag=3F.This,tag=3F.Water] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:316}}
        execute if score $Random Temporary matches 2 if entity @e[type=zombie,tag=3F.This,tag=3F.Water] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20031}}
        execute if score $Random Temporary matches 3 if entity @e[type=zombie,tag=3F.This,tag=3F.Water] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20032}}

    # 雷属性
        execute if score $Random Temporary matches 0 if entity @e[type=zombie,tag=3F.This,tag=3F.Thunder] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:318}}
        execute if score $Random Temporary matches 1 if entity @e[type=zombie,tag=3F.This,tag=3F.Thunder] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:319}}
        execute if score $Random Temporary matches 2 if entity @e[type=zombie,tag=3F.This,tag=3F.Thunder] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20033}}
        execute if score $Random Temporary matches 3 if entity @e[type=zombie,tag=3F.This,tag=3F.Thunder] run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20034}}

# リセット
    scoreboard players reset $Random Temporary