#> asset:sacred_treasure/0270.angel_ray_lv.10/trigger/effect/find_target
#
#
#
# @within function asset:sacred_treasure/0270.angel_ray_lv.10/trigger/effect/*

tag @e[type=#lib:living,tag=!Uninterferable,distance=..0.75] add TargetCandidate
execute if entity @s[distance=..12] positioned ^ ^ ^0.5 run function asset:sacred_treasure/0270.angel_ray_lv.10/trigger/effect/find_target