execute as @a[predicate=stellarity:location/dragons_den/in_main_area] run function stellarity:mob/dragon/music/as_player
execute as @a[predicate=!stellarity:location/dragons_den/in_main_area,scores={stellarity.music.ender_dragon.timer=1..}] run function stellarity:mob/dragon/music/reset
