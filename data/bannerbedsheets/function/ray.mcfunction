execute if block ~ ~ ~ #bannerbedsheets:wall_banners run execute if block ^ ^ ^1 #bannerbedsheets:blocks[part=foot] run function bannerbedsheets:hit_block
execute if block ~ ~ ~ #bannerbedsheets:wall_banners run execute if block ^ ^ ^1 #bannerbedsheets:blocks[part=head] run function bannerbedsheets:hit_block_reverse
scoreboard players add #distance vdvcasttemp 1
execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..50 positioned ^ ^ ^0.1 run function bannerbedsheets:ray
