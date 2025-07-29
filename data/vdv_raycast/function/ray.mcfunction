execute if block ~ ~ ~ #vdv_raycast:blocks run function vdv_raycast:hit_block
scoreboard players add #distance vdvcasttemp 1
execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..50 positioned ^ ^ ^0.1 run function vdv_raycast:ray
