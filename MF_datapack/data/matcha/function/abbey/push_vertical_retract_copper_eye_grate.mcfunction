execute at @a[advancements={matcha:mechanics/hit_copper_eye=true}] run playsound minecraft:block.enchantment_table.use block @p ~ ~ ~ 1 2
execute positioned ^-1 ^ ^ run execute as @a[distance=..1] run tp @s ~ ~3 ~
execute as @a[distance=..1] run tp @s ~ ~3 ~
execute positioned ^1 ^ ^ run execute as @a[distance=..1] run tp @s ~ ~3 ~
summon minecraft:wind_charge ~ ~3.25 ~ {Motion:[0.0,-1.0,0.0]}
execute positioned ^-1 ^ ^ run summon minecraft:wind_charge ~ ~3.25 ~ {Motion:[0.0,-1.0,0.0]}
execute positioned ^1 ^ ^ run summon minecraft:wind_charge ~ ~3.25 ~ {Motion:[0.0,-1.0,0.0]}
particle minecraft:trial_spawner_detection ~ ~2 ~ .5 .5 .5 0 20
fill ^1 ^ ^ ^-1 ^ ^2 copper_grate
setblock ^ ^ ^2 target
particle block{block_state:"minecraft:copper_grate"} ^ ^ ^1 1 .5 1 .01 30 normal
playsound minecraft:entity.iron_golem.hurt block @a ~ ~-3 ~ 0.4

# add activated tag because we are pulling in
execute if block ^ ^ ^2 target run tag @n[type=marker, tag=copper_eye_grate_vertical_retract, tag=marker_setup, distance=..0.01] remove activated

# move the marker to the target block
execute if block ^ ^ ^2 target run tp @n[type=marker, tag=copper_eye_grate_vertical_retract, tag=marker_setup, distance=..0.01] ^ ^ ^2

say vertical retract grate deactivated