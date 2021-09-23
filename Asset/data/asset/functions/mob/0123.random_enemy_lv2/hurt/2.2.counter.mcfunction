#> asset:mob/0123.random_enemy_lv2/hurt/2.2.counter
#
# カウンター（プレイヤーをぶっ飛ばす）
#
# @within function asset:mob/0123.random_enemy_lv2/hurt/2.hurt

# ヴィンディケーターを召喚（次tick死亡）
    execute as @p at @s run summon vindicator ~ ~ ~ {Johnny:1b,Silent:1b,Invulnerable:1b,Tags:["3F.Knockback","3F.VindicatorThis"],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019,Enchantments:[{id:"minecraft:knockback",lvl:4s}]}},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1980}],Attributes:[{Name:"generic.attack_damage",Base:2}]}
# 向きを自分と逆に合わせる（ベクトルが変わる）
    execute as @e[type=vindicator,tag=3F.VindicatorThis] at @s run tp @s @p
    execute as @e[type=vindicator,tag=3F.VindicatorThis] at @s run tp @s ~ ~ ~ ~180 ~
# タグを消す
    tag @e[type=vindicator,tag=3F.VindicatorThis] remove 3F.VindicatorThis

# 1tick後にヴィンディケーターに消えてもらう
    schedule function asset:mob/0123.random_enemy_lv2/hurt/2.3.vindicatorkill 11t