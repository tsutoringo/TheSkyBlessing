#> asset:island/38/register/register
#
# 島の定義データ
#
# @within function asset:island/38/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:-53,Y:113,Z:-34}

# ID (int)
    data modify storage asset:island ID set value 38
# Rotation (float)
    data modify storage asset:island Rotation set value -90f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register