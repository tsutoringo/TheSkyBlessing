#> asset:mob/0123.random_enemy_lv2/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0123.random_enemy_lv2/summon/1.trigger

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","3F.This"],DeathLootTable:"asset:mob/death/0123.random_enemy_lv2"}
# ID (int)
    data modify storage asset:mob ID set value 123
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    function asset:mob/0123.random_enemy_lv2/summon/3.1.random_name
# 属性
    function asset:mob/0123.random_enemy_lv2/summon/3.2.random_element
# 武器
    # メインハンド (Compound(Item)) (オプション)
        function asset:mob/0123.random_enemy_lv2/summon/3.3.random_weapon
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # ランダム頭
        function asset:mob/0123.random_enemy_lv2/summon/3.4.random_head
    # ランダム防具
        function asset:mob/0123.random_enemy_lv2/summon/3.5.random_armor
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 120
# 攻撃力 (double) (オプション)  最低値であり、追加属性ダメージは次で決める
    data modify storage asset:mob AttackDamage set value 4
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.2
# その他のパラメータ
    function asset:mob/0123.random_enemy_lv2/summon/3.5.random_parameter
# 特殊な能力
    function asset:mob/0123.random_enemy_lv2/summon/3.6.random_ability
# this削除
    tag @e[type=zombie,tag=3F.This] remove 3F.This

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon