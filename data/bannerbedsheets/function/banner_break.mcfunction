summon item ~ ~-1 ~ {Tags:["bb_initI"],Item:{id:"minecraft:white_banner",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=bb_initI] Item merge from entity @s item
tag @e[type=item,tag=bb_initI] remove bb_initI
kill @s
