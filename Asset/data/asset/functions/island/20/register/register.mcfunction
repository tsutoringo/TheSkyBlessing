#> asset:island/20/register/register
#
# 島の定義データ
#
# @within function asset:island/20/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:52,Y:13,Z:162}

# ID (int)
    data modify storage asset:island ID set value 20
# Rotation (float)
    data modify storage asset:island Rotation set value 90f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 59

function asset:island/common/register