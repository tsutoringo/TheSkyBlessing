#> asset:island/45/register/register
#
# 島の定義データ
#
# @within function asset:island/45/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:-183,Y:229,Z:1}

# ID (int)
    data modify storage asset:island ID set value 45
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 78

function asset:island/common/register