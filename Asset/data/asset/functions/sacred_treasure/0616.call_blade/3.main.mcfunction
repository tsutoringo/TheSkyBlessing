#> asset:sacred_treasure/0616.call_blade/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0616.call_blade/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 現状の開発環境だと自動的にEnemyがついてしまうので攻撃時に自身を除外する処理を入れています
# 修正次第神器側の処理も変えること

# 剣召喚
    execute anchored eyes positioned ^ ^ ^2 run summon vex ~ ~-0.5 ~ {Silent:1b,Invulnerable:0b,Health:10f,LifeTicks:20,Tags:["Friend","9W.Blade","9W.First"],ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:20012}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.attack_damage",Base:0d}]}

# 演出
    execute anchored eyes positioned ^ ^ ^2 run particle dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.05 40
    playsound minecraft:entity.evoker.cast_spell ambient @a ~ ~ ~ 1 1.2

# ユーザーID適応
    scoreboard players operation @e[type=vex,tag=9W.First] 9W.UserID = @s UserID

# タグを消す
    tag @e[type=vex,tag=9W.First] remove 9W.First

# 再帰先へ飛ばす
    execute as @e[type=vex,tag=9W.Blade,limit=1] run function asset:sacred_treasure/0616.call_blade/3.1.tick