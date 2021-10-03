# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/tail_spin/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/tail_spin/keyframes/0
execute if score @s AsaMatrix matches 1..10 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 11 run function asa_animator:zinogre/anim/tail_spin/keyframes/1
execute if score @s AsaMatrix matches 11..30 run tp @s ^-0.005 ^0 ^-0.005
execute if score @s AsaMatrix matches 31 run function asa_animator:zinogre/anim/tail_spin/keyframes/2
execute if score @s AsaMatrix matches 31..40 run tp @s ^0.01 ^0.1 ^0
execute if score @s AsaMatrix matches 41 run function asa_animator:zinogre/anim/tail_spin/keyframes/3
execute if score @s AsaMatrix matches 41..50 run tp @s ^0 ^0.01 ^0
execute if score @s AsaMatrix matches 51 run function asa_animator:zinogre/anim/tail_spin/keyframes/4
execute if score @s AsaMatrix matches 51..60 run tp @s ^0 ^0.69 ^0
execute if score @s AsaMatrix matches 61 run function asa_animator:zinogre/anim/tail_spin/keyframes/5
execute if score @s AsaMatrix matches 61..70 run tp @s ^0 ^-0.8 ^0.01
execute if score @s AsaMatrix matches 71 run function asa_animator:zinogre/anim/tail_spin/keyframes/6
execute if score @s AsaMatrix matches 71..80 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 81 run function asa_animator:zinogre/anim/tail_spin/keyframes/7
execute if score @s AsaMatrix matches 81..90 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 91 run function asa_animator:zinogre/anim/tail_spin/keyframes/8
execute if score @s AsaMatrix matches 91..110 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 111.. run function asa_animator:zinogre/anim/tail_spin/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

execute if score @s AsaMatrix matches 30..60 at @s run tp @s ^0.5 ^ ^-0.5 ~22.5 ~
execute if score @s AsaMatrix matches 61..70 at @s run tp @s ^0.5 ^ ^-0.5 ~36 ~
execute if score @s AsaMatrix matches 71..90 at @s run tp @s ^0.1 ^ ^ ~2 ~

execute if score @s AsaMatrix matches 35 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 50 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.8
execute if score @s AsaMatrix matches 75..78 run playsound block.grass.step master @a ~ ~ ~ 2 0.8

execute if score @s AsaMatrix matches 75..78 run particle block grass ~ ~ ~ 1.3 0.3 1.3 0.05 20

execute if score @s AsaMatrix matches 3..29 at @s if block ~ ~-0.2 ~ #asa_animator:no_collision run tp @s ~ ~-0.2 ~ ~ ~
execute if score @s AsaMatrix matches 3..29 at @s unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~0.2 ~ ~ ~

execute if score @s AsaMatrix matches 35..60 at @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] positioned ~ ~1.4 ~ run function asa_animator:zinogre/anim/tail_spin/events/damage