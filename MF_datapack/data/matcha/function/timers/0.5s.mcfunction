# These functions are run once every 0.5 Seconds
schedule function matcha:timers/0.5s 0.5s replace

# Debug
#say Clock 0.5s
execute at @e[type=marker] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=marker] at @s positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force

# Functions