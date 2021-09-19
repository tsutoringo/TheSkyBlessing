#> asset:sacred_treasure/0642.raimei_helmet/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0642.raimei_helmet/dis_equip/
    #declare tag HV.Full

# タグを消す(チェストプレート側で実行)
    execute if entity @s[tag=HV.Full] run function asset:sacred_treasure/0643.raimei_chestplate/3.3.tag_delete

# 引数の設定
    # UUID
    data modify storage api: Argument.UUID set value [I;1,1,642,6]
# 補正の削除
    function api:player_modifier/defense/thunder/remove
