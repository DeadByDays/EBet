execute if entity @s[tag=!stellarity.prismatic_blast.multishot] run function stellarity:item/prismatic_punch/detonate/explode
execute if entity @s[tag=stellarity.prismatic_blast.multishot] run function stellarity:item/prismatic_punch/detonate/explode_multishot

scoreboard players set #exploded stellarity.misc 1

kill @s
