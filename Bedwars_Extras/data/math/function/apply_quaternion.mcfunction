# Calculates the quaternion from roll, pitch and yaw
#  `input` x
#  `input1` y
#  `input2` z
#  `math:quaternion input` input quaternion (x, y, z, w)
#  `math:quaternion output` output vector (x, y, z)
# NOTE: this function is likely not to work as intendet since it appears to be broken

# retrieve inputs
execute store result score #aq.qx math run data get storage math:quaternion input[0] 1000
execute store result score #aq.qy math run data get storage math:quaternion input[1] 1000
execute store result score #aq.qz math run data get storage math:quaternion input[2] 1000
execute store result score #aq.qw math run data get storage math:quaternion input[3] 1000

scoreboard players operation #aq.vx math = input math
scoreboard players operation #aq.vy math = input1 math
scoreboard players operation #aq.vz math = input2 math

tellraw @a "---------"
tellraw @a ["#aq.q [",{"score":{"name":"#aq.qx","objective":"math"}},", ",{"score":{"name":"#aq.qy","objective":"math"}},", ",{"score":{"name":"#aq.qz","objective":"math"}},", ",{"score":{"name":"#aq.qw","objective":"math"}},"]"]

# normalize input
# scoreboard players operation #aq.a math = #aq.qx math
# scoreboard players operation #aq.a math *= #aq.qx math
# scoreboard players operation #aq.a math /= #internal.scale math
# scoreboard players operation #aq.b math = #aq.qy math
# scoreboard players operation #aq.b math *= #aq.qy math
# scoreboard players operation #aq.b math /= #internal.scale math
# scoreboard players operation #aq.a math += #aq.b math
# scoreboard players operation #aq.c math = #aq.qz math
# scoreboard players operation #aq.c math *= #aq.qz math
# scoreboard players operation #aq.c math /= #internal.scale math
# scoreboard players operation #aq.a math += #aq.c math
# scoreboard players operation #aq.d math = #aq.qw math
# scoreboard players operation #aq.d math *= #aq.qw math
# scoreboard players operation #aq.d math /= #internal.scale math
# scoreboard players operation #aq.a math += #aq.d math
# scoreboard players operation input math = #aq.a math
# tellraw @a ["input ",{"score":{"name":"input","objective":"math"}}]
# function math:sqrt
# tellraw @a ["output ",{"score":{"name":"output","objective":"math"}}]
# scoreboard players operation #aq.l math = output math
# scoreboard players operation #aq.qx math *= #internal.scale math
# scoreboard players operation #aq.qx math /= #aq.l math
# scoreboard players operation #aq.qy math *= #internal.scale math
# scoreboard players operation #aq.qy math /= #aq.l math
# scoreboard players operation #aq.qz math *= #internal.scale math
# scoreboard players operation #aq.qz math /= #aq.l math
# scoreboard players operation #aq.qw math *= #internal.scale math
# scoreboard players operation #aq.qw math /= #aq.l math

# conjugate the quarernion
execute store result score #aq.cqx math run data get storage math:quaternion input[0] -1000
execute store result score #aq.cqy math run data get storage math:quaternion input[1] -1000
execute store result score #aq.cqz math run data get storage math:quaternion input[2] -1000

tellraw @a ["#aq.norm_q [",{"score":{"name":"#aq.qx","objective":"math"}},", ",{"score":{"name":"#aq.qy","objective":"math"}},", ",{"score":{"name":"#aq.qz","objective":"math"}},", ",{"score":{"name":"#aq.qw","objective":"math"}},"]"]
tellraw @a ["#aq.cq [",{"score":{"name":"#aq.cqx","objective":"math"}},", ",{"score":{"name":"#aq.cqy","objective":"math"}},", ",{"score":{"name":"#aq.cqz","objective":"math"}},", ",{"score":{"name":"#aq.qw","objective":"math"}},"]"]

# cq * v #
# (qw*vx) + (qy*vz) - (qz*vy),
scoreboard players operation #aq.1qx math = #aq.qw math
scoreboard players operation #aq.1qx math *= #aq.vx math

scoreboard players operation #aq.b math = #aq.cqy math
scoreboard players operation #aq.b math *= #aq.vz math
scoreboard players operation #aq.1qx math += #aq.b math

scoreboard players operation #aq.b math = #aq.cqz math
scoreboard players operation #aq.b math *= #aq.vy math
scoreboard players operation #aq.1qx math -= #aq.b math

scoreboard players operation #aq.1qx math /= #internal.scale math

# (qw*vy) + (qz*vx) - (qx*vz),
scoreboard players operation #aq.1qy math = #aq.qw math
scoreboard players operation #aq.1qy math *= #aq.vy math

scoreboard players operation #aq.b math = #aq.cqz math
scoreboard players operation #aq.b math *= #aq.vx math
scoreboard players operation #aq.1qy math += #aq.b math

scoreboard players operation #aq.b math = #aq.cqx math
scoreboard players operation #aq.b math *= #aq.vz math
scoreboard players operation #aq.1qy math -= #aq.b math

scoreboard players operation #aq.1qy math /= #internal.scale math

# (qw*vz) + (qx*vy) - (qy*vx),
scoreboard players operation #aq.1qz math = #aq.qw math
scoreboard players operation #aq.1qz math *= #aq.vz math

scoreboard players operation #aq.b math = #aq.cqx math
scoreboard players operation #aq.b math *= #aq.vy math
scoreboard players operation #aq.1qz math += #aq.b math

scoreboard players operation #aq.b math = #aq.cqy math
scoreboard players operation #aq.b math *= #aq.vx math
scoreboard players operation #aq.1qz math -= #aq.b math

scoreboard players operation #aq.1qz math /= #internal.scale math

# - (qx*vx) - (qy*vy) - (qz*vz),
scoreboard players operation #aq.1qw math = #aq.cqx math
scoreboard players operation #aq.1qw math *= #aq.vx math
scoreboard players operation #aq.1qw math *= #internal.-1 math

scoreboard players operation #aq.b math = #aq.cqy math
scoreboard players operation #aq.b math *= #aq.vy math
scoreboard players operation #aq.1qw math -= #aq.b math

scoreboard players operation #aq.b math = #aq.cqz math
scoreboard players operation #aq.b math *= #aq.vz math
scoreboard players operation #aq.1qw math -= #aq.b math

scoreboard players operation #aq.1qw math /= #internal.scale math


tellraw @a ["#aq.1q [",{"score":{"name":"#aq.1qx","objective":"math"}},", ",{"score":{"name":"#aq.1qy","objective":"math"}},", ",{"score":{"name":"#aq.1qz","objective":"math"}},", ",{"score":{"name":"#aq.1qw","objective":"math"}},"]"]

# cqxv * q
# (x*qw) + (w*qx) + (y*qz) - (z*qy),
scoreboard players operation #aq.2qx math = #aq.1qx math
scoreboard players operation #aq.2qx math *= #aq.qw math

scoreboard players operation #aq.b math = #aq.1qw math
scoreboard players operation #aq.b math *= #aq.qx math
scoreboard players operation #aq.2qx math += #aq.b math

scoreboard players operation #aq.b math = #aq.1qy math
scoreboard players operation #aq.b math *= #aq.qz math
scoreboard players operation #aq.2qx math += #aq.b math

scoreboard players operation #aq.b math = #aq.1qz math
scoreboard players operation #aq.b math *= #aq.qy math
scoreboard players operation #aq.2qx math -= #aq.b math

scoreboard players operation #aq.2qx math /= #internal.scale math

# (y*qw) + (w*qy) + (z*qx) - (x*qz),
scoreboard players operation #aq.2qy math = #aq.1qy math
scoreboard players operation #aq.2qy math *= #aq.qw math

scoreboard players operation #aq.b math = #aq.1qw math
scoreboard players operation #aq.b math *= #aq.qy math
scoreboard players operation #aq.2qy math += #aq.b math

scoreboard players operation #aq.b math = #aq.1qz math
scoreboard players operation #aq.b math *= #aq.qx math
scoreboard players operation #aq.2qy math += #aq.b math

scoreboard players operation #aq.b math = #aq.1qx math
scoreboard players operation #aq.b math *= #aq.qz math
scoreboard players operation #aq.2qy math -= #aq.b math

scoreboard players operation #aq.2qy math /= #internal.scale math

# (z*qw) + (w*qz) + (x*qy) - (y*qx),
scoreboard players operation #aq.2qz math = #aq.1qz math
scoreboard players operation #aq.2qz math *= #aq.qw math

scoreboard players operation #aq.b math = #aq.1qw math
scoreboard players operation #aq.b math *= #aq.qz math
scoreboard players operation #aq.2qz math += #aq.b math

scoreboard players operation #aq.b math = #aq.1qx math
scoreboard players operation #aq.b math *= #aq.qy math
scoreboard players operation #aq.2qz math += #aq.b math

scoreboard players operation #aq.b math = #aq.1qy math
scoreboard players operation #aq.b math *= #aq.qx math
scoreboard players operation #aq.2qz math -= #aq.b math

scoreboard players operation #aq.2qz math /= #internal.scale math

# (w*qw) - (x*qi) - (y*qj) - (z*qz),
# ignored since it does not matter
tellraw @a ["#aq.2q [",{"score":{"name":"#aq.2qx","objective":"math"}},", ",{"score":{"name":"#aq.2qy","objective":"math"}},", ",{"score":{"name":"#aq.2qz","objective":"math"}},"]"]

# post output #
execute store result storage math:quaternion output[1] double -0.001 run scoreboard players get #aq.2qx math
execute store result storage math:quaternion output[0] double 0.001 run scoreboard players get #aq.2qy math
execute store result storage math:quaternion output[2] double -0.001 run scoreboard players get #aq.2qz math
data modify storage math:quaternion output[3] set value 0