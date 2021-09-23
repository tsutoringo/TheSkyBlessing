#> asset:mob/0123.random_enemy_lv2/summon/3.4.random_head
#
# 頭ランダム
#
# @within function asset:mob/0123.random_enemy_lv2/summon/2.summon

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $11 Const

# 見た目を変える
    execute if score $Random Temporary matches 0 run data modify storage asset:mob Armor.Head set value {id:"minecraft:dead_tube_coral_block",Count:1b}
    execute if score $Random Temporary matches 1 run data modify storage asset:mob Armor.Head set value {id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}}
    execute if score $Random Temporary matches 2 run data modify storage asset:mob Armor.Head set value {id:"minecraft:gilded_blackstone",Count:1b}
    execute if score $Random Temporary matches 3 run data modify storage asset:mob Armor.Head set value {id:"minecraft:sea_lantern",Count:1b}
    execute if score $Random Temporary matches 4 run data modify storage asset:mob Armor.Head set value {id:"minecraft:black_stained_glass",Count:1b}
    execute if score $Random Temporary matches 5 run data modify storage asset:mob Armor.Head set value {id:"minecraft:smooth_stone",Count:1b}
    execute if score $Random Temporary matches 6 run data modify storage asset:mob Armor.Head set value {id:"minecraft:crying_obsidian",Count:1b}
    execute if score $Random Temporary matches 7 run data modify storage asset:mob Armor.Head set value {id:"minecraft:anvil",Count:1b}
    execute if score $Random Temporary matches 8 run data modify storage asset:mob Armor.Head set value {id:"minecraft:lodestone",Count:1b}
    execute if score $Random Temporary matches 9 run data modify storage asset:mob Armor.Head set value {id:"minecraft:redstone_block",Count:1b}
    execute if score $Random Temporary matches 10 run data modify storage asset:mob Armor.Head set value {id:"minecraft:polished_deepslate",Count:1b}

# リセット
    scoreboard players reset $Random Temporary