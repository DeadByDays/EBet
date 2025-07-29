scoreboard objectives add vdvcasttemp dummy
scoreboard objectives add action_time dummy
# 20 second delay (1 second = 20 ticks)
scoreboard players set $interval action_time 400

function bannerbedsheets:banner_break_check