#> asset:sacred_treasure/0616.call_blade/3.1.tick
#
# 毎tick実行
#
# @within function
#    asset:sacred_treasure/0616.call_blade/3.main
#    asset:sacred_treasure/0616.call_blade/3.1.tick

# スコアを増やす
    scoreboard players add @e[type=vex,tag=9W.Blade] 9W.BladeCool 1

# 攻撃をさせる
    execute as @e[type=vex,tag=9W.Blade,scores={9W.BladeCool=10}] at @s if entity @p[distance=..40] at @p if entity @e[tag=Enemy,tag=!9W.Blade,distance=..15] at @s run function asset:sacred_treasure/0616.call_blade/3.2.attack

# 放心状態を解除
    execute as @e[type=vex,tag=9W.Blade,scores={9W.BladeCool=13}] at @s run data merge entity @s {NoAI:0b}

# スコアを戻す
    scoreboard players set @e[type=vex,tag=9W.Blade,scores={9W.BladeCool=13}] 9W.BladeCool 0

# 再帰処理
    execute if entity @e[type=vex,tag=9W.Blade,limit=1] run schedule function asset:sacred_treasure/0616.call_blade/3.1.tick 1t replace