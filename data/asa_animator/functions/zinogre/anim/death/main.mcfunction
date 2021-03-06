# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/death/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/death/keyframes/0
execute if score @s AsaMatrix matches 1..10 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 11 run function asa_animator:zinogre/anim/death/keyframes/1
execute if score @s AsaMatrix matches 11..20 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 21 run function asa_animator:zinogre/anim/death/keyframes/2
execute if score @s AsaMatrix matches 21..35 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 36 run function asa_animator:zinogre/anim/death/keyframes/3
execute if score @s AsaMatrix matches 36..60 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 61 run function asa_animator:zinogre/anim/death/keyframes/4
execute if score @s AsaMatrix matches 61..75 run tp @s ^-0.06666667 ^-0.03333334 ^0
execute if score @s AsaMatrix matches 76 run function asa_animator:zinogre/anim/death/keyframes/5
execute if score @s AsaMatrix matches 76..100 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 101.. run function asa_animator:zinogre/anim/death/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

execute if score @s AsaMatrix matches 40 if entity @s[tag=IsThunder] run particle sneeze ~ ~2 ~ 0.5 0.5 0.5 0.1 50
execute if score @s AsaMatrix matches 40 if entity @s[tag=IsThunder] as @e[type=armor_stand,tag=ZinogreParts] run function asa_animator:zinogre/manager/model/change_to_normal
execute if score @s AsaMatrix matches 40 if entity @s[tag=IsThunder] run tag @s remove IsThunder

execute if score @s AsaMatrix matches ..60 at @s if block ~ ~-1 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if score @s AsaMatrix matches ..60 at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.5 ~ ~ ~