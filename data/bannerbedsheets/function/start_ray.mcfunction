tag @s add vdvray
scoreboard players set #hit vdvcasttemp 0
scoreboard players set #distance vdvcasttemp 0
execute as @s anchored eyes positioned ^ ^ ^ run function bannerbedsheets:ray
tag @s remove vdvray
advancement revoke @a only bannerbedsheets:bannerplace
