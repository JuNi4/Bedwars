# Approximates the cosine of `input`
#  `input` the input angle in degrees
#  leaves the sine in `output`

# normalize the angle
scoreboard players operation #cos.x math = input math

# x %= 360
scoreboard players operation #cos.x math %= #internal.360 math
# n = x > 90 and x < 270
scoreboard players set #cos.n math 0
execute if score #cos.x math matches 90..270 run scoreboard players set #cos.n math 1
# x %= 180
scoreboard players operation #cos.x math %= #internal.180 math
# if x > 90:
#     x -= 180
execute if score #cos.x math matches 90.. run scoreboard players remove #cos.x math 180

# convert to radians
# x *= SCALE
scoreboard players operation #cos.x math *= #internal.scale math
# x //= D2R
scoreboard players operation #cos.x math /= #internal.d2r math

# approximate
# a = 20
scoreboard players set #cos.a math 20
# a *= x
scoreboard players operation #cos.a math *= #cos.x math
# a *= x
scoreboard players operation #cos.a math *= #cos.x math
# b = 4
scoreboard players set #cos.b math 4
# b *= x
scoreboard players operation #cos.b math *= #cos.x math
# b *= x
scoreboard players operation #cos.b math *= #cos.x math
# b += DPIS
scoreboard players operation #cos.b math += #internal.dpis math

# y = a
scoreboard players operation #cos.y math = #cos.a math
# y *= SCALE
scoreboard players operation #cos.b math /= #internal.scale math
# y //= b
scoreboard players operation #cos.y math /= #cos.b math
# v = SCALE
scoreboard players operation #cos.v math = #internal.scale math
# v -= y
scoreboard players operation #cos.v math -= #cos.y math

execute if score #cos.n math matches 1 run scoreboard players operation #cos.v math *= #internal.-1 math
scoreboard players operation output math = #cos.v math
