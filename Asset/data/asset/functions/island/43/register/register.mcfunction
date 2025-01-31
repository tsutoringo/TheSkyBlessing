#> asset:island/43/register/register
#
# 島の定義データ
#
# @within function asset:island/43/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:-184,Y:153,Z:112}

# ID (int)
    data modify storage asset:island ID set value 43
# Rotation (float)
    data modify storage asset:island Rotation set value -90f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 131

function asset:island/common/register