#> asset:mob/0123.random_enemy_lv2/summon/3.5.random_armor
#
#
#
# @within function asset:mob/0123.random_enemy_lv2/summon/2.summon


# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $7 Const

# 見た目を変える
    execute if score $Random Temporary matches 0 run data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8192000}}}
    execute if score $Random Temporary matches 0 run data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8192000}}}
    execute if score $Random Temporary matches 0 run data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8192000}}}

    execute if score $Random Temporary matches 1 run data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11764480}}}
    execute if score $Random Temporary matches 1 run data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11764480}}}
    execute if score $Random Temporary matches 1 run data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:11764480}}}

    execute if score $Random Temporary matches 2 run data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7910176}}}
    execute if score $Random Temporary matches 2 run data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7910176}}}
    execute if score $Random Temporary matches 2 run data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7910176}}}

    execute if score $Random Temporary matches 3 run data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2156215}}}
    execute if score $Random Temporary matches 3 run data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2156215}}}
    execute if score $Random Temporary matches 3 run data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2156215}}}

    execute if score $Random Temporary matches 4 run data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3611811}}}
    execute if score $Random Temporary matches 4 run data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3611811}}}
    execute if score $Random Temporary matches 4 run data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3611811}}}

    execute if score $Random Temporary matches 5 run data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10431139}}}
    execute if score $Random Temporary matches 5 run data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10431139}}}
    execute if score $Random Temporary matches 5 run data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:10431139}}}

    execute if score $Random Temporary matches 6 run data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8032163}}}
    execute if score $Random Temporary matches 6 run data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8032163}}}
    execute if score $Random Temporary matches 6 run data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8032163}}}


# リセット
    scoreboard players reset $Random Temporary