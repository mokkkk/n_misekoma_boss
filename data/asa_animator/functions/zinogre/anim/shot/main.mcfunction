# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/shot/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/shot/keyframes/0
execute if score @s AsaMatrix matches 1..8 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 9 run function asa_animator:zinogre/anim/shot/keyframes/1
execute if score @s AsaMatrix matches 9..25 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 26 run function asa_animator:zinogre/anim/shot/keyframes/2
execute if score @s AsaMatrix matches 26..28 run tp @s ^-0.5666667 ^0.3 ^0
execute if score @s AsaMatrix matches 29 run function asa_animator:zinogre/anim/shot/keyframes/3
execute if score @s AsaMatrix matches 29..35 run tp @s ^-0.04285714 ^0.3714286 ^0
execute if score @s AsaMatrix matches 36 run function asa_animator:zinogre/anim/shot/keyframes/4
execute if score @s AsaMatrix matches 36..40 run tp @s ^-0.2 ^-0.7 ^0
execute if score @s AsaMatrix matches 41 run function asa_animator:zinogre/anim/shot/keyframes/5
execute if score @s AsaMatrix matches 41..45 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 46 run function asa_animator:zinogre/anim/shot/keyframes/6
execute if score @s AsaMatrix matches 46..48 run tp @s ^0.5666667 ^0.3 ^0
execute if score @s AsaMatrix matches 49 run function asa_animator:zinogre/anim/shot/keyframes/7
execute if score @s AsaMatrix matches 49..55 run tp @s ^0.04285714 ^0.3714286 ^0
execute if score @s AsaMatrix matches 56 run function asa_animator:zinogre/anim/shot/keyframes/8
execute if score @s AsaMatrix matches 56..60 run tp @s ^0.2 ^-0.7 ^0
execute if score @s AsaMatrix matches 61 run function asa_animator:zinogre/anim/shot/keyframes/9
execute if score @s AsaMatrix matches 61..65 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 66 run function asa_animator:zinogre/anim/shot/keyframes/10
execute if score @s AsaMatrix matches 66..70 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 71 run function asa_animator:zinogre/anim/shot/keyframes/11
execute if score @s AsaMatrix matches 71..85 run tp @s ^0 ^0 ^-0.03333334
execute if score @s AsaMatrix matches 86.. run function asa_animator:zinogre/anim/shot/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

execute if score @s AsaMatrix matches ..25 run function asa_animator:zinogre/manager/rotate
execute if score @s AsaMatrix matches ..70 run particle minecraft:sneeze ~ ~2 ~ 1 1 1 0.1 30

execute if score @s AsaMatrix matches 41 at @s facing entity @e[tag=ZinogreAttackTarget,limit=1] feet unless entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/shot/events/shot_l
execute if score @s AsaMatrix matches 61 at @s facing entity @e[tag=ZinogreAttackTarget,limit=1] feet unless entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/shot/events/shot_r
execute if score @s AsaMatrix matches 41 at @s facing entity @e[tag=ZinogreAttackTarget,limit=1] feet if entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/shot/events/shot_l_t
execute if score @s AsaMatrix matches 61 at @s facing entity @e[tag=ZinogreAttackTarget,limit=1] feet if entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/shot/events/shot_r_t

execute if score @s AsaMatrix matches 26 run playsound block.grass.step master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 26 run particle block grass ~ ~ ~ 1 0 1 1 10
execute if score @s AsaMatrix matches 41 run playsound block.grass.step master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 41 run particle block grass ~ ~ ~ 1 0 1 1 10
execute if score @s AsaMatrix matches 61 run playsound block.grass.step master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 61 run particle block grass ~ ~ ~ 1 0 1 1 10