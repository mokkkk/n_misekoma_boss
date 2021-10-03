# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/backstep/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/backstep/keyframes/0
execute if score @s AsaMatrix matches 1..10 run tp @s ^0 ^0 ^-0.5
execute if score @s AsaMatrix matches 11 run function asa_animator:zinogre/anim/backstep/keyframes/1
execute if score @s AsaMatrix matches 11..12 run tp @s ^0.5 ^0 ^-0.5
execute if score @s AsaMatrix matches 13 run function asa_animator:zinogre/anim/backstep/keyframes/2
execute if score @s AsaMatrix matches 13..24 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 25.. run function asa_animator:zinogre/anim/backstep_combo/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

execute if score @s AsaMatrix matches 1..12 run playsound block.grass.step master @a ~ ~ ~ 2 1
execute if score @s AsaMatrix matches 1..12 run particle block grass ~ ~ ~ 1 0 1 0 10
execute if score @s AsaMatrix matches ..12 run function asa_animator:zinogre/manager/rotate_fast

execute at @s if block ~ ~-1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~0.5 ~ ~ ~