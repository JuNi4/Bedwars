# Approximates the sine of `input`
#  `input` the input angle in degrees
#  leaves the sine in `output`

# normalize the angle
scoreboard players operation #sin.x math = input math
scoreboard players operation #sin.x math %= #internal.360 math
scoreboard players set #sin.n math 0
execute if score #sin.x math matches 180.. run scoreboard players set #sin.n math 1
scoreboard players operation #sin.x math %= #internal.180 math

# approximate sin
scoreboard players set #sin.a math 4
scoreboard players operation #sin.a math *= #sin.x math

scoreboard players set #sin.y math 180
scoreboard players operation #sin.y math -= #sin.x math
scoreboard players operation #sin.a math *= #sin.y math

scoreboard players set #sin.b math 40500
scoreboard players set #sin.y math 180
scoreboard players operation #sin.y math -= #sin.x math
scoreboard players operation #sin.y math *= #sin.x math
scoreboard players operation #sin.b math -= #sin.y math

scoreboard players operation #sin.a math *= #internal.scale math

# negate the value if on the one half
scoreboard players operation #sin.a math /= #sin.b math
execute if score #sin.n math matches 1 run scoreboard players operation #sin.a math *= #internal.-1 math
scoreboard players operation output math = #sin.a math