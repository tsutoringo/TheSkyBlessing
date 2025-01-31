#> asset:island/56/register/register
#
# 島の定義データ
#
# @within function asset:island/56/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:TheEnd,X:100,Y:107,Z:2920}

# ID (int)
    data modify storage asset:island ID set value 56
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 1004

function asset:island/common/register