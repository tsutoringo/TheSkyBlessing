#> asset:island/37/register/register
#
# 島の定義データ
#
# @within function asset:island/37/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:-32,Y:69,Z:-127}

# ID (int)
    data modify storage asset:island ID set value 37
# Rotation (float)
    data modify storage asset:island Rotation set value 0f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 185

function asset:island/common/register