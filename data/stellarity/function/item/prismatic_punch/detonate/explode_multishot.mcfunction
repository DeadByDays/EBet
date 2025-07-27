
execute as @e[type=!#kohara:invalid_targets,distance=..5] run function stellarity:item/prismatic_punch/detonate/damage_multishot

# Prismatic Inferno
scoreboard players set #effect.duration stellarity.misc 120
execute as @e[type=!#kohara:invalid_targets,distance=..5] run function stellarity:util/status_effects/prismatic_inferno/apply

execute positioned ~ ~0.1 ~ run function kohara:particles/spawn_particle {speed:0,billboard:center,model:"stellarity:_particle/prismatic_punch/explosion_emitter",despawn_value:13,state:spread,spread_initial:0,spread_radius:0,id:prismatic_punch_large}

playsound stellarity:item.prismatic_punch.explode player @a[distance=0..] ~ ~ ~ 2 0.8
