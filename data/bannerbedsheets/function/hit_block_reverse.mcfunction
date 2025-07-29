scoreboard players set #hit vdvcasttemp 1

execute align xyz run fill ~ ~ ~ ~ ~ ~ air destroy
tag @e[type=item,distance=..1,limit=1] add bb_item

#north
execute as @s[y_rotation=135..225] run execute align xyz run summon item_display ~0.5 ~2.21 ~-1.37 {Rotation:[180f,-88f],item_display:"head",Tags:["bedsheet","bb_rev","bb_north","bb_init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0.05f],scale:[0.81f,0.61f,5.4f]},item:{id:"minecraft:white_banner",Count:1b}}

#south
execute as @s[y_rotation=-45..45] run execute align xyz run summon item_display ~0.5 ~2.21 ~2.37 {Rotation:[0f,-88f],item_display:"head",Tags:["bedsheet","bb_rev","bb_south","bb_init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0.05f],scale:[0.81f,0.61f,5.4f]},item:{id:"minecraft:white_banner",Count:1b}}

#west
execute as @s[y_rotation=45..135] run execute align xyz run summon item_display ~-1.37 ~2.21 ~0.5 {Rotation:[90f,-88f],item_display:"head",Tags:["bedsheet","bb_rev","bb_west","bb_init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0.05f],scale:[0.81f,0.61f,5.4f]},item:{id:"minecraft:white_banner",Count:1b}}

#east
execute as @s[y_rotation=225..315] run execute align xyz run summon item_display ~2.37 ~2.21 ~0.5 {Rotation:[-90f,-88f],item_display:"head",Tags:["bedsheet","bb_rev","bb_east","bb_init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0.05f],scale:[0.81f,0.61f,5.4f]},item:{id:"minecraft:white_banner",Count:1b}}

execute as @s run data modify entity @e[type=item_display,tag=bb_init,distance=..4,limit=1] item set from entity @e[type=item,tag=bb_item,distance=..1,limit=1] Item
execute as @e[type=item_display,tag=bb_init,distance=..4,limit=1] run item modify entity @s container.0 bannerbedsheets:set_count

execute at @e[type=item_display,tag=bb_init,distance=..4,limit=1] run kill @e[type=item,tag=bb_item,distance=..4,limit=1]

#execute as @e[type=item_display,tag=bb_init,distance=..4,limit=1] run function bannerbedsheets:scheduler

tag @e[type=item_display,tag=bb_init,distance=..4,limit=1] remove bb_init

# Sound effect
playsound block.wool.place block @s ~ ~ ~ 1 1.5

advancement grant @s only gurkis:newsheets