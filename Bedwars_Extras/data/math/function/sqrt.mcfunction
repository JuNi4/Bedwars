# Calculates the square root of the input
#  `input` the value to get the sqrt of
#  `output` the square root

# Reference python code:
# def sqrt(n:int):
#     o = int(n * .25) +1
#     for i in range(2):
#         o2 = n / o
#         o = (o + o2) / 2
#     return o

# get input
scoreboard players operation #sqrt.x math = input math

# o = int(n * .25) +1
scoreboard players operation #sqrt.o math = #sqrt.x math
scoreboard players operation #sqrt.o math /= #internal.4 math
scoreboard players operation #sqrt.o math /= #internal.scale math
scoreboard players add #sqrt.o math 1
scoreboard players operation #sqrt.o math *= #internal.scale math
# o = (o + n / o) / 2
scoreboard players operation #sqrt.o2 math = #sqrt.x math
scoreboard players operation #sqrt.o2 math *= #internal.scale math
scoreboard players operation #sqrt.o2 math /= #sqrt.o math
scoreboard players operation #sqrt.o math += #sqrt.o2 math
scoreboard players operation #sqrt.o math /= #internal.2 math
# o = (o + n / o) / 2
scoreboard players operation #sqrt.o2 math = #sqrt.x math
scoreboard players operation #sqrt.o2 math *= #internal.scale math
scoreboard players operation #sqrt.o2 math /= #sqrt.o math
scoreboard players operation #sqrt.o math += #sqrt.o2 math
scoreboard players operation #sqrt.o math /= #internal.2 math
# return o
scoreboard players operation output math = #sqrt.o math