#> asset:sacred_treasure/0471.stone_cutter_chainsaw/trigger/3.2.entity
#
# 攻撃先のエンティティに対する処理
#
# @within function asset:sacred_treasure/0471.stone_cutter_chainsaw/trigger/3.main

# 演出など
    particle block red_wool ~ ~1 ~ 0.1 0 0.1 1 30
    execute if entity @s[tag=D3.Critical] run particle block redstone_block ~ ~1 ~ 0 0 0 1 50
    playsound entity.blaze.hurt master @a ~ ~ ~ 0.2 0.1
    playsound block.sand.step master @p ~ ~ ~ 1.0 0.8
    execute if entity @s[tag=D3.Critical] run playsound item.totem.use master @p ~ ~ ~ 0.3 2.0

# ダメージ処理
    # 引数の設定
        # 与えるダメージ: 3
            data modify storage lib: Argument.Damage set value 5.0f
        # クリティカル時のダメージ: 5
            execute if entity @s[tag=D3.Critical] run data modify storage lib: Argument.Damage set value 8.0f
        # 第一属性
            data modify storage lib: Argument.AttackType set value "Physical"
    # 補正
        execute as @a[tag=this,distance=..5] run function lib:damage/modifier
    # 実行
        function lib:damage/
    # 開放
        data remove storage lib: Argument

# タグの開放
    tag @s remove D3.Critical