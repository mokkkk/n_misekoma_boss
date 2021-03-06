# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/tail_whip/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/tail_whip/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^-0.16 ^0.06 ^-0.2
execute if score @s AsaMatrix matches 6 run function asa_animator:zinogre/anim/tail_whip/keyframes/1
execute if score @s AsaMatrix matches 6..10 run tp @s ^0.16 ^0.02 ^-0.2
execute if score @s AsaMatrix matches 11 run function asa_animator:zinogre/anim/tail_whip/keyframes/2
execute if score @s AsaMatrix matches 11..15 run tp @s ^0 ^-0.08 ^0
execute if score @s AsaMatrix matches 16 run function asa_animator:zinogre/anim/tail_whip/keyframes/3
execute if score @s AsaMatrix matches 16..18 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 19 run function asa_animator:zinogre/anim/tail_whip/keyframes/4
execute if score @s AsaMatrix matches 19..23 run tp @s ^0 ^0.6 ^-0.2
execute if score @s AsaMatrix matches 24 run function asa_animator:zinogre/anim/tail_whip/keyframes/5
execute if score @s AsaMatrix matches 24..28 run tp @s ^0 ^0.6 ^0.2
execute if score @s AsaMatrix matches 29 run function asa_animator:zinogre/anim/tail_whip/keyframes/6
execute if score @s AsaMatrix matches 29..33 run tp @s ^0 ^-0.1 ^0.6
execute if score @s AsaMatrix matches 34 run function asa_animator:zinogre/anim/tail_whip/keyframes/7
execute if score @s AsaMatrix matches 34..40 run tp @s ^0 ^-0.8857143 ^0.4285714
execute if score @s AsaMatrix matches 41 run function asa_animator:zinogre/anim/tail_whip/keyframes/8
execute if score @s AsaMatrix matches 41..55 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 56 run function asa_animator:zinogre/anim/tail_whip/keyframes/9
execute if score @s AsaMatrix matches 56..64 run tp @s ^-0.2777778 ^0.2444444 ^-0.4444444
execute if score @s AsaMatrix matches 65 run function asa_animator:zinogre/anim/tail_whip/keyframes/10
execute if score @s AsaMatrix matches 65..70 run tp @s ^0.25 ^-0.25 ^-0.3333333 ~-0.1 ~ 
execute if score @s AsaMatrix matches 71 run function asa_animator:zinogre/anim/tail_whip/keyframes/11
execute if score @s AsaMatrix matches 71..80 run tp @s ^0.1 ^0 ^-0.1
execute if score @s AsaMatrix matches 81.. run function asa_animator:zinogre/anim/tail_whip/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

execute if score @s AsaMatrix matches ..30 run function asa_animator:zinogre/manager/rotate
execute if score @s AsaMatrix matches 23..42 as @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] at @s positioned ~ ~1.4 ~ run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 5

execute if score @s AsaMatrix matches 14 run playsound block.grass.fall master @a ~ ~ ~ 3 0.7
execute if score @s AsaMatrix matches 23 run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 0.7

execute if score @s AsaMatrix matches 1..15 at @s if block ~ ~-0.2 ~ #asa_animator:no_collision run tp @s ~ ~-0.2 ~ ~ ~
execute if score @s AsaMatrix matches 1..15 at @s unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~0.2 ~ ~ ~
execute if score @s AsaMatrix matches 42 at @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] positioned ~ ~1.4 ~ run function asa_animator:zinogre/anim/tail_whip/events/damage