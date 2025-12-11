kill @e[tag=glowing_eyes]
execute at @e[tag=animatronic] run summon text_display ^ ^1.65 ^.5 {\
    Glowing:1b,\
    billboard:"fixed",\
    default_background:0b,\
    shadow:0b,\
    Tags:["glowing_eyes"],\
    glow_color_override:16383998,\
    brightness:{sky:15,block:15},\
    text:{"color":"white","text":".   ."},\
    background:0\
}