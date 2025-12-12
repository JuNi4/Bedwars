scoreboard players operation #ae.px math = input math
scoreboard players operation #ae.py math = input1 math
scoreboard players operation #ae.pz math = input2 math

execute store result score input math run data get storage math:rotation input[0]
function math:sin
scoreboard players operation #ae.sx math = output math
function math:cos
scoreboard players operation #ae.cx math = output math

execute store result score input math run data get storage math:rotation input[1] -1
function math:sin
scoreboard players operation #ae.sy math = output math
function math:cos
scoreboard players operation #ae.cy math = output math

execute store result score input math run data get storage math:rotation input[2] -1
function math:sin
scoreboard players operation #ae.sz math = output math
function math:cos
scoreboard players operation #ae.cz math = output math

# x = cy * cz * p[0] + (sx * sy * cz - cx * sz) * p[1] + (cx * sy * cz + sy * sz) * p[2]
scoreboard players operation #ae.ta math = #ae.cy math
scoreboard players operation #ae.ta math *= #ae.cz math
scoreboard players operation #ae.ta math /= #internal.scale math
scoreboard players operation #ae.ta math *= #ae.px math
scoreboard players operation #ae.ta math /= #internal.scale math
scoreboard players operation #ae.tb math = #ae.sx math
scoreboard players operation #ae.tb math *= #ae.sy math
scoreboard players operation #ae.tb math /= #internal.scale math
scoreboard players operation #ae.tb math *= #ae.cz math
scoreboard players operation #ae.tb math /= #internal.scale math
scoreboard players operation #ae.td math = #ae.cx math
scoreboard players operation #ae.td math *= #ae.sz math
scoreboard players operation #ae.td math /= #internal.scale math
scoreboard players operation #ae.tb math -= #ae.td math
scoreboard players operation #ae.tb math *= #ae.py math
scoreboard players operation #ae.tb math /= #internal.scale math
scoreboard players operation #ae.ta math += #ae.tb math
scoreboard players operation #ae.tc math = #ae.cx math
scoreboard players operation #ae.tc math *= #ae.sy math
scoreboard players operation #ae.tc math /= #internal.scale math
scoreboard players operation #ae.tc math *= #ae.cz math
scoreboard players operation #ae.tc math /= #internal.scale math
scoreboard players operation #ae.te math = #ae.sy math
scoreboard players operation #ae.te math *= #ae.sz math
scoreboard players operation #ae.te math /= #internal.scale math
scoreboard players operation #ae.tc math += #ae.te math
scoreboard players operation #ae.tc math *= #ae.pz math
scoreboard players operation #ae.tc math /= #internal.scale math
scoreboard players operation #ae.ta math += #ae.tc math
scoreboard players operation #ae.x math = #ae.ta math

# y = cy * sz * p[0] + (sx * sy * sz + cx * cz) * p[1] + (cx * sy * sz - sx * cz) * p[2]
scoreboard players operation #ae.tf math = #ae.cy math
scoreboard players operation #ae.tf math *= #ae.sz math
scoreboard players operation #ae.tf math /= #internal.scale math
scoreboard players operation #ae.tf math *= #ae.px math
scoreboard players operation #ae.tf math /= #internal.scale math
scoreboard players operation #ae.tg math = #ae.sx math
scoreboard players operation #ae.tg math *= #ae.sy math
scoreboard players operation #ae.tg math /= #internal.scale math
scoreboard players operation #ae.tg math *= #ae.sz math
scoreboard players operation #ae.tg math /= #internal.scale math
scoreboard players operation #ae.th math = #ae.cx math
scoreboard players operation #ae.th math *= #ae.cz math
scoreboard players operation #ae.th math /= #internal.scale math
scoreboard players operation #ae.tg math += #ae.th math
scoreboard players operation #ae.tg math *= #ae.py math
scoreboard players operation #ae.tg math /= #internal.scale math
scoreboard players operation #ae.tf math += #ae.tg math
scoreboard players operation #ae.ti math = #ae.cx math
scoreboard players operation #ae.ti math *= #ae.sy math
scoreboard players operation #ae.ti math /= #internal.scale math
scoreboard players operation #ae.ti math *= #ae.sz math
scoreboard players operation #ae.ti math /= #internal.scale math
scoreboard players operation #ae.tj math = #ae.sx math
scoreboard players operation #ae.tj math *= #ae.cz math
scoreboard players operation #ae.tj math /= #internal.scale math
scoreboard players operation #ae.ti math -= #ae.tj math
scoreboard players operation #ae.ti math *= #ae.pz math
scoreboard players operation #ae.ti math /= #internal.scale math
scoreboard players operation #ae.tf math += #ae.ti math
scoreboard players operation #ae.y math = #ae.tf math

# z = -sy * p[0] + sx * cy * p[1] + cx * cy * p[2]
scoreboard players operation #ae.tk math = #ae.sy math
scoreboard players operation #ae.tk math *= #internal.-1 math
scoreboard players operation #ae.tk math /= #internal.scale math
scoreboard players operation #ae.tk math *= #ae.px math
scoreboard players operation #ae.tk math /= #internal.scale math
scoreboard players operation #ae.tl math = #ae.sx math
scoreboard players operation #ae.tl math *= #ae.cy math
scoreboard players operation #ae.tl math /= #internal.scale math
scoreboard players operation #ae.tl math *= #ae.py math
scoreboard players operation #ae.tl math /= #internal.scale math
scoreboard players operation #ae.tk math += #ae.tl math
scoreboard players operation #ae.tm math = #ae.cx math
scoreboard players operation #ae.tm math *= #ae.cy math
scoreboard players operation #ae.tm math /= #internal.scale math
scoreboard players operation #ae.tm math *= #ae.pz math
scoreboard players operation #ae.tm math /= #internal.scale math
scoreboard players operation #ae.tk math += #ae.tm math
scoreboard players operation #ae.z math = #ae.tk math

data modify storage math:rotation output set value [0, 0, 0]
execute store result storage math:rotation output[0] float .001 run scoreboard players get #ae.x math
execute store result storage math:rotation output[1] float .001 run scoreboard players get #ae.y math
execute store result storage math:rotation output[2] float .001 run scoreboard players get #ae.z math
