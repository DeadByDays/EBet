execute if entity @s[tag=stellarity.items.spirit_dagger.cooldown] run function stellarity:item/spirit_dagger/entity_loop
execute if entity @s[tag=stellarity.items.dragonblade.cooldown] run function stellarity:item/dragonblade/cooldown
execute if entity @s[tag=stellarity.items.dragonblade.has_stacks] anchored eyes rotated ~ 0 run function stellarity:item/dragonblade/entity_loop

execute if predicate stellarity:util/clear_of_cooldowns run tag @s remove stellarity.cooldown_tickdown
