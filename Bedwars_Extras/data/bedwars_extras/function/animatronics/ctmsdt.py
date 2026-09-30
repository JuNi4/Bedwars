# calculate the total movement speed degregation time
#
# ie. the time it takes the movement speed value to reach the minimum value
# (just a tool for me to know when the animatronics will have reached maximum speed)
# 

n = 0

ticks_start = 600
min = 40

reduction = 6

while ticks_start > min:
    n += ticks_start
    ticks_start -= reduction

print("time in minutes:", n / 20 / 60)
print("movement speed in seconds per tick:", ticks_start / 20)