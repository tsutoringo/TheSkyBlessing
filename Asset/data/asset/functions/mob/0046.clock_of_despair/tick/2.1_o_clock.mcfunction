#> asset:mob/0046.clock_of_despair/tick/2.1_o_clock
#
# 1時
#
# @within function asset:mob/0046.clock_of_despair/tick/2.tick

# 時間操作
    time set 19000

# タグ消去
    tag @s remove 1A.0Clock

# 演出
    playsound minecraft:block.respawn_anchor.set_spawn master @a


    

# メッセージ
    tellraw @p {"text":"【壱の刻】彼女は誓った。この世界の洗礼を。\nこの世界はやり直されるべきである。","color":"dark_purple","bold":true}
