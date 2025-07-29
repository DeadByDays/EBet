# Called when a function needs to be scheduled.

# Store the gametime in the 'action_time' score for the current executing entity.
execute store result score @s action_time run schedule function bannerbedsheets:schedule_function 20s append

# Indicate that the entity has been 'scheduled'.
tag @s add scheduled