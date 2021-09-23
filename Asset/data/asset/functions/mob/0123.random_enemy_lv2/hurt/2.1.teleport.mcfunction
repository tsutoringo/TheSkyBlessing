#> asset:mob/0123.random_enemy_lv2/hurt/2.1.teleport
#
# テレポート（雷弄者と処理一緒）
#
# @within function asset:mob/0123.random_enemy_lv2/hurt/2.hurt
# @private
#declare tag SpreadMarker

# 演出
   particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1

# ワープ
    execute at @p[tag=Attacker] run summon marker ~ ~25 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 20
    data modify storage lib: Argument.Spread set value 3d
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p[tag=Attacker] positioned ~ ~25 ~ rotated ~ 90 run function lib:forward_spreader/circle
    execute at @p[tag=Attacker] positioned ~ ~25 ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^25 run tp @s ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker]
