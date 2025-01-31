#> asset:trader/0006.armor_merchant/register/register
#
#
#
# @within function asset:trader/0006.armor_merchant/register/


# 重複防止レジストリに登録
    data modify storage asset:trader DPR append value {D:overworld,X:-29,Y:21,Z:-44}

# ID (int)
    data modify storage asset:trader ID set value 6
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"防具商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value -45f

# 取引 革防具
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value 90

# 取引 チェーン防具
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value 92

# 取引 鉄防具
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:2b}
    data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:iron_ingot",Count:12b}
    data modify storage asset:trader Trades[-1].Sell set value 91

# 取引 ダイヤ防具
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:2b}
    data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:diamond",Count:12d}
    data modify storage asset:trader Trades[-1].Sell set value 93

# 登録
    function asset:trader/common/register