#> asset:mob/0185.tutankhamen/tick/magic_square/02.1st_square
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/magic_square/01.main

# 演出
    playsound entity.evoker.prepare_summon master @a[distance=..20] ~ ~ ~ 0.6 1 0.4

# ダメージ
    execute if score @s 55.Tick matches 130 if entity @a[gamemode=!creative,gamemode=!spectator,distance=..2] run function asset:mob/0185.tutankhamen/tick/magic_square/07.1st_damage

# 最内円
    particle witch ^0 ^ ^-2 0 0 0 0 1
    particle witch ^0.20902 ^ ^-1.98877 0 0 0 0 1
    particle witch ^0.41572 ^ ^-1.95584 0 0 0 0 1
    particle witch ^0.61785 ^ ^-1.90156 0 0 0 0 1
    particle witch ^0.81323 ^ ^-1.82654 0 0 0 0 1
    particle witch ^0.99973 ^ ^-1.73159 0 0 0 0 1
    particle witch ^1.17535 ^ ^-1.61772 0 0 0 0 1
    particle witch ^1.33816 ^ ^-1.48618 0 0 0 0 1
    particle witch ^1.48618 ^ ^-1.33816 0 0 0 0 1
    particle witch ^1.61772 ^ ^-1.17535 0 0 0 0 1
    particle witch ^1.73159 ^ ^-0.99973 0 0 0 0 1
    particle witch ^1.82654 ^ ^-0.81323 0 0 0 0 1
    particle witch ^1.90156 ^ ^-0.61785 0 0 0 0 1
    particle witch ^1.95584 ^ ^-0.41572 0 0 0 0 1
    particle witch ^1.98877 ^ ^-0.20902 0 0 0 0 1
    particle witch ^2 ^ ^0 0 0 0 0 1
    particle witch ^1.98877 ^ ^0.20902 0 0 0 0 1
    particle witch ^1.95584 ^ ^0.41572 0 0 0 0 1
    particle witch ^1.90156 ^ ^0.61785 0 0 0 0 1
    particle witch ^1.82654 ^ ^0.81323 0 0 0 0 1
    particle witch ^1.73159 ^ ^0.99973 0 0 0 0 1
    particle witch ^1.61772 ^ ^1.17535 0 0 0 0 1
    particle witch ^1.48618 ^ ^1.33816 0 0 0 0 1
    particle witch ^1.33816 ^ ^1.48618 0 0 0 0 1
    particle witch ^1.17535 ^ ^1.61772 0 0 0 0 1
    particle witch ^0.99973 ^ ^1.73159 0 0 0 0 1
    particle witch ^0.81323 ^ ^1.82654 0 0 0 0 1
    particle witch ^0.61785 ^ ^1.90156 0 0 0 0 1
    particle witch ^0.41572 ^ ^1.95584 0 0 0 0 1
    particle witch ^0.20902 ^ ^1.98877 0 0 0 0 1
    particle witch ^0 ^ ^2 0 0 0 0 1
    particle witch ^-0.20902 ^ ^1.98877 0 0 0 0 1
    particle witch ^-0.41572 ^ ^1.95584 0 0 0 0 1
    particle witch ^-0.61785 ^ ^1.90156 0 0 0 0 1
    particle witch ^-0.81323 ^ ^1.82654 0 0 0 0 1
    particle witch ^-0.99973 ^ ^1.73159 0 0 0 0 1
    particle witch ^-1.17535 ^ ^1.61772 0 0 0 0 1
    particle witch ^-1.33816 ^ ^1.48618 0 0 0 0 1
    particle witch ^-1.48618 ^ ^1.33816 0 0 0 0 1
    particle witch ^-1.61772 ^ ^1.17535 0 0 0 0 1
    particle witch ^-1.73159 ^ ^0.99973 0 0 0 0 1
    particle witch ^-1.82654 ^ ^0.81323 0 0 0 0 1
    particle witch ^-1.90156 ^ ^0.61785 0 0 0 0 1
    particle witch ^-1.95584 ^ ^0.41572 0 0 0 0 1
    particle witch ^-1.98877 ^ ^0.20902 0 0 0 0 1
    particle witch ^-2 ^ ^0 0 0 0 0 1
    particle witch ^-1.98877 ^ ^-0.20902 0 0 0 0 1
    particle witch ^-1.95584 ^ ^-0.41572 0 0 0 0 1
    particle witch ^-1.90156 ^ ^-0.61785 0 0 0 0 1
    particle witch ^-1.82654 ^ ^-0.81323 0 0 0 0 1
    particle witch ^-1.73159 ^ ^-0.99973 0 0 0 0 1
    particle witch ^-1.61772 ^ ^-1.17535 0 0 0 0 1
    particle witch ^-1.48618 ^ ^-1.33816 0 0 0 0 1
    particle witch ^-1.33816 ^ ^-1.48618 0 0 0 0 1
    particle witch ^-1.17535 ^ ^-1.61772 0 0 0 0 1
    particle witch ^-0.99973 ^ ^-1.73159 0 0 0 0 1
    particle witch ^-0.81323 ^ ^-1.82654 0 0 0 0 1
    particle witch ^-0.61785 ^ ^-1.90156 0 0 0 0 1
    particle witch ^-0.41572 ^ ^-1.95584 0 0 0 0 1
    particle witch ^-0.20902 ^ ^-1.98877 0 0 0 0 1
