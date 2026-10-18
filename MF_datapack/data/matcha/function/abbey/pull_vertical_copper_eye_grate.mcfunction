execute at @a[advancements={matcha:mechanics/hit_copper_eye=true}] run playsound minecraft:block.enchantment_table.use block @p ~ ~ ~ 1 2
particle minecraft:trial_spawner_detection ~ ~2 ~ .5 .5 .5 0 20
fill ^1 ^ ^ ^-1 ^ ^-1 air
setblock ^ ^ ^-2 target
setblock ^1 ^ ^-2 copper_grate
setblock ^-1 ^ ^-2 copper_grate
particle block{block_state:"minecraft:copper_grate"} ^ ^ ^1 1 .5 1 .01 30 normal
playsound minecraft:entity.iron_golem.hurt block @a ~ ~-3 ~ 0.4

# move the marker to the target block
execute if block ^ ^ ^-2 target run tp @n[type=marker,tag=copper_eye_grate_vertical, tag=marker_setup, tag=extended] ^ ^ ^-2

# remove extended tag because we are pulling in
execute if block ^ ^ ^-2 target run tag @n[type=marker, tag=copper_eye_grate_vertical, tag=marker_setup, tag=extended] remove extended

say VERTICAL GRATE PULLED