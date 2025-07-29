# Function that was scheduled by the scheduler.

# Store the current gametime in the 'action_time' score for a fakeplayer.
execute store result score $current action_time run time query gametime

# Compare the current gametime to the time stored in all entities with the 'scheduled' tag.
# If the scores match, 5 seconds have passed for that entity and an action is done.
execute as @e[tag=scheduled] if score @s action_time = $current action_time at @s run function bannerbedsheets:banner_adjust