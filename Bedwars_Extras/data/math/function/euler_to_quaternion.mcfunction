# Calculates the quaternion from roll, pitch and yaw
#  `input` the roll
#  `input1` the pitch
#  `input2` the yaw
#  `math:quaternion output` output (x, y, z, w)

scoreboard players operation #etq.roll math = input math
scoreboard players operation #etq.roll math /= #internal.2 math

scoreboard players operation #etq.pitch math = input1 math
scoreboard players operation #etq.pitch math /= #internal.2 math

scoreboard players operation #etq.yaw math = input2 math
scoreboard players operation #etq.yaw math /= #internal.2 math

# double cr = cos(roll * 0.5);
scoreboard players operation input math = #etq.roll math
function math:cos
scoreboard players operation #etq.cr math = output math
# double sr = sin(roll * 0.5);
scoreboard players operation input math = #etq.roll math
function math:sin
scoreboard players operation #etq.sr math = output math

# double cp = cos(pitch * 0.5);
scoreboard players operation input math = #etq.pitch math
function math:cos
scoreboard players operation #etq.cp math = output math
# double sp = sin(pitch * 0.5);
scoreboard players operation input math = #etq.pitch math
function math:sin
scoreboard players operation #etq.sp math = output math

# double cy = cos(yaw * 0.5);
scoreboard players operation input math = #etq.yaw math
function math:cos
scoreboard players operation #etq.cy math = output math
# double sy = sin(yaw * 0.5);
scoreboard players operation input math = #etq.yaw math
function math:sin
scoreboard players operation #etq.sy math = output math


# Quaternion q;
data modify storage math:quaternion output set value [0, 0, 0, 0]
# q.w = cr * cp * cy + sr * sp * sy;
scoreboard players operation #etq.q.w math = #etq.cr math
scoreboard players operation #etq.q.w math *= #etq.cp math
    scoreboard players operation #etq.q.w math /= #internal.scale math
scoreboard players operation #etq.q.w math *= #etq.cy math

scoreboard players operation #etq.b math = #etq.sr math
scoreboard players operation #etq.b math *= #etq.sp math
    scoreboard players operation #etq.b math /= #internal.scale math
scoreboard players operation #etq.b math *= #etq.sy math
scoreboard players operation #etq.q.w math += #etq.b math

# q.x = sr * cp * cy - cr * sp * sy;
scoreboard players operation #etq.q.x math = #etq.sr math
scoreboard players operation #etq.q.x math *= #etq.cp math
    scoreboard players operation #etq.q.x math /= #internal.scale math
scoreboard players operation #etq.q.x math *= #etq.cy math

scoreboard players operation #etq.b math = #etq.cr math
scoreboard players operation #etq.b math *= #etq.sp math
    scoreboard players operation #etq.b math /= #internal.scale math
scoreboard players operation #etq.b math *= #etq.sy math
scoreboard players operation #etq.q.x math -= #etq.b math

# q.y = cr * sp * cy + sr * cp * sy;
scoreboard players operation #etq.q.y math = #etq.cr math
scoreboard players operation #etq.q.y math *= #etq.sp math
    scoreboard players operation #etq.q.y math /= #internal.scale math
scoreboard players operation #etq.q.y math *= #etq.cy math

scoreboard players operation #etq.b math = #etq.sr math
scoreboard players operation #etq.b math *= #etq.cp math
    scoreboard players operation #etq.b math /= #internal.scale math
scoreboard players operation #etq.b math *= #etq.sy math
scoreboard players operation #etq.q.y math += #etq.b math

# q.z = cr * cp * sy - sr * sp * cy;
scoreboard players operation #etq.q.z math = #etq.cr math
scoreboard players operation #etq.q.z math *= #etq.cp math
    scoreboard players operation #etq.q.z math /= #internal.scale math
scoreboard players operation #etq.q.z math *= #etq.sy math

scoreboard players operation #etq.b math = #etq.sr math
scoreboard players operation #etq.b math *= #etq.sp math
    scoreboard players operation #etq.b math /= #internal.scale math
scoreboard players operation #etq.b math *= #etq.cy math
scoreboard players operation #etq.q.z math -= #etq.b math

# create the output
execute store result storage math:quaternion output[0] double 0.000001 run scoreboard players get #etq.q.x math
execute store result storage math:quaternion output[1] double 0.000001 run scoreboard players get #etq.q.y math
execute store result storage math:quaternion output[2] double 0.000001 run scoreboard players get #etq.q.z math
execute store result storage math:quaternion output[3] double 0.000001 run scoreboard players get #etq.q.w math