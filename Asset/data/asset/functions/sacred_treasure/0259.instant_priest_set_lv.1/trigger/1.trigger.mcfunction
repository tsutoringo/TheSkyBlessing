#> asset:sacred_treasure/0259.instant_priest_set_lv.1/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:259} run function asset:sacred_treasure/0259.instant_priest_set_lv.1/trigger/2.check_condition