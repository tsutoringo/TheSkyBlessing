#> api:sacred_treasure/spawn/from_id
#
# 神器Assetの入手処理を叩く処理
#
# @input storage api: Argument.ID
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
# 代入
    data modify storage asset:context id set from storage api: Argument.ID
    data modify storage asset:context Type set value "drop"
# 呼び出し
    execute if data storage api: Argument.ID run function #asset:sacred_treasure/give
# リセット
    data remove storage asset:context id
    data remove storage asset:context Type
    data remove storage api: Argument.ID